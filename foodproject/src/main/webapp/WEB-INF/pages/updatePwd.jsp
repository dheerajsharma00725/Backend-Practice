<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="./base.jsp"%>
<link href="/foodproject/resources/css/user-reg.css" rel="stylesheet"
	type=text/css>
	<link rel = "stylesheet" type ="text/css" href="/foodproject/resources/css/register.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href ="/foodproject/resources/imgs/icon.ico" type="images/ico" size ="16x16">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
	function f1() {
		var ename = document.myform.t1.value;
		var mobile = document.myform.t2.value;
		var dob = document.myform.t3.value;
		var pid = document.myform.t4.value;
		if (ename == "" || ename == null) {
			document.getElementById("mn").innerHTML = '<span style="color:red">Enter valid name!</span>';
			return false;
		} else if (mobile.search(/[0-9]/) < 0 || (mobile.length != 10)) {
			document.getElementById("mob").innerHTML = '<span style="color:red">Enter valid number!</span>';
			return false;
		} else if (pid == "") {
			document.getElementById("idp").innerHTML = '<span style="color:red">Enter valid id proof!</span>';
			return false;
		} else if (dob.length == "" || dob.search(/[0-9]/) < 0) {
			document.getElementById("db").innerHTML = '<span style="color:red">Enter valid Date!</span>';
			return false;
		} else {
			return true;
		}
	}
</script>
</head>
<body background="/foodproject/resources/imgs/bowl-1842294_1280.png">
<%
	response.setHeader("Pragma", "no-cache"); //For HTTP 1.0
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");// For HTTP 1.1
	response.setHeader("Expires", "0"); //For Proxies
	
	if (session.getAttribute("uname") == null) {
		response.sendRedirect("login");
	}else{
		session.getAttribute("uname");
	}
	%>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<font color="dogderblue" size="10">
		<center>
			<b><i>TUMMY TRUCKER</i></b>
		</center>
	</font>
	<hr>

	<div id="r">
		<img src="/foodproject/resources/imgs/logo.png" width="100" height="100">
	</div>
	<img id="w" src="/foodproject/resources/imgs/Food-Delivery.png">

	<h1 style="color: tomato" , style="font-family:verdana">
		<i><B>USER SIGN-UP FORM</B></i>
	</h1>
	<div class="bg">
		<table cellspacing="2" align="center" cellpadding="8" border="0">
			<form name="myform" onsubmit="return f1()" action="update-pwd"
				method="post">
				<tr>
					<td style="color: white" align="right">User Name :</td>
					<td><input type="text" placeholder="Enter your User Name"
						name="uname" /></td>
					<span id="uname"></span>
				</tr>
				<tr>
					<td style="color: white" align="right">Old Pwd :</td>
					<td><input type="password" placeholder="Enter Old Password"
						name="oldpwd" /></td>
					<span id="oldpwd"></span>
				</tr>
				<tr>
					<td style="color: white" align="right">New Pwd :</td>
					<td><input type="password" placeholder="Enter your New Pwd"
						name="newpwd" /></td>
				</tr>
				<tr>
					<td style="color: white" align="right">Confirm New Password</td>
					<td><input type="password" placeholder="Confirm your new Password"
						name="cnfpwd" /></td>
					<span id="mobile"></span>
				</tr>
			<tr>
				<td></td>
				<td><input type="reset" value="Clear Form" id="res" class="btn" />
					<input type="submit" value="Update" /></td>
			</tr>
		</table>
	</div>

	<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Congrats", "Account Created Successfully.", "success")
		}
	</script> -->

</body>
</html>