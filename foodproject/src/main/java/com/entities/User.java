package com.entities;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;



@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String fname;
	private String lname;
	private String uname;
	private Date dob;
	private String mobile;
	private String email;
	private String upwd;
	
	@CreationTimestamp
	private LocalDateTime created_tmstmp;
	
	@UpdateTimestamp
	private LocalDateTime updated_tmstmp;
	
	public User() {
		super();
		
	}
	public User(String fname, String lname, String uname, Date dob, String mobile, String email, String upwd,
			LocalDateTime created_tmstmp, LocalDateTime updated_tmstmp) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.uname = uname;
		this.dob = dob;
		this.mobile = mobile;
		this.email = email;
		this.upwd = upwd;
		this.created_tmstmp = created_tmstmp;
		this.updated_tmstmp = updated_tmstmp;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public LocalDateTime getCreated_tmstmp() {
		return created_tmstmp;
	}
	public void setCreated_tmstmp(LocalDateTime created_tmstmp) {
		this.created_tmstmp = created_tmstmp;
	}
	public LocalDateTime getUpdated_tmstmp() {
		return updated_tmstmp;
	}
	public void setUpdated_tmstmp(LocalDateTime updated_tmstmp) {
		this.updated_tmstmp = updated_tmstmp;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", fname=" + fname + ", lname=" + lname + ", uname=" + uname + ", dob=" + dob
				+ ", mobile=" + mobile + ", email=" + email + ", upwd=" + upwd + ", created_tmstmp=" + created_tmstmp
				+ ", updated_tmstmp=" + updated_tmstmp + "]";
	}
	
}
