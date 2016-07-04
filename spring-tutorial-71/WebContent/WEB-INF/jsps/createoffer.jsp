<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Tutorial 69</title>
</head>
<body>

<!--  sf = spring forms -->

	<sf:form method="post" action="${pageContext.request.contextPath}/docreate" commandName="offer">
		<table  class="formtable">

			<tr>
				<td class="label">Name:</td>
				<td><sf:input class="control" path="name" name="name" type="text" /></td>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input class="control"  path="email" name="email" type="text" /></td>
			</tr>
			<tr>
				<td class="label">Your Offer:</td>
				<td><sf:textarea class="control"  rows="10" path="text" name="text" cols="10"></sf:textarea>
			</tr>
			<tr>
				<td class="label">&nbsp;</td>
				<td><input class="control" value="Create Advert" type="submit" /></td>
			</tr>


		</table>
	</sf:form>



</body>
</html>