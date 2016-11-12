<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
<!--

function onDeleteClick(event) {
	event.preventDefault();
	//alert("Delete clicked!")
	
	var doDelete = confirm("Are you sure you want to delete this offer?");
	
	//alert( doDelete );
	
	if ( doDelete == false ) {
		event.preventDefault();
	}
}

function onReady() {
	//alert("Hello");
	$("#delete").click(onDeleteClick);

}
$(document).ready(onReady);
//-->
</script>


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
				<td><input class="delete control" name="delete" id="delete"
					value="Delete this Offer" type="submit" /></td>
			</tr>
		</c:if>


	</table>
</sf:form>
