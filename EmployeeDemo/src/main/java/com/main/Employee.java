package com.main;

import java.sql.Date;

public class Employee {
private Integer empId;
private String empName;
private Integer empAge;
private Date dob;
private Integer salary;

public Integer getEmpId() {
	return empId;
}
public void setEmpId(Integer empId) {
	this.empId = empId;
}
public String getEmpName() {
	return empName;
}
public void setEmpName(String empName) {
	this.empName = empName;
}
public Integer getEmpAge() {
	return empAge;
}
public void setEmpAge(Integer empAge) {
	this.empAge = empAge;
}
public Date getDob() {
	return dob;
}
public void setDob(Date dob) {
	this.dob = dob;
}
public Integer getSalary() {
	return salary;
}
public void setSalary(Integer salary) {
	this.salary = salary;
}

}
