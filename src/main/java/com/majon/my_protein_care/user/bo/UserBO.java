package com.majon.my_protein_care.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.majon.my_protein_care.common.EncryptUtils;
import com.majon.my_protein_care.user.dao.UserDAO;
import com.majon.my_protein_care.user.model.User;

@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;

	public int addUser(String loginId, String name, String password, String email, String nickname, double height, double weight, String activityLevel, String gender) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.insertUser(loginId, name, encryptPassword, email, nickname, height, weight, activityLevel, gender);
	}
	
	public boolean checkDuplicateId(String loginId) {
		
		int count = userDAO.countDuplicateLoginId(loginId);
		
		if(count>=1) {
			return true;
		}else {
			return false;
		}
		
	}
	
	public User getUserByLoginIdAndPassword(String loginId, String password) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.selectUserByLoginIdAndPassword(loginId, encryptPassword);
	}
	
}
