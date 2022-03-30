package com.update;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Fetchservlet")
public class Fetchservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        public Fetchservlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		  try
		  {
			  Class.forName("com.mysql.cj.jdbc.Driver");
			  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","12345");
			  String sql = "select * from employeedata";
			  
			  Statement stmt = con.createStatement();
			  ResultSet rs = stmt.executeQuery(sql);
			  out.println("<h4>ID    Name   Desg</h4>");
			  out.println("<br>");
			  while(rs.next())
			  {
				  out.println("<h4>"+rs.getInt(1)+"</h4>"+"<h4>"+rs.getString(2)+"</h4>"+"<h4>"+rs.getString(3)+"</h4>");
				 
			  }
		  }catch(Exception e)
		  {
		}

		
	}

}
