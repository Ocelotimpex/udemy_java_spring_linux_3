<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--  sf = spring forms -->
<h2>Send Message</h2>
<sf:form method="post" commandName="message">

<input name="_flowExecutionKey" value="${flowExecutionKey}" />

	<table class="formtable">

		<tr>
			<td class="label">Your name:</td>
			<td><sf:input class="control" path="name" name="name"
					type="text" /><br />
			<div class="error">
					<sf:errors path="name"></sf:errors>
				</div></td>
		</tr>
		
		<tr>
			<td class="label">Your email:</td>
			<td><sf:input class="control" path="email" name="email"
					id="email" type="text" /><br />
				<div class="error">
					<sf:errors path="email"></sf:errors>
				</div></td>
		</tr>		
		<tr>
			<td class="label">Subject:</td>
			<td><sf:input class="control" path="subject" name="subject"
					type="text" /><br />
			<div class="error">
					<sf:errors path="subject"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Your Message:</td>
			<td><sf:textarea class="control" path="content" name="content"
					type="text" /><br />
			<div class="error">
					<sf:errors path="content"></sf:errors>
				</div></td>
		</tr>		



		<tr>
			<td class="label">&nbsp;</td>
			<td><input class="control" value="Send Message" type="submit" /></td>
		</tr>


	</table>
</sf:form>