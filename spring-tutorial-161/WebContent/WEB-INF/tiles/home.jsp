<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

 

<table class="offers">

		<c:forEach var="offer" items="${offers}">

			<tr class="offerrow">

				<td class="name"><c:out value="${offer.user.name}"></c:out></td>
				<td><a href="<c:url value='/message?uid=${offer.username}'/>">contact</a></td>
				<td class="text"><c:out value="${offer.text}"></c:out></td>


			</tr>
	</c:forEach>
	</table>

<script type="text/javascript">
<!--
function updateMessageLink(data) {
	$("#numberOfMessage").text(data.number);
 }

 function onLoad() {
	updatePage();  
    window.setInterval(updatePage,5000);
 }
 
 function updatePage() {
	 alert("Updating Page");
	 $getJSON("<c:url value="/getmessages"/>", updateMessaegLink);
 }
  
$(document).ready(onLoad); 

//-->

</script>

