<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page </title>
</head>
<style>
html {
  height: 100%;
}
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#141e30, #243b55);
}

.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color:white;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: white;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color:white;
  pointer-events: none;
  transition: .5s;
 
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}


</style>
<body>
<div class="login-box">
<form action = "RegistrationLogic1">
<h2>User Registration </h2>
 <div class="user-box">
	<input type = "text" name= "name" placeholder="Enter your full name"/></br>
	</div>
	 <div class="user-box">
	<input type = "text" name= "email" placeholder="Enter email"/></br>
      </div>
	 <div class="user-box">
	<input type = "text" name= "password" placeholder="Enter high security password"/></br>
	</div>
	 <div class="user-box">
	<input type = "text" name= "mobile" placeholder="Enter mobile number"/></br>
	</div>
	<input type="submit" value =  "Submit"/>
	
</form>
</div>
	



</body>
</html>