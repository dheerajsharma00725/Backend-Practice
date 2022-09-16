<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>     
<head>      
<Title>FOOD & DELIVERY APP</Title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/foodproject/resources/css/s.css" rel="stylesheet" type=text/css>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  </head>
<style type=text/css>   
body   
{  
height: 125vh;  
margin-top: 80px;  
padding: 30px;  
background-size: cover;  
font-family: sans-serif;  
}  
header {  
background-color: orange;  
position: fixed;  
left: 0;  
right: 0;  
top: 5px;  
height: 30px;  
display: flex;  
align-items: center;  
box-shadow: 0 0 25px 0 black;  
}  
header * {  
display: inline;  
}  
header li {  
margin: 20px;  
}  
header li a {  
color: blue;  
text-decoration: none;  
}  
</style>   
</head>  
<body background="/foodproject/resources/imgs/bowl-1842294_1280.png">
<%-- <h1><c:out value="${name}"></c:out></h1> --%>
<header>  
<nav>  
<ul>  
<li>  
<a href='<c:url value ='/home'></c:url>'> Home </a>  
</li>  
<li>  
<a href="#"> About </a>  
</li>  
<li>  
<a href="#"> Contact </a>  
</li>  
<li> <a href="#"> Terms of use </a>  
</li>  
<li>  
<a href="#"> Join Us </a>  
</li>
<li>  
<a href='<c:url value ='/login'></c:url>'> Login </a>  
</li>  
<li> <a href='<c:url value ='/register-user'></c:url>'> SignUp </a>  
</li>   
</ul>  
</nav>  
</header>
<img id="w" src="/foodproject/resources/imgs/Food-Delivery.png">

<div id="r">
<img src="/foodproject/resources/imgs/logo.png" width="100" height="100">
</div>
<div id="s">
<h1 style ="font-family:verdana"><marquee direction="down">Welcome to Tummy Truckers !</marquee></h1><br>
<H1 style ="font-family:verdana"><i>Food delivery<h1>
<h2 style ="font-family:verdana">within 30</h2>
<h2 style="color:red", style="font-family:verdana">minutes</h2></i>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

</body>   
</html>  