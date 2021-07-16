package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.pojoclass.*;
import com.service.*;
public class RegisterUserLogic1 {
 
	
	
	public static boolean registeruser(Registration rg) {
		boolean b = false;
		Connection con = null;
		try 
		{
			con = Getconnection.getConnection();
			String sql = "insert into registration1(name,email,password,mobile_number) values (?,?,?,?)";
		    PreparedStatement ps = con.prepareStatement(sql);
		    ps.setString(1,rg.getName());
		    ps.setString(2,rg.getEmail());
		    ps.setString(3,rg.getPassword());
		    ps.setInt(4,rg.getMobilenumber());
		    if(ps.executeUpdate()!=0)
		    {
		    	b = true;
		    }
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally 
		 {
			try {
				con.close();
			}
			catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
		 }
			
		return b;

	}
	
	public static boolean loginuser(Registration rg) {
		boolean b = false;
		Connection con = null;
		try 
		{
			con = Getconnection.getConnection();
			String sql = "select email,password from registration1 where email = ? and password = ?";
		    PreparedStatement ps = con.prepareStatement(sql);
		    ps.setString(1,rg.getEmail());
		    ps.setString(2,rg.getPassword());
		    ResultSet rs = ps.executeQuery();
		    if(rs.next())
		    {
		    	b = true;
		    }
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally 
		 {
			try {
				con.close();
			}
			catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
		 }
			
		return b;

	}
	

}
