<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="com.dao.RegisterUserLogic1" %>
<%@ page import ="com.pojoclass.Registration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</head>
<style>
body {
  background-image: url("h2.jpg");
  
}
h1{
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}
.button {
  background-color:pink;
  -webkit-border-radius: 10px;
  border-radius: 20px;
  border: none;
  color: pink;
  cursor: pointer;
  display: inline-block;
  font-family: Arial;
  font-size: 50px;
  padding: 20px 30px;
  text-align: center;
  text-decoration: none;
  -webkit-animation: glowing 1500ms infinite;
  -moz-animation: glowing 1500ms infinite;
  -o-animation: glowing 1500ms infinite;
  animation: glowing 1500ms infinite;
}
@-webkit-keyframes glowing {
  0% { background-color: #B20000; -webkit-box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; -webkit-box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; -webkit-box-shadow: 0 0 3px #B20000; }
}

@-moz-keyframes glowing {
  0% { background-color: #B20000; -moz-box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; -moz-box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; -moz-box-shadow: 0 0 3px #B20000; }
}

@-o-keyframes glowing {
  0% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
}

@keyframes glowing {
  0% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
}</style>
<body>

<%

  Object obj = session.getAttribute("c_user");
  if(obj != null)
  {
	  %>
	   <h1>Hello User</h1>
	   
  <a href="rooms1.jsp" class="button" role="button">Book your Rooms</a>
	  <!--  <a href="rooms.jsp"><button>All Rooms</button></a> -->
	  
	  
	  
	  <a href="logout1.jsp" class="button" role="button">Logout</a>
	  <!--  <a href="logout.jsp"><button>logout</button></a> -->
	  <% 
  }
  else
  {
	  response.sendRedirect("login1.jsp");
  }
  
%>
</body>
</html>