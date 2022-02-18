package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Bookdetails")
public class Bookdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Bookdetails() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		 out.println("<tr><td>" + "Book ID " + "&nbsp&nbsp</td><td>" + "Book Title" + "</td></tr>"); 
		 out.println("<br><br>");
		if(id.equals("abc")&&pass.equals("12345"))
		{
		 try 
		    {
		  Class.forName("com.mysql.cj.jdbc.Driver");                // registering my driver
		  
		  Connection con = DriverManager.getConnection 
		  ("jdbc:mysql://localhost:3306/sample","root","12345");    // creating a connection
		  Statement stmt = con.createStatement();                   // statements to create
		  ResultSet rs = stmt.executeQuery("select * from book1");   // executing query
		
		 out.println("<br><br>");
		 out.println();
		  while(rs.next())
		  {
			  int n = rs.getInt("Id");  
		      String nm = rs.getString("Title");  
		        
		     // out.println(" ID  : " + n + " Title  : " + nm );   
		      out.println("<tr><td>" + n + "&nbsp&nbsp&nbsp&nbsp</td><td>" + nm + "</td></tr>"); 
		      out.println("<br><br>");
		  }  
		   
		  out.println("</html></body>");  
		  con.close();  
		    }catch(Exception e)
		 {
		    	
		 }
		} 
		 else
		 {
			 
			 out.println("Invalid ID or Password");
		 }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
