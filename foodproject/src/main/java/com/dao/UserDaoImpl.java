package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;


import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.constants.Constants;
import com.entities.User;
import com.util.CP;

@Repository
public class UserDaoImpl implements UserDao {
	private static final Logger logger = LogManager.getLogger(UserDaoImpl.class);

	@Autowired
	private SessionFactory factory;
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int saveUser(User user) {
		int id = (Integer) this.hibernateTemplate.save(user);	
		return id;

	}

	@Transactional
	public void deleteUser(int id) {
		User u = this.hibernateTemplate.load(User.class, id);
		this.hibernateTemplate.delete(u);

	}

	public List<User> getUser(String uname,String upwd) {
		logger.info("Checking User in DB : username : {}", uname);
		List<User> userDetails = null;
		try {
			Session session = factory.openSession();
//			Criteria c = session.createCriteria(User.class);
//			c.add(Restrictions.eq("uname", user.getUname())).add(Restrictions.eq("upwd", user.getUpwd()));
//
//			List<User> usr = c.list();
			
			String query = "select uname,upwd from user where uname = '"+ uname +"' and upwd ='"+upwd+"';";
			NativeQuery<User> createSQLQuery = session.createSQLQuery(query);	
			userDetails = createSQLQuery.list();
			logger.info("User Details {}", userDetails);
		} catch (Exception e) {
			e.printStackTrace();
			logger.info("Exception while getting user details");
		}

		return userDetails;

	}

//	@Override
//	@Transactional
//	public int updateUser(String newPwd, String uname) {
//		int count =0;
//		try {
//			Session session = factory.openSession();
////			Criteria c = session.createCriteria(User.class);
////			c.add(Restrictions.eq("uname", user.getUname())).add(Restrictions.eq("upwd", user.getUpwd()));
////
////			List<User> usr = c.list();
//			
//			String query = "update user set upwd = '"+ newPwd +"' where uname ='"+uname+"';";
//			NativeQuery<User> createSQLQuery = session.createSQLQuery(query);
//			session.joinTransaction();
//			count = createSQLQuery.executeUpdate();
//			logger.info("No. of rows Updated {}", count);
//			return count;
//		
//	}catch (Exception e) {
//		e.printStackTrace();
//		logger.info("Exception while getting user details");
//	}
//		return count;
//}
	
	public boolean updateUserPassword(String newPwd, String uname) {

		boolean status = false;
		try {
			Connection con = CP.createConnection();

			// Prepared Statement
			PreparedStatement pstmt = con.prepareStatement(Constants.update_query);
			// Setting values to parameter
			pstmt.setString(1, newPwd);
			pstmt.setString(3, uname);
			pstmt.setTimestamp(2, new Timestamp(System.currentTimeMillis()));

			// Execute
			pstmt.executeUpdate();
			status = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;

	}
}