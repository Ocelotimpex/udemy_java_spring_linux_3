<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!--  sf = spring forms -->

<sf:form method="post"
	action="${pageContext.request.contextPath}/docreate"
	commandName="offer">
	<sf:input type="hidden" name="id" path="id" />

	<table class="formtable">
		<tr>
			<td class="label">Your Offer:</td>
			<td><sf:textarea class="control" rows="10" path="text"
					name="text" cols="10"></sf:textarea><br /> <sf:errors path="text"
					cssClass="error"></sf:errors></td>
		</tr>
		<tr>
			<td class="label">&nbsp;</td>
			<td><input class="control" value="Save Offer" type="submit" /></td>
		</tr>

		<c:if test="${offer.id != 0}" >
			<tr>
				<td class="label">&nbsp;</td>
				<td><input class="control" name="delete"
					value="Delete this Offer" type="submit" /></td>
			</tr>
		</c:if>


	</table>
</sf:form>
