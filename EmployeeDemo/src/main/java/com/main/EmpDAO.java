package com.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class EmpDAO {
	static int count;

	static Connection conn = null;

	static void saveEmp(Employee emp) throws SQLException {
		
		// conn = Utility.createConnection();
		conn = Utility.createConnection();
		// Statement st1=conn.createStatement();
		// Prepared Statement
		PreparedStatement pstmt = conn.prepareStatement(Constants.insert_query);
		// Setting values to parameter
		pstmt.setInt(1, emp.getEmpId());
		pstmt.setString(2, emp.getEmpName());
		pstmt.setDate(3, emp.getDob());
		pstmt.setInt(4, emp.getEmpAge());
		pstmt.setInt(5, emp.getSalary());
		System.out.println(pstmt.toString());
		count = pstmt.executeUpdate();
		System.out.println("Employee Added :" + count);
	}

	static void getAllEmp() throws SQLException {
		ResultSet resultset = null;
		conn = Utility.createConnection();
		Statement statement = conn.createStatement();
		resultset = statement.executeQuery(Constants.select_query);
		while (resultset.next()) {
			System.out.println("Emp Id: " + resultset.getInt("empId") + " Emp Name: " + resultset.getString("empName")
					+ " Emp DOB: " + resultset.getString("dob") + " Emp Age: " + resultset.getString("age")
					+ " Emp Salary: " + resultset.getString("salary"));
		}
	}

	static void updateEmp(Employee emp) throws SQLException {
		// TODO Auto-generated method stub
		conn = Utility.createConnection();
		System.out.println(emp.getEmpName() + " " + emp.getEmpId());
		PreparedStatement pstmt = conn.prepareStatement(Constants.update_query);
		pstmt.setString(1, emp.getEmpName());
		pstmt.setInt(2, emp.getEmpId());
		System.out.println(pstmt.toString());
		System.out.println("Name Updated Successfully");
	}

	public static void deleteEmp(int empId) throws Exception {	
		try {
		conn = Utility.createConnection();
		PreparedStatement pstmt = conn.prepareStatement(Constants.select_by_empId);
		pstmt.setInt(1, empId);
		ResultSet resultset = pstmt.executeQuery();
		if(resultset.next()) {
		PreparedStatement pstmt1 = conn.prepareStatement(Constants.delete_query);
		pstmt1.setInt(1, empId);
		count = pstmt.executeUpdate();
		System.out.println("Employee with ID" + empId + " Deleted successfully:" + count);
		}else
			System.out.println("Employee already removed");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	static void getEmpById(int empId) throws SQLException {
		conn = Utility.createConnection();
		PreparedStatement pstmt = conn.prepareStatement(Constants.select_by_empId);
		pstmt.setInt(1, empId);
		ResultSet resultset = pstmt.executeQuery();
		if (resultset.next()) {
			System.out.println("Emp Id: " + resultset.getInt("empId") + " Emp Name: " + resultset.getString("empName")
					+ " Emp DOB: " + resultset.getString("dob") + " Emp Age: " + resultset.getString("age")
					+ " Emp Salary: " + resultset.getString("salary"));
		}else {
			System.out.println("No such Employee is present.");
		}
	}
}
