<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/foodproject/resources/css/register.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<title>Register</title>
</head>
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
<body background="/foodproject/resources/imgs/bowl-1842294_1280.png">
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
			<form name="myform" onsubmit="return f1()" action="register"
				method="post">
				<tr>
					<td style="color: white" align="right">First Name :</td>
					<td><input type="text" placeholder="Enter your First name"
						name="fname" /></td>
					<span id="mn"></span>
				</tr>
				<tr>
					<td style="color: white" align="right">Last Name :</td>
					<td><input type="text" placeholder="Enter your Last name"
						name="lname" /></td>
				</tr>
				<tr>
					<td style="color: white" align="right">Phone Number :</td>
					<td><input type="text" placeholder="Enter your Phone Number"
						name="mob" /></td>
					<span id="mob"></span>
				</tr>
				<tr>
					<td style="color: white" align="right">Email :</td>
					<td><input type="email" placeholder="Enter your Email-ID"
						name="email" /></td>
				</tr>
				<tr>
					<td style="color: white" align="right">Date of Birth:</td>
					<td><input type="date" name="dob" /></td>
					<span id="db"></span>
				</tr>
				<tr>
					<td style="color: white" align="right">ID PROOF:</td>
					<td><input type="text" placeholder="Enter your PAN Number"
						name="idp" /></td>
					<span id="idp"></span>
				</tr>
			<tr>
				<td></td>
				<td><input type="reset" value="Clear Form" id="res" class="btn" />
					<input type="submit" value="register" /></td>
			</tr>
		</table>
		<b><a href="login.jsp" style="text-decoration: none;">Already
				have a Account, Click here to Login !</a></b>
	</div>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Congrats", "Account Created Successfully.", "success")
		}
	</script>

</body>
</html>