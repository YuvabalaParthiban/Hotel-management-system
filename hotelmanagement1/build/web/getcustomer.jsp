<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="com.service.*"%>
<%@page import="com.pojoclass.*"%>
<%@page import="com.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
	<%
		Connection con = null;
		con = Getconnection.getConnection();
		String sql = "select * from customer";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery(sql);
	%>


	<div class="container">
		<h2>All Customer Details</h2>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>CustomerId</th>
					<th>CustomerName</th>
					<th>Email</th>
					<th>Contact</th>
					<th>RoomNo</th>
					<th>CheckIn</th>
					<th>CheckOut</th>
				</tr>
			</thead>
			<tbody>
				<%
					while (rs.next()) {
				%>

				<tr>
					<td><%=rs.getInt("customer_id")%></td>
					<td><%=rs.getString("name")%></td>
					<td><%=rs.getString("email") %></td>
					<td><%=rs.getInt("mobile")%></td>
					<td><%=rs.getInt("roomno")%></td>
					<td><%=rs.getString("checkin")%></td>
					<td><%=rs.getString("checkout")%></td>
				</tr>



			</tr>
            <%}%>
           </tbody>
        </table><br>
    
	</div>





</body>
</html>













	<%-- <div class = "container">
	<table align="center" class="table table-hover">
		
		<tr bgcolor="tomato">
			<th><b>Customer-Id</b></th>
			<th><b>CustomerName</b></th>
			<th><b>Email</b></th>
			<th><b>Contact</b></th>
			<th><b>RoomNo</b></th>
			<th><b>CheckIn</b></th>
			<th><b>CheckOut</b></th>

		</tr>
		<tr>
			<td><%=customerid%></td>
			<td><%=name%></td>
			<td><%=email%></td>
			<td><%=mobile%></td>
			<td><%=roomno%></td>
			<td><%=checkin%></td>
			<td><%=checkout%></td>
		</tr>

	</table>
</div>
 --%>

	
