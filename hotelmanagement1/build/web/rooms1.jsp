<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.service.Getconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rooms</title>

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style type="text/css">
  
  th{
  padding: 8px;
  }
  body {
  background-image: url("h4.jpg");
  
}
h2{
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}
  
  </style>

</head>
<body>
<%
String id = request.getParameter("room_no");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "demo";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>All Rooms And their Status</strong></font></h2>
<table align="center" style="width:300px; background-color:grey; border: 1px solid red;" cellspacing="10">

<tr bgcolor="tomato">
<th><b>RoomNumber</b></th>
<th><b>Status</b></th>
<th><b>BookRoom</b></th>

</tr>
<%
try{
	connection = Getconnection.getConnection();
statement=connection.createStatement();
String sql ="SELECT * FROM room";


resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	int roomno = resultSet.getInt("room_no");
    String roomstatus = resultSet.getString("status") ;
    
%>

<tr bgcolor="lightgreen" style="border:1px solid red; padding:20px; margin: 8px;">

<td><%= roomno%></td>
<td><%= roomstatus%></td>
<td><% if(resultSet.getString("status").equals("true")){
	

	%>
	
<!-- <a href ="roombook.jsp"><input type = "submit" value = "Book"/></a> -->
 <a href="roombook1.jsp?roomno=<%=roomno%>" class="btn btn-info" role="button" style="margin: 8px;">Book</a>
 
	<% }
   else{
     %>
     <!-- <a href ="#"><input style="color:red; padding-left: 20px;" type = "submit" value = "Booked"/></a> -->
      <a href="# " class="btn btn-danger" role="button" style="margin:8px;">Booked</a>
     <%}%>
	</td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>