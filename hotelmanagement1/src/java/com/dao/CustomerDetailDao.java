package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pojoclass.CustomerDetail;
import com.service.Getconnection;


public class CustomerDetailDao {
	
	public static boolean addCustomer(CustomerDetail cd ) {
		
		boolean status = false;
		Connection con  =  null ;
		try {
			
			con  = Getconnection.getConnection();
			String sql  = "insert into customer(name , email , mobile, checkin,checkout,roomno)  values (?,?,?,?,?,?) ";
			PreparedStatement ps  =  con.prepareStatement(sql);
			ps.setString(1, cd.getName());
			ps.setString(2, cd.getEmail());
			ps.setInt(3, cd.getMobile());
			ps.setString(4,cd.getCheckin());
			ps.setString(5, cd.getCheckout());
			ps.setInt(6,cd.getRoomno());
			if(ps.executeUpdate()!=0)
			{
			// SendMailSSL.sendEmail(cd.getEmail());
			 status = true;
			 	String sql1 = "update room set status = ? where room_no = ?";
			 	PreparedStatement ps1 = con.prepareStatement(sql1);
			 	ps1.setString(1, "false");
				ps1.setInt(2,cd.getRoomno());
				ps1.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	

}
