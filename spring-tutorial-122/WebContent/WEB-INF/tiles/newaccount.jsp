<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--  sf = spring forms -->
<h2>Create New Account</h2>
<sf:form method="post" id="details"
	action="${pageContext.request.contextPath}/createaccount"
	commandName="user">
	<table class="formtable">

		<tr>
			<td class="label">Username:</td>
			<td><sf:input class="control" path="username" name="username"
					type="text" /><br />
			<div class="error">
					<sf:errors path="username"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Email:</td>
			<td><sf:input class="control" path="email" name="email"
					type="text" /><br />
			<div class="error">
					<sf:errors path="email"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Password:</td>
			<td><sf:input class="control" path="password" name="password"
					id="password" type="password" /><br />
				<div class="error">
					<sf:errors path="password"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Confirm Password:</td>
			<td><input class="control" name="confirmpass" id="confirmpass"
				type="password" />

				<div id="matchpass"></div></td>
		</tr>
		<tr>
			<td class="label">&nbsp;</td>
			<td><input class="control" value="Create Account" type="submit" /></td>
		</tr>


	</table>
</sf:form>

