package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pojoclass.Registration;
import com.pojoclass.Rooms;
import com.service.Getconnection;

public class RoomDao 
{
	public static boolean registeruser(Registration rg) {
		boolean b = false;
		Connection con = null;
		try 
		{
			con = Getconnection.getConnection();
			String sql = "insert into registration(name,email,password,mobile_number) values (?,?,?,?)";
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

}
