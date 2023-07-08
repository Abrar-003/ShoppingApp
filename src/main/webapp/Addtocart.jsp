<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% List<Integer> product =(List<Integer>) session.getAttribute("cart");
	int pid = request.getParameter("selectedP");
if(product == null)
{%>
<% product = new ArrayList<>()%>

<%}
  product.add(pid);
  session.setAttribute("cart", product);
%>
<a href='ViewCart.jsp'> View Cart <a/>
</body>
</html>