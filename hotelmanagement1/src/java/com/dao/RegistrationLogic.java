package com.dao;
import com.pojoclass.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationLogic")
public class RegistrationLogic extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Registration rg =  new Registration();
       
   
    public RegistrationLogic() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name  = request.getParameter("name");
		String email  = request.getParameter("email");
		String password  =  request.getParameter("password");
		System.out.println("before mobile");
		int mobilenumber  = Integer.parseInt(request.getParameter("mobile"));
		System.out.println("after mobile");
		rg.setName(name);
		rg.setEmail(email);
		rg.setPassword(password);
		rg.setMobilenumber(mobilenumber);
		boolean status = RegisterUserLogic.registeruser(rg);
		if(status)
		{
			response.sendRedirect("login.jsp");
		}
		else 
		{
			response.sendRedirect("registration.jsp");
		}
		
		
	}

}
