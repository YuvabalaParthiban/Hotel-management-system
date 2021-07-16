<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.service.Getconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.pojoclass.Rooms"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String status = request.getParameter("status");
int roomno  =  Integer.parseInt(request.getParameter("roomno"));

Connection con = null;
con = Getconnection.getConnection();
String sql ="update room set status = ? where room_no =?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,status);
ps.setInt(2,roomno);
if(ps.executeUpdate()!=0)
{
	response.sendRedirect("hello.jsp?SendMail=false");
}
else
{
	response.sendRedirect("roomstatus.jsp");
}

%>
</body>
</html>