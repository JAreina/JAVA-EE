<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">
<title>Login</title>
</head>
<%String errMsg = null;
boolean oculta = true;%>

<%if ("POST".equalsIgnoreCase(request.getMethod()) && request.
getParameter("submit") != null) {
	/* SE CREA EL BEAN*/ 
%>


<jsp:useBean id="loginBean"
class="bean.LoginBean">
<jsp:setProperty name="loginBean" property="*"/>
</jsp:useBean>


<%
if (loginBean.isValidUser())
{
	oculta = false;
//valid user
out.println("<h2>Welcome JAreina !</h2>");
out.println("You are BIEN logged in");
}
else{

errMsg = "Invalid user id or password. Please try again AND AGAIN AND AGAIN";
}
%>
<%} %>
<body>



	
	<!-- Check error message. If it is set, then display it -->
	<%if (errMsg != null) { %>
	<span style="color: red;"> <%out.print(errMsg); %>
	</span>
	<%} 
	
	if(oculta){%>
	<h2>Login:</h2>
	<form method="post">
		User Name: <input type="text" name="userName"><br>
		Password: <input type="password" name="password"><br>
		<button type="submit" name="submit">Submit</button>
		<button type="reset">Reset</button>
	</form>
       <%} %>
</body>
</html>