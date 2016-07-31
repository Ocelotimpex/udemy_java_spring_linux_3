<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main.css"
	type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/script/jquery.js"></script>

<script type="text/javascript">

function onLoad() {
	//alert("Hello")
	$("#password").keyup(checkPasswordsMatch);
	$("#confirmpass").keyup(checkPasswordsMatch);
	
	$("#details").submit(canSubmit);
	
}

function canSubmit() {
	var password = $("#password").val();
	var confirmpass = $("#confirmpass").val();
	
	if ( password != confirmpass) {
		alert("<fmt:message key='UnmatchedPasswords.user.password' />");
		return false;
	} else {
		return true;
	}
}

function checkPasswordsMatch() {
	var password = $("#password").val();
	var confirmpass = $("#confirmpass").val();
	
	if (password.length < 3 || confirmpass.length < 3) {
		return;
	}
	if ( password == confirmpass) {
		$("#matchpass").text("<fmt:message key='MatchedPasswords.user.password' />");		
		$("#matchpass").addClass("valid");
		$("#matchpass").removeClass("error");
	} else {
		$("#matchpass").text("<fmt:message key='UnmatchedPasswords.user.password' />");
		$("#matchpass").addClass("error");
		$("#matchpass").removeClass("valid");
	}
	//alert(password + ": " + confirmpass)
	
}

$(document).ready(onLoad);

</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create New User</title>
</head>
<body>





	<!--  sf = spring forms -->
<h2>Create New Account</h2>
	<sf:form method="post" id="details"
		action="${pageContext.request.contextPath}/createaccount"
		commandName="user">
		<table class="formtable">

			<tr>
				<td class="label">Username:</td>
				<td><sf:input class="control" path="username" name="username"
						type="text" /><br /><div class="error"><sf:errors path="username"></sf:errors></div></td></tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input class="control" path="email" name="email"
						type="text" /><br /><div class="error"><sf:errors path="email"></sf:errors></div></td></tr>
			<tr>
				<td class="label">Password:</td>
				<td><sf:input class="control" path="password" name="password"
						id="password" type="text" /><br />
				<div class="error"><sf:errors path="password"></sf:errors></div></td></tr>
			<tr>
				<td class="label">Confirm Password:</td>
				<td><input class="control"  name="confirmpass" id="confirmpass"
						type="text" />
						
						<div id="matchpass"></div>
				</td>
			</tr>
			<tr>
				<td class="label">&nbsp;</td>
				<td><input class="control" value="Create Account" type="submit" /></td>
			</tr>


		</table>
	</sf:form>



</body>
</html>