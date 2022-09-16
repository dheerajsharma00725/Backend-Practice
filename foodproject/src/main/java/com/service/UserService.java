package com.service;

import java.sql.Date;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.entities.User;
import com.util.Utility;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	public List<String> createUser(User user) throws Exception {
		int count = 0;
		List<String> usrDetails = new ArrayList<String>();
		if (!user.equals(null)) {

		}
		try {
			String fname = user.getFname();
			String lname = user.getLname();
			String mobile = user.getMobile();
			String email = user.getEmail();
			String dob = user.getDob().toString();
			Date dateOfBirth = Date.valueOf(dob);
			String uname = Utility.generateUserName(fname, mobile);
			String upwd = Utility.generatePwd(fname, lname, mobile, dob);
			LocalDateTime createdTime = LocalDateTime.now();
			LocalDateTime updatedTime = LocalDateTime.now();
			User usr = new User(fname, lname, uname, dateOfBirth, mobile, email, upwd, createdTime, updatedTime);
			count = userDao.saveUser(usr);
			usrDetails.add(uname);
			usrDetails.add(upwd);
			usrDetails.add(String.valueOf(count));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return usrDetails;
	}

	public List<User> checkUser(String uname, String upwd) {
		List<User> details = userDao.getUser(uname,upwd);
		return details;
	}

	public boolean updatePwd(String newPwd, String uname) {
		return userDao.updateUserPassword(newPwd,uname);
		
	}

}
