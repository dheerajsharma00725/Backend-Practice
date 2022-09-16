<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Info</title>
<link rel = "stylesheet" type ="text/css" href="/foodproject/resources/css/topCat.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href ="/foodproject/resources/imgs/icon.ico" type="images/ico" size ="16x16">
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
<img class ="primary-icon" src = "https://see.fontimg.com/api/renderfont4/5Y58/eyJyIjoiZnMiLCJoIjo3NSwidyI6MTUwMCwiZnMiOjUwLCJmZ2MiOiIjMjAyMDIwIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/VHVtbXkgVHJ1Y2tlcg/vegan-style-personal-use.png">
<ul class = "nav-list">
<li class ="list-items"><a href = '<c:url value ='/welcome'></c:url>'>Home</a></li>
<li class ="list-items"><a href='<c:url value ='/logout'></c:url>'>Logout ${uname}</a></li>
</ul>
</div>
<div>
<h3 align="center"> What would you like to have..</h3>
<!----- code for Category---->
<div class ="topCat">
	<div class ="topCatProducts"><a href='<c:url value ='/burger'></c:url>'><img src ="/foodproject/resources/imgs/burger.jpg"></a>
		<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Burger</p></div>
	</div>
	<div class ="topCatProducts"><a href='<c:url value ='/pizza'></c:url>'><img src ="/foodproject/resources/imgs/pizza1.jpg"></a>
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Pizza</p></div>
	</div>
	<div class ="topCatProducts"><a href='<c:url value ='/thali'></c:url>'><img src ="/foodproject/resources/imgs/thali.jpg"></a>
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Thali's</p></div>
	</div>	
</div>

<div class ="topCat">
	<div class ="topCatProducts"><a href='<c:url value ='/salad'></c:url>'><img src ="/foodproject/resources/imgs/salad1.jpg"></a>
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Salad</p></div>
	</div>
	<div class ="topCatProducts"><a href='<c:url value ='/sandwich'></c:url>'><img src ="/foodproject/resources/imgs/sand1.png"></a>
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Sandwich</p></div>
	</div>
	<div class ="topCatProducts"><a href='<c:url value ='/momos'></c:url>'><img src ="/foodproject/resources/imgs/momos.jpg"></a>
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Momos</p></div>
	</div>
</div>
<!----- End code for Category---->
</div>
</body>
</html>