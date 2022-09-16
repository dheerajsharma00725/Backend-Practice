<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link href="/foodproject/resources/css/login.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body background="/foodproject/resources/imgs/bowl-1842294_1280.png">
<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
		
	<font color="dogderblue" size="10">
		<center>
			<b><i>TUMMY TRUCKER</i></b>
		</center>
	</font>
	<script>
function f1()
{
var ename = document.myform.t1.value;
var pwd = document.myform.t2.value;
var spec = /[ `!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
if(ename=="" || ename==null)
{
document.getElementById("nm").innerHTML='<span style="color:red">Enter valid name..!</span>';
return false;
}
else if(pwd.length < 6 || pwd.length > 15)
{
document.getElementById("pw").innerHTML='<span style="color:red">Enter valid password..!</span>';
return false;
}
else if(pwd.search(/[a-z]/)<0)
{
document.getElementById("pw").innerHTML='<span style="color:red">Password should contain lower case letter</span>';
return false;
}
else if(pwd.search(/[A-Z]/)<0)
{
document.getElementById("pw").innerHTML='<span style="color:red">Password should contain upper case letter</span>';
return false;
}
else if(pwd.search(/[0-9]/)<0)
{
document.getElementById("pw").innerHTML='<span style="color:red">Password should contain digit</span>';
return false;
}
else if(!(spec.test(pwd)) )
{
document.getElementById("pw").innerHTML='<span style="color:red">Password should contain special character</span>';
return false;
}
else
{
return true;
}
}
</script>
	<HR>
	<div id="r">
		<img src="/foodproject/resources/imgs/logo.png" width="100" height="100">
	</div>
	<img id="w" src="/foodproject/resources/imgs/Food-Delivery.png">

	<h1 style="color: black" , style="font-family:verdana">
		<i><B>USER LOGIN FORM</B></i>
	</h1>
	<c:if test="${err!=null }">
	<p style="color:red"> ${err}</p>
	</c:if>
	<div class="bg">
		<table cellspacing="2" align="center" cellpadding="8" border="0">
			<form name="myform" onsubmit="return f1()" method="post"
				action="login-user">
				<tr>
					<td style="color: white" align="right">UserName :</td>
					<td><input type="text" placeholder="Enter your User Name"
						name="uname" /></td>
					<span id="nm"></span>
				</tr>
				<tr>
					<td style="color: white" align="right">Password :</td>
					<td><input type="password" placeholder="Enter your password"
						name="upwd" /></td>
					<span id="pw"></span>
				</tr>
				<tr>
					<td></td>
					<td><input type="reset" value="Clear Form" id="res"
						class="btn" /> <input type="submit" value="login" class="btn" /></td>
				</tr>
		</table>
	</div>
	<div id="shift">
		<p style="color: red">
			<b>New to Tummy Truckers ? </b><a href='<c:url value ='/register'></c:url>' style ="color:white; text-decoration:none;">Create
				Account</a>
		</p>
	</div>
	</form>
	
<!-- 	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "failed") {
			swal("Error","Wrong Username or Password", "error");
		}
	</script> -->
</body>
</html>