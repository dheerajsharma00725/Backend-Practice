<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <c:if test="${sessionScope.uname==null}">
<!-- User is not logged in -->
</c:if> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<title>Welcome</title>
<link rel = "stylesheet" type ="text/css" href="/foodproject/resources/css/welcome.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href ="imgs/icon.ico" type="images/ico" size ="16x16">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
<header>
		<div class="nav">
			<div>
			<img class ="primary-icon" src = "/foodproject/resources/imgs/logo.png">
			</div>
			<ul class = "nav-list">
			<li class ="list-items"><a href='<c:url value ='/home1'></c:url>'>Home</a></li>
				<%-- <li class ="list-items"><a href = '<c:url value ='/login'></c:url>'>Login</a></li> --%>
				<%-- <li class ="list-items"><a href = '<c:url value ='/register-user'></c:url>'>SignUp</a></li> --%>
				<li class ="list-items"><a href = '<c:url value ='/info'></c:url>'>Items</a></li>
				<li class ="list-items"><a href='<c:url value ='/update'></c:url>'>Update Pwd</a></li>
				<li class ="list-items"><a href="#about">About</a></li>
				<li class ="list-items"><a href='<c:url value ='/logout'></c:url>'>Logout ${uname}</a></li>
			</ul>
			</div>
			<div class="head">
				<img class="logo" src="https://see.fontimg.com/api/renderfont4/5Y58/eyJyIjoiZnMiLCJoIjoxMzQsInciOjE1MDAsImZzIjo4OSwiZmdjIjoiI0ZDRjlGOSIsImJnYyI6IiNGRkZGRkYiLCJ0IjoxfQ/VHVtbXkgVHJ1Y2tlcg/vegan-style-personal-use.png">
				<h3>Discover the best food and drink</h3>
				<div class ="search">
					<div class ="search-item">
						<i class="fas fa-search"></i>
                    <input type="text" placeholder="Search for restaurant, cuisine or a dish">
					</div>
				</div>
			</div>
			<div class="header-image">
				<img src="https://b.zmtcdn.com/web_assets/81f3ff974d82520780078ba1cfbd453a1583259680.png" alt="">
			</div>
	</header>
<!--
	Section-1
-->
<section class="section-1">
	<div class="section-1-item">
		<div class="items-details"><a href='<c:url value ='/info'></c:url>'><p>Order Food Online</p></div>
		<img src="https://b.zmtcdn.com/webFrontend/e5b8785c257af2a7f354f1addaf37e4e1647364814.jpeg?output-format=webp&fit=around|402:360&crop=402:360;*,*
		" alt=""></div></a>
	</div>
	<div class="section-1-item">
		<div class="items-details"><p>Dining Out</p></div>
		<img src="https://b.zmtcdn.com/webFrontend/d026b357feb0d63c997549f6398da8cc1647364915.jpeg?output-format=webp&fit=around|402:360&crop=402:360;*,*
		" alt="">
	</div>
</section>
<footer>
	<code>
		Made with ❤️ by F&B Team 
	</code>    
</footer>
</body>
</html>