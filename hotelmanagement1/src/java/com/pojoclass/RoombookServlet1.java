package com.pojoclass;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CustomerDetailDao;

@WebServlet("/RoombookServlet1")
public class RoombookServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RoombookServlet1() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		int mobilenumber = Integer.parseInt(request.getParameter("mobile"));
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		int roomno  =  Integer.parseInt(request.getParameter("roomno"));

		CustomerDetail cd = new CustomerDetail();
		cd.setName(name);
		cd.setEmail(email);
		cd.setMobile(mobilenumber);
		cd.setCheckin(checkin);
		cd.setCheckout(checkout);
		cd.setRoomno(roomno);
		System.out.println("control here");
		boolean status  = CustomerDetailDao.addCustomer(cd);
		if(status) {
			
			PrintWriter out  =  response.getWriter();
			out.println("<script>");
			
			out.println("alert('Room Booked Successfully')");
			out.println("window.location.href=('hello1.jsp?SendMail=true&Sender="+email+"&User="+name+"')");
			
			
			
			out.println("</script>");
			
		}
		else {
			
			
			PrintWriter out  =  response.getWriter();
			out.println("<script>");
			out.println("alert('Room not booked')");
			out.println("window.location.href=('roombook.jsp')");
			out.println("</script>");
			
		}

	}

}
