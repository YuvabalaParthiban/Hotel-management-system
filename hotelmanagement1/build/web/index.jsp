
<%@ page contentType="text/html" language="java"
import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
    <title>HOTEL GRAND PLAZA</title>
</head>


<body>


  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="#home" class="w3-bar-item w3-button"><b>HOTEL GRAND PLAZA</b></a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#categories" class="w3-bar-item w3-button">Dashboard</a>
      <a href="#about" class="w3-bar-item w3-button">About</a>
      
      <a href="registration1.jsp" class="w3-bar-item w3-button">USER Registration</a>
      <a href="login1.jsp" class="w3-bar-item w3-button">USER Login</a>
      <a href="login.jsp" class="w3-bar-item w3-button">ADMIN Login</a>
    </div>
  </div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:500px;" id="home">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}



body {
	  background-color: #f4c2c2;

    
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

}







</style>
</head>

<body>
    

<div class="w3-content w3-section" style="max-width:500px">
    <center>
  <img class="mySlides" src="hotel.jpg" >
  <img class="mySlides" src="h1.jpg"   >
  <img class="mySlides" src="h2.jpg" >
<img class="mySlides" src="h3.jpg"  >
<img class="mySlides" src="h4.jpg"  >
<img class="mySlides" src="h5.jpg"  >
<img class="mySlides" src="h6.jpg"  >
    </center>
</div>


<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
  <div class="w3-display-middle w3-margin-top w3-center">
  </div>
</header>
<marquee>
<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">

  <!-- Project Section -->
  <div class="w3-container w3-padding-32" id="categories">
    <h3 class="w3-border-bottom w3-border-light-green w3-padding-16">Categories</h3>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding"><a href="login.jsp" class="w3-bar-item w3-button">ADMIN LOGIN</a></div>
        <img src="a.jpg" alt="House" style="width:100%;height:50%">
      </div>
    </div>

    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding"><a href="registration1.jsp" class="w3-bar-item w3-button">USER REGISTRATION</a></div>
        <img src="ur.png" alt="House" style="width:100%;height:50%">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding"><a href="login1.jsp" class="w3-bar-item w3-button">USER LOGIN</a></div>
        <img src="userlogin.png" alt="House" style="width:100%">
      </div>
    </div>
  </div>
</marquee>

  <!-- About Section -->
  <div class="w3-container w3-padding-32" id="about">
    <h3 class="w3-border-bottom w3-border-light-green w3-padding-16">About</h3>
   <h2>About The Hotel</h2>
						<p>
Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!
</p>
	
<h2>Rules and Policies</h2>
<h3>Safety and Hygiene</h3>
<ul>
<li>A Negative Covid-19 test report (RT-PCR/Rapid Antigen Test) is not mandatory for guests during check-in.</li>
<li>Quarantine protocols are being followed as per local government authorities</li>
<li>Guests from containment zones are not allowed</li>
<li>Shared resources in common areas are properly sanitized</li>
<li>Property staff is trained on hygiene guidelines</li>
<li>Guests with fever are not allowed</li>
<li>Guests without Aarogya Set app are allowed</li>
<li>Hand sanitizer is provided in guest accommodation and common areas</li>
</ul>

<h2>Guest Profile</h2>
<ul>
<li>Unmarried couples are not allowed</li>
<li>Bachelors allowed</li>
<li>Guests below 18 years of age are not allowed at the property.</li>
<li>Suitable for children</li>
</ul>

<h3>Room Safety and Hygiene</h3>
<ul>
<li>All rooms are disinfected using bleach or other disinfectant</li>
<li>Linens, towels, and laundry are washed as per local guidelines</li>
<li>Rooms are properly sanitized between stays</li>
<li>Hand sanitizers are not available in the rooms</li>
</ul>
<h3>Payment Related</h3>
<ul>
<li>Credit/debit cards are accepted</li>
<li>Master Card and Visa cards are accepted</li>
</ul>
<h3>Food Arrangement</h3>

<ul>
<li>Non-Veg Food is allowed</li>
<li>Outside food is not allowed in property premises</li>
<li>Food and Drinks Hygiene</li>
</ul>

                         
  

<!-- End page content -->
</div>


<!-- Footer -->
<footer class="w3-center w3-black w3-padding-16">
  <p>HOTEL GRAND PLAZA</p>
</footer>

</body>
</html>


    	
    	
            