<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Info</title>
<link rel = "stylesheet" type ="text/css" href="/foodproject/resources/css/burger.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href ="imgs/icon.ico" type="images/ico" size ="16x16">
</head>
<body>
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
<div class = "nav">
<img class ="primary-icon" src = "/foodproject/resources/imgs/logo.png">
<ul class = "nav-list">
<li class ="list-items"><a href = '<c:url value ='/welcome'></c:url>'>Home</a></li>
<li class ="list-items"><a href = '<c:url value ='/info'></c:url>'>Back</a></li>
</ul>
</div>
<div>
<h3 align="center">Burgers</h3>
<!----- code for Category---->
<div class ="topCat">
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/burger.jpg">
		<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Burger King</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/b1.jpg">
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>McDonald's</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/b2.jpg">
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Captain Sam's</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>	
</div>

<div class ="topCat">
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/b3.jpg">
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Burger Singh</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/b4.cms">
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Burger Engineers</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/b5.jpg">
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Burgrill</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>
</div>
<!----- End code for Category---->
</div>
</body>
</html>