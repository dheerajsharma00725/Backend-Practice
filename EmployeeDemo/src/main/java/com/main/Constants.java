package com.main;

public class Constants {

	public static String insert_query = "insert into employee(empId,empName,dob,age,salary)"
			+ "values(?,?,?,?,?);";
	public static String delete_query = "delete from employee where empId = ? ;";
	public static String select_by_empId ="select * from employee where empId = ? ;";
	public static String select_query ="select * from employee;";
	
	public static String update_query ="update employee set empName = ? where empId = ? ;";
}
