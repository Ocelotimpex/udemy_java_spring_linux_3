<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.formtable{
    padding: 10px;
    border: 1px solid blue;
   
}
input [type=text] {
	width: 250px;

}

textarea {
   width: 250px;
   height: 300px;
}

.label {
	text-align: right;
	vertical-aligh: top;
}

.control{
	margin-left 10px;
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Tutorial 67</title>
</head>
<body>



	<form method="post" action="${pageContext.request.contextPath}/docreate">
		<table  class="formtable">

			<tr>
				<td class="label">Name:</td>
				<td><input class="control" name="name" type="text" /></td>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><input class="control"  name="email" type="text" /></td>
			</tr>
			<tr>
				<td class="label">Your Offer:</td>
				<td><textarea class="control"  rows="10" name="text" cols="10"></textarea>
			</tr>
			<tr>
				<td class="label">&nbsp;</td>
				<td><input value="Create Advert" type="submit" /></td>
			</tr>


		</table>
	</form>



</body>
</html>