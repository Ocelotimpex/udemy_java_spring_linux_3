<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

    <c:choose>
    
    <c:when test="${hasOffer}">
        <p><a href="${pageContext.request.contextPath}/createoffer">Edit of Delete your current offer.</a></p>
    </c:when>
    
    <c:otherwise>
    <p><a href="${pageContext.request.contextPath}/createoffer">Add A New Offer.</a></p>
    </c:otherwise>
    
    
    </c:choose>

	
	
<sec:authorize access="hasRole('ROLE_ADMIN')">
<p><a href="<c:url value='/admin'/>">Admin</a></p>
</sec:authorize>

<table class="offers">

		<c:forEach var="offer" items="${offers}">

			<tr class="offerrow">

				<td class="name"><c:out value="${offer.user.name}"></c:out></td>
				<td class="contact"><c:out value="${offer.user.email}"></c:out></td>
				<td class="text"><c:out value="${offer.text}"></c:out></td>


			</tr>
	</c:forEach>
	</table>






<script type="text/javascript">
<!--

function updateMessageLink(data) {
	alert(data.number);
}

function onLoad() {
	
	
	$.getJSON(<c:url value="/getmessages"/>, updateMessaegLink);
	
}
$(document).ready(onLoad);
//-->
</script>