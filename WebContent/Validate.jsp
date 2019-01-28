<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page2</title>
</head>
<body>
<!-- <a href="Page3.jsp">Page3</a> -->
<form action="Page3.jsp" method="post">
<%= request.getParameter("username") %>
<%
Cookie cookie1= new Cookie("username", request.getParameter("username"));
Cookie cookie2= new Cookie("password", request.getParameter("password"));
cookie1.setMaxAge(200);
cookie2.setMaxAge(200);
response.addCookie(cookie1);
response.addCookie(cookie2);
%>
<input type="submit"/>
</form>
</body>
</html>