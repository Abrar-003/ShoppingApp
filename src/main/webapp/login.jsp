<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



${cookie.loginerror.value }
<form action="http://localhost:8080/shoppingApp/logincheck" method="post">
	Enter Uid :
	<input type="text" name="uid"/>
	<br/>
	Enter Pwd :
	<input type="password" name="pwd"/>
	<br/>
	<input type="Submit" value="login">
	<input type="reset" value="clear">
	
</form>

</body>
</html>