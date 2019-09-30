<% 
 	String username= request.getParameter("username");
String password = request.getParameter("passwd");

//buisness logic
if(username != null && password!=null
&& username.equals("rohini")&& password.equals("hello"))
{
	//pageContext.forward("Welcome.jsp");
	RequestDispatcher rds = request.getRequestDispatcher("welcome.jsp");
	rds.forward(request, response);
	
	
}
else
{
	out.println("sorry!! Invalid username/password");
	pageContext.include("Login.jsp"); //dynamic include
}




%>