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
<img class ="primary-icon" src = "/foodproject/resources/imgs/logo.png">
<ul class = "nav-list">
<li class ="list-items"><a href = '<c:url value ='/welcome'></c:url>'>Home</a></li>
<li class ="list-items"><a href = '<c:url value ='/info'></c:url>'>Back</a></li>
</ul>
</div>
<div>
<h3 align="center">Salads</h3>
<!----- code for Category---->
<div class ="topCat">
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/salad1.jpg">
		<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Ocado</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/s1.jpg">
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Dr.Diet-Daily Healthy Diet</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/s2.jpg">
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Midpoint Cafe</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>	
</div>

<div class ="topCat">
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/s3.jpg">
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Salad Days</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/s4.jpg">
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>Caterspoint</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>
	<div class ="topCatProducts"><img src ="/foodproject/resources/imgs/s5.jpg">
	<div class ="starRating">
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star checked"></span>
		<span class = "fa fa-star "></span>
		<span class = "fa fa-star "></span>
		</div>
		<div class ="title"><p>NutrioBox</p></div>
		<div class="btn">
	<input type="button" value ="Order Now">
	</div>
	</div>
</div>
<!----- End code for Category---->
</div>
</body>
</html>