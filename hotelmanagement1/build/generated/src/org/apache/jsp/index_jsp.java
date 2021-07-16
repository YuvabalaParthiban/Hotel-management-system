package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <title>HOTEL GRAND PLAZA</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <div class=\"w3-bar w3-white w3-wide w3-padding w3-card\">\r\n");
      out.write("    <a href=\"#home\" class=\"w3-bar-item w3-button\"><b>HOTEL GRAND PLAZA</b></a>\r\n");
      out.write("    <!-- Float links to the right. Hide them on small screens -->\r\n");
      out.write("    <div class=\"w3-right w3-hide-small\">\r\n");
      out.write("      <a href=\"#categories\" class=\"w3-bar-item w3-button\">Dashboard</a>\r\n");
      out.write("      <a href=\"#about\" class=\"w3-bar-item w3-button\">About</a>\r\n");
      out.write("      \r\n");
      out.write("      <a href=\"registration1.jsp\" class=\"w3-bar-item w3-button\">USER Registration</a>\r\n");
      out.write("      <a href=\"login1.jsp\" class=\"w3-bar-item w3-button\">USER Login</a>\r\n");
      out.write("      <a href=\"login.jsp\" class=\"w3-bar-item w3-button\">ADMIN Login</a>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("<!-- Header -->\r\n");
      out.write("<header class=\"w3-display-container w3-content w3-wide\" style=\"max-width:500px;\" id=\"home\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<meta content=\"text/html; charset=iso-8859-2\" http-equiv=\"Content-Type\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\r\n");
      out.write("<style>\r\n");
      out.write(".mySlides {display:none;}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("\t  background-color: #f4c2c2;\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("  height: 100%; \r\n");
      out.write("  background-position: center;\r\n");
      out.write("  background-repeat: no-repeat;\r\n");
      out.write("  background-size: cover;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<div class=\"w3-content w3-section\" style=\"max-width:500px\">\r\n");
      out.write("    <center>\r\n");
      out.write("  <img class=\"mySlides\" src=\"hotel.jpg\" >\r\n");
      out.write("  <img class=\"mySlides\" src=\"h1.jpg\"   >\r\n");
      out.write("  <img class=\"mySlides\" src=\"h2.jpg\" >\r\n");
      out.write("<img class=\"mySlides\" src=\"h3.jpg\"  >\r\n");
      out.write("<img class=\"mySlides\" src=\"h4.jpg\"  >\r\n");
      out.write("<img class=\"mySlides\" src=\"h5.jpg\"  >\r\n");
      out.write("<img class=\"mySlides\" src=\"h6.jpg\"  >\r\n");
      out.write("    </center>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("var myIndex = 0;\r\n");
      out.write("carousel();\r\n");
      out.write("\r\n");
      out.write("function carousel() {\r\n");
      out.write("  var i;\r\n");
      out.write("  var x = document.getElementsByClassName(\"mySlides\");\r\n");
      out.write("  for (i = 0; i < x.length; i++) {\r\n");
      out.write("    x[i].style.display = \"none\";  \r\n");
      out.write("  }\r\n");
      out.write("  myIndex++;\r\n");
      out.write("  if (myIndex > x.length) {myIndex = 1}    \r\n");
      out.write("  x[myIndex-1].style.display = \"block\";  \r\n");
      out.write("  setTimeout(carousel, 2000); // Change image every 2 seconds\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("  <div class=\"w3-display-middle w3-margin-top w3-center\">\r\n");
      out.write("  </div>\r\n");
      out.write("</header>\r\n");
      out.write("<marquee>\r\n");
      out.write("<!-- Page content -->\r\n");
      out.write("<div class=\"w3-content w3-padding\" style=\"max-width:1564px\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Project Section -->\r\n");
      out.write("  <div class=\"w3-container w3-padding-32\" id=\"categories\">\r\n");
      out.write("    <h3 class=\"w3-border-bottom w3-border-light-green w3-padding-16\">Categories</h3>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"w3-row-padding\">\r\n");
      out.write("    <div class=\"w3-col l3 m6 w3-margin-bottom\">\r\n");
      out.write("      <div class=\"w3-display-container\">\r\n");
      out.write("        <div class=\"w3-display-topleft w3-black w3-padding\"><a href=\"login.jsp\" class=\"w3-bar-item w3-button\">ADMIN LOGIN</a></div>\r\n");
      out.write("        <img src=\"a.jpg\" alt=\"House\" style=\"width:100%;height:50%\">\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"w3-col l3 m6 w3-margin-bottom\">\r\n");
      out.write("      <div class=\"w3-display-container\">\r\n");
      out.write("        <div class=\"w3-display-topleft w3-black w3-padding\"><a href=\"registration1.jsp\" class=\"w3-bar-item w3-button\">USER REGISTRATION</a></div>\r\n");
      out.write("        <img src=\"ur.png\" alt=\"House\" style=\"width:100%;height:50%\">\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"w3-col l3 m6 w3-margin-bottom\">\r\n");
      out.write("      <div class=\"w3-display-container\">\r\n");
      out.write("        <div class=\"w3-display-topleft w3-black w3-padding\"><a href=\"login1.jsp\" class=\"w3-bar-item w3-button\">USER LOGIN</a></div>\r\n");
      out.write("        <img src=\"userlogin.png\" alt=\"House\" style=\"width:100%\">\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</marquee>\r\n");
      out.write("\r\n");
      out.write("  <!-- About Section -->\r\n");
      out.write("  <div class=\"w3-container w3-padding-32\" id=\"about\">\r\n");
      out.write("    <h3 class=\"w3-border-bottom w3-border-light-green w3-padding-16\">About</h3>\r\n");
      out.write("   <h2>About The Hotel</h2>\r\n");
      out.write("\t\t\t\t\t\t<p>\r\n");
      out.write("Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!Traveling anytime soon? Looking for a value for money accommodation? This charming property has everything required to make your stay memorable. It is exclusively designed with travelers requirements in mind. It encloses a comfortably furnished bedroom, with a snuggly bed covered with spotless linen. To make your stay hassle-free, OYO has implemented a complete set of modern day amenities. The living space is furnished with top-notch furniture and enhanced with trendy decor. Not to forget, cleanliness is always right up there on our priority list. Getting around through public transport is quite convenient. The city has something for every traveler. You just have to go outside and explore! If you are traveler looking for a comfortable stay, this is a great choice to make. We, at OYO, look forward to ensuring round the clock assistance to make your experience a delightful one. Come soon!\r\n");
      out.write("</p>\r\n");
      out.write("\t\r\n");
      out.write("<h2>Rules and Policies</h2>\r\n");
      out.write("<h3>Safety and Hygiene</h3>\r\n");
      out.write("<ul>\r\n");
      out.write("<li>A Negative Covid-19 test report (RT-PCR/Rapid Antigen Test) is not mandatory for guests during check-in.</li>\r\n");
      out.write("<li>Quarantine protocols are being followed as per local government authorities</li>\r\n");
      out.write("<li>Guests from containment zones are not allowed</li>\r\n");
      out.write("<li>Shared resources in common areas are properly sanitized</li>\r\n");
      out.write("<li>Property staff is trained on hygiene guidelines</li>\r\n");
      out.write("<li>Guests with fever are not allowed</li>\r\n");
      out.write("<li>Guests without Aarogya Set app are allowed</li>\r\n");
      out.write("<li>Hand sanitizer is provided in guest accommodation and common areas</li>\r\n");
      out.write("</ul>\r\n");
      out.write("\r\n");
      out.write("<h2>Guest Profile</h2>\r\n");
      out.write("<ul>\r\n");
      out.write("<li>Unmarried couples are not allowed</li>\r\n");
      out.write("<li>Bachelors allowed</li>\r\n");
      out.write("<li>Guests below 18 years of age are not allowed at the property.</li>\r\n");
      out.write("<li>Suitable for children</li>\r\n");
      out.write("</ul>\r\n");
      out.write("\r\n");
      out.write("<h3>Room Safety and Hygiene</h3>\r\n");
      out.write("<ul>\r\n");
      out.write("<li>All rooms are disinfected using bleach or other disinfectant</li>\r\n");
      out.write("<li>Linens, towels, and laundry are washed as per local guidelines</li>\r\n");
      out.write("<li>Rooms are properly sanitized between stays</li>\r\n");
      out.write("<li>Hand sanitizers are not available in the rooms</li>\r\n");
      out.write("</ul>\r\n");
      out.write("<h3>Payment Related</h3>\r\n");
      out.write("<ul>\r\n");
      out.write("<li>Credit/debit cards are accepted</li>\r\n");
      out.write("<li>Master Card and Visa cards are accepted</li>\r\n");
      out.write("</ul>\r\n");
      out.write("<h3>Food Arrangement</h3>\r\n");
      out.write("\r\n");
      out.write("<ul>\r\n");
      out.write("<li>Non-Veg Food is allowed</li>\r\n");
      out.write("<li>Outside food is not allowed in property premises</li>\r\n");
      out.write("<li>Food and Drinks Hygiene</li>\r\n");
      out.write("</ul>\r\n");
      out.write("\r\n");
      out.write("                         \r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("<!-- End page content -->\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Footer -->\r\n");
      out.write("<footer class=\"w3-center w3-black w3-padding-16\">\r\n");
      out.write("  <p>HOTEL GRAND PLAZA</p>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \t\r\n");
      out.write("    \t\r\n");
      out.write("            ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
