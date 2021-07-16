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

</head>
<body>


<div class="container">
  <h2>Change Room Status</h2>
  <form action="roomstatusupdate.jsp">
    <div class="form-group">
      <label for="RoomNo">RoomNo</label>
      <input type="text" class="form-control" id="roomno" placeholder="Enter roomno" name="roomno">
    </div>
   <div class="form-group">
  <label for="sel1">Select list:</label>
  <select class="form-control" id="sel1" name="status">
    <option value="true">true</option>
    <option value="false">false</option>
  </select>
</div>
    <button type="submit" class="btn btn-success">Change Status</button>
  </form>
</div>


<!-- <form action="roomstatusupdate.jsp">
	RoomNumber : <input type  = "number" name ="roomno"/></br>
    RoomStatusChange:
 <select name="status">
   <option value="0">select</option>
   <option value="true">true</option>
   <option value="false">false</option>
 </select></br>
 <input type="submit" value="Change Status"/>
</form> -->



</body>
</html>