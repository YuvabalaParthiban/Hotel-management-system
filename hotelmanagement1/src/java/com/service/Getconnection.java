package com.service;

import java.sql.*;

public class Getconnection {
	private static Connection con = null;
	public static Connection getConnection()
	{

		try {
			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","");

		} catch (Exception e)

		{
			System.out.println(e);
		} 
	     return con;	
		}

	}
