<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="./base.jsp"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href ="/foodproject/resources/imgs/icon.ico" type="images/ico" size ="16x16">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Success</title>
</head>
<body>
<%-- <%
	response.setHeader("Pragma", "no-cache"); //For HTTP 1.0
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");// For HTTP 1.1
	response.setHeader("Expires", "0"); //For Proxies
	
	if (session.getAttribute("uname") == null) {
		response.sendRedirect("register");
	}else{
		session.getAttribute("uname");
	}
	%> --%>
	<div class="text-center">
	<h1> Welcome, ${user.fname }</h1>
	<div class="row">
	<h2>Your username is - ${uname}</h2>
	<h2>Your password is - ${upwd}</h2>
	<h2>Plz login immediately and change your password.</h2>
	</div>
	<div class ="row">
	<form action="login">
		<input type="submit" value="Login">
	</form>
	</div>
	</div>
</body>
</html>