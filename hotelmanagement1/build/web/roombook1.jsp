<%@page import="com.dao.RoomDao"%>
<%@page import="com.pojoclass.Rooms"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script  src="js/customerdetails.js"></script>
<!--    <script>
            function checkEmail(email)
            {
              //alert("Function called..." +email);  
              var xhttp = new XMLHttpRequest(); 
              xhttp.open("GET","RoombookServlet?email="+email,true); 
              xhttp.send();
              xhttp.onreadystatechange  = function()
               {
                   if(xhttp.status ==200 && xhttp.readyState == 4)
                    {
                       var res = xhttp.responseText;
                       document.getElementById("msg").innerHTML = res;     
                    }
               }
            }onblur="checkEmail(this.value)"
        </script> --> 
        <style>
        	 .error {
            border: 1px solid red;
           
        }
        .ok{
            border: 1px solid green;
           
        }
        </style>
</head>
<body>

<!-- <form action = "RoombookServlet">
<h1>Add Customer Details</h1>
	Full Name :<input type = "text" name= "name"/></br>
	Email :<input type = "text" name= "email" ></br>
	Mobile Number : <input type = "text" name= "mobile"/></br>
	RoomNumber : <input type  = "text" name ="roomno"/></br>
	Check-In :<input type = "date" name ="checkin"/></br>
	Check-Out :<input type = "date" name ="checkout"/></br>
	<input type="submit" value =  "Submit"/>
	
</form>
 -->
 
<form action="RoombookServlet1" style="width:300px; margin-left: 500px;" name="regForm" onsubmit="return validate()" >
<h1>Add Customer Details</h1>

  <div class="form-group">
    <label for="Name">CustomerName:</label>
    <input type="text" class="form-control" id="name" name ="name" onblur="return validCheck(1)">
    <div id="alert"></div>
  </div>
  

  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email"  name ="email" onblur="return validCheck(2)">
    <div id="alert3"></div> 
  </div>

  
 <div class="form-group">
    <label for="Mobile">MobileNumber:</label>
    <input type="text" class="form-control" id="text" name ="mobile" >
    <div id="alert4"></div>
  </div>
  
   <div class="form-group">
   <label for="roomno">Room No:</label>
    <input type="number" class="form-control" id="roomno" name ="roomno" >
  </div>
  
  
  <div class="form-group">
    <label for="checkin">CheckIn:</label>
    <input type="date" class="form-control" id="txtDate1" name ="checkin">
  </div>
  
  
   <div class="form-group">
    <label for="checkout">CheckOut:</label>
    <input type="date" class="form-control" id="txtDate" name ="checkout">
  </div>
  <script>

  </script>
  
  
  <button type="submit" class="btn btn-success">Submit</button>
</form>


</body>
</html>