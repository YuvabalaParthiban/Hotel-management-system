<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="com.dao.RegisterUserLogic1" %>
<%@ page import ="com.pojoclass.Registration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
     Object current_user = request.getParameter("email");
     session.setAttribute("c_user",current_user);
     String email="";
     String password ="";
     email = request.getParameter("email");
     System.out.print(email);
     password = request.getParameter("password");
     Registration rg =  new Registration();
     rg.setEmail(email);
     rg.setPassword(password);
    boolean status = RegisterUserLogic1.loginuser(rg);
	if(status)
	{
		response.sendRedirect("hello1.jsp?SendMail=true");
	}
	else 
	{
		response.sendRedirect("login1.jsp");
	}
	
    %>
</body>
</html>