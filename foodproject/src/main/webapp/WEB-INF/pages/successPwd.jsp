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
	<div class="text-center">
	<h1> Welcome, ${user.uname }</h1>
	<div class="row">
	<h2>Your Password is updated successfully to : ${upwd }</h2>
	</div>
	<div class ="row">
	<form action="welcome">
    <input type="submit" value="Back" />
</form>
	</div>
	</div>
</body>
</html>