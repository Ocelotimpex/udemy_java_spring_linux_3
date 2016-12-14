<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

    <c:choose>
    
    <c:when test="${hasOffer}">
        <a href="${pageContext.request.contextPath}/createoffer">Edit of Delete your current offer.</a>
    </c:when>
    
    <c:otherwise>
    <a href="${pageContext.request.contextPath}/createoffer">Add A New Offer.</a>
    </c:otherwise>
    
    
    </c:choose>

	
	&nbsp;
<sec:authorize access="hasRole('ROLE_ADMIN')">
<a href="<c:url value='/admin'/>">Admin</a>
</sec:authorize>
&nbsp;
<sec:authorize access="isAuthenticated()">
<a href="<c:url value='/messages'/>">Messages(<span id="numberMessages">0</span>)</a>
</sec:authorize>


<table class="offers">

		<c:forEach var="offer" items="${offers}">

			<tr class="offerrow">

				<td class="name"><c:out value="${offer.user.name}"></c:out></td>
				<td class="contact"><c:out value="${offer.username}"></c:out></td>
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
    $.getJSON("<c:url value="/getmessages"/>", updateMessaegLink);
 }
  
$(document).ready(onLoad);

//-->

</script>

