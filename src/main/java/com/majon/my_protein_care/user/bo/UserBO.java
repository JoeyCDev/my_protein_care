package com.majon.my_protein_care.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.majon.my_protein_care.user.dao.UserDAO;

@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;

	public int addUser(String loginId, String name, String password, String email, String nickname, double height, double weight, String activityLevel, String gender) {
		return userDAO.insertUser(loginId, name, password, email, nickname, height, weight, activityLevel, gender);
	}
	
}
