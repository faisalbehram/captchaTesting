<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <%@ taglib prefix="security"
  uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Le
  Date: 1/2/2016
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>My Music Store</title>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>

    <%--Jquery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">


</head>
<!-- NAVBAR
================================================== -->




<body>
                


<div class="navbar-wrapper">
    <div class="container">


        <nav id="nav" class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                	 
                  
                    
                    <a class="navbar-brand" href="<c:url value="/" /> ">Le's Music Store</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/" /> ">Home</a></li>
                        <li><a href="<c:url value="/productList" />">Products</a></li>
                        <li><a href="<c:url value="/about" />">About Us</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                         <li>Welcome : ${pageContext.request.userPrincipal.name}</li>
                            <li><a href="/profile/${pageContext.request.userPrincipal.name}">MyProfile</a></li>
                            <li><a href="<c:url value="/logout" />">Logout</a></li>
                            	
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="/customer/cart/${pageContext.request.userPrincipal.name}">Cart</a></li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin/home" />">Admin</a></li>
                            </c:if>
                        </c:if>
                        
                         <security:authorize access="hasAnyAuthority('ADMIN')">
                          <li><a href="/admin/home">ADMIN</a></li>
                         </security:authorize>
                        <c:if test="${pageContext.request.userPrincipal.name  == null}">
                        <li><a href="<c:url value="/login" />">Login</a></li>
                        <li><a href="<c:url value="/register" />">Register</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>
   
</body>
</html>