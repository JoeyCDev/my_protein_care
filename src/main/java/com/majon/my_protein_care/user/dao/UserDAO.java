package com.majon.my_protein_care.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDAO {

	public int insertUser(@Param("loginId") String loginId
			,@Param("name") String name
			,@Param("password") String password
			,@Param("email") String email
			,@Param("nickname") String nickname
			,@Param("height") double height
			,@Param("weight") double weight
			,@Param("activityLevel") String activityLevel
			,@Param("gender") String gender);
}
