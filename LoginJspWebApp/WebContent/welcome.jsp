<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%@ include file = "header.html" %>

<%--Declartion --%>
<%! int count=0;
String name;
public String getName()
{
	return name;
}
public void setName(String name){
	this.name=name;
}



%>





<%--Scriptlet --%>

<%
	String username = request.getParameter("username");
	setName(username);
	session.setAttribute("uname", username);
	session.setMaxInactiveInterval(5);
	String productUrlEnc=response.encodeURL("product.jsp");



%>
<p> dear <%= getName()%>Welcome to online shopping of zensar</p>
<p>Your Session time out periods is <%= session.getMaxInactiveInterval() %>seconds</p>
<p>to view and purchase products<a href="<%=productUrlEnc %>">Click here</a></p>



<%@ include file = "footer.html" %>
</body>
</html>