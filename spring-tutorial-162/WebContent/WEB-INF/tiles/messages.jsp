<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

 <div id="messages">
 
 </div>

<script type="text/javascript">
<!--
function showMessages(data) {
	
	$("div#messages").html("");
	
	for ( var i=0; i < data.messages.length; i++) {
		var message=data.messages[i];
		
		$("div#messages").appedn("<em>Hello</em>");
	}
 }

 function onLoad() {
	updatePage();  
    window.setInterval(updatePage,5000);
 }
 
 function updatePage() {
	 //alert("Updating Page");
	 $getJSON("<c:url value="/getmessages"/>", showMessages);
 }
  
$(document).ready(onLoad); 

//-->

</script>
