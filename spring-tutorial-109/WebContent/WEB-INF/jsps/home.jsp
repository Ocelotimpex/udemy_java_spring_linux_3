<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Tutorial 104</title>
</head>
<body>


	<p><a href="${pageContext.request.contextPath}/offers">Show Current Offers.</a></p>
	<p><a href="${pageContext.request.contextPath}/createoffer">Add A New Offer.</a></p>
	
	<sec:authorize access="!isAuthenticated()">
	<p><a href="<c:url value='/login' />">Login</a>
	</sec:authorize>
	
	<sec:authorize access="isAuthenticated()">
	<p><a href="<c:url value='/j_spring_security_logout' />">Logout</a>
	</sec:authorize>
	
<sec:authorize access="hasRole('admin')">
<p><a href="<c:url value='/admin'/>">Admin</a></p>
</sec:authorize>



</body>
</html>