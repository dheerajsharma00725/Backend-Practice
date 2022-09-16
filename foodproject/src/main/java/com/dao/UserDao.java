package com.dao;

import java.util.List;

import com.entities.User;

public interface UserDao {

	int saveUser(User user);

	List<User> getUser(String uname, String upwd);

//	int updateUser(String oldPwd, String uname);
	
	boolean updateUserPassword(String newPwd, String uname);

}
