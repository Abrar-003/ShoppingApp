<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% Connection con= (Connection)application.getAttribute("jdbc");
        List<Integer> sps= (List<Integer>) session.getAttribute("cart");   
        if(sps==null)
        {
     %>

	<h3>No Products are selected</h3>


	<% 
	}else
	{%>
		<P>product list</P>
		
		<ul>
     		<% for(int n : sps)
     		{  %>
     			<li> <%= n  %> </li>
     		<% } %>
     		</ul>
	 <% }
     	
     %>
	
</body>
</html>