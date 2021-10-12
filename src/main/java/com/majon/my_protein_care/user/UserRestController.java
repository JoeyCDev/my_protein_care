package com.majon.my_protein_care.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.majon.my_protein_care.user.bo.UserBO;
import com.majon.my_protein_care.user.model.User;

@RestController
@RequestMapping("/user")
public class UserRestController {

	@Autowired
	private UserBO userBO;
	
	//회원가입
	@PostMapping("/sign_up")
	public Map<String,String>signUp(
			@RequestParam("loginId") String loginId
			,@RequestParam("name") String name
			,@RequestParam("password") String password
			,@RequestParam("email") String email
			,@RequestParam("nickname") String nickname
			,@RequestParam("height") double height
			,@RequestParam("weight") double weight
			,@RequestParam("activityLevel") String activityLevel
			,@RequestParam("gender") String gender){

		int count = userBO.addUser(loginId, name, password, email, nickname, height, weight, activityLevel, gender);

		Map<String,String>resultMap = new HashMap<>();

		if(count==1) {
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "fail");
		}
		return resultMap;
	}
	//아이디 중복확인
	@GetMapping("/isDuplicate")
	public Map<String,Boolean>isDuplicateId(@RequestParam("loginId") String loginId){

		Boolean isDuplicate = userBO.checkDuplicateId(loginId);

		Map<String,Boolean>resultMap = new HashMap<>();

		if(isDuplicate) {
			resultMap.put("isDuplicate",true);
		}else {
			resultMap.put("isDuplicate", false);
		}
		return resultMap;
	}
	//로그인
	@PostMapping("sign_in")
	public Map<String,String>signIn(
			@RequestParam("loginId") String loginId
			,@RequestParam("password") String password
			,HttpServletRequest request
			){
		
		User user = userBO.getUserByLoginIdAndPassword(loginId, password);
		
		Map<String,String>resultMap = new HashMap<>();
		
		if(user!=null) {
			HttpSession session = request.getSession();
			resultMap.put("result", "success");
			session.setAttribute("userId", user.getId());
			session.setAttribute("userNickname", user.getNickname());
			// 추후 user의 칼로리 권장량 계산 -> user.getHeight+ user.getWeight... 후 session에 저장
		}else {
			resultMap.put("result", "fail");
		}
		return resultMap;
	}
	
}
