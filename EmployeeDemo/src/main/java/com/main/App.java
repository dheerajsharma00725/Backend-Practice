package com.main;

import java.sql.Date;
import java.sql.SQLException;
import java.util.Scanner;

//import org.graalvm.compiler.lir.alloc.SaveCalleeSaveRegisters;

public class App {

	public static void main(String[] args) throws SQLException {
		Scanner sc = new Scanner(System.in);
		while (true) {
			System.out.println("Press 1 to Add an Employee.");
			System.out.println("Press 2 to Update.");
			System.out.println("Press 3 to Delete.");
			System.out.println("Press 4 to Retrieve all Employees.");
			System.out.println("Press 5 to Retrieve Employee by ID.");
			System.out.println("Press 6 to Close.");
			System.out.println("__________________________________");
			int res = sc.nextInt();
			try {
				switch (res) {
				case 1:
					save();
					break;
				case 2:
					update();
					break;
				case 3:
					delete();
					break;
				case 4:
					getAllEmp();
					break;
				case 5:
					System.out.println("Employee ID : ");
					int empId = sc.nextInt();
					getAllEmpById(empId);
					break;
				case 6:
					sc.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
//			} finally {
//				System.out.println("```````````````````````````");
//				System.out.println("Connection Closed");
//				Utility.closeConnection();
//			}
		}

	}

	private static void getAllEmpById(int empId) throws SQLException {
		EmpDAO.getEmpById(empId);
	}

	private static void save() throws SQLException {

		Scanner scanner = new Scanner(System.in);
		Employee emp = new Employee();
		System.out.println("Employee ID : ");
		emp.setEmpId(scanner.nextInt());
		System.out.println("Employee Name : ");
		emp.setEmpName(scanner.next());
		System.out.println("Employee Age : ");
		emp.setEmpAge(scanner.nextInt());
		System.out.println("Employee DOB :  in (yyyy-mm-dd) format)");
		String dob = scanner.next();
		emp.setDob(Date.valueOf(dob));
		System.out.println("Employee Salary : ");
		emp.setSalary(scanner.nextInt());
		scanner.close();
		EmpDAO.saveEmp(emp);

	}

	private static void getAllEmp() throws SQLException {
		EmpDAO.getAllEmp();
	}

	private static void update() throws SQLException {

		Scanner scanner = new Scanner(System.in);
		Employee emp = new Employee();
		System.out.println("Employee ID: ");
		emp.setEmpId(scanner.nextInt());
		System.out.println("Employee Name: ");
		emp.setEmpName(scanner.next());
		EmpDAO.updateEmp(emp);
	}

	private static void delete() throws Exception {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter employee ID: ");
		int empid = scanner.nextInt();
		scanner.close();
		EmpDAO.deleteEmp(empid);

	}
}
