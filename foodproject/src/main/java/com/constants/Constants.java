package com.constants;

public class Constants {

	public static String mysqlDriver = "com.mysql.cj.jdbc.Driver";
	public static String dbURL = "jdbc:mysql://localhost:3306/testdb";
	public static String username = "root";
	public static String password = "root";
	
	//Queries
//	public static String insert_query = "insert into user_mstr(fname,lname,uid,dob,mobile,email,upwd,created_timestamp,updated_timestamp,uname)"
			//+ "values(?,?,?,?,?,?,?,?,?,?)";
	public static String update_query = "update user set upwd = ?,updated_tmstmp = ? where uname = ?";
//	public static String select_query = "select uname,upwd as username from user_mstr where uname = ? and upwd = ? ";

}
