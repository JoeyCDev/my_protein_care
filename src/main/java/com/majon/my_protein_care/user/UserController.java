package com.majon.my_protein_care.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("/signup_view")
	public String userSignUpView() {
		
		return "/user/signUp";	
	}
	
	@GetMapping("signin_view")
	public String userSignInView() {
		
		return "/user/signIn";
	}
	
	@GetMapping("/signout_view")
	public String userSignOutView(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.removeAttribute("userId");
		session.removeAttribute("userNickname");
		
		return "redirect:/main/overall_view";
	}
	
}
