package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Addbook")
public class Addbook extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Addbook()
    {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		response.setContentType("text/html");  
        PrintWriter pw = response.getWriter();  
        String connectionURL = "jdbc:mysql://localhost:3306/sample"; 
        Connection connection;  
        
        try
        {  
          String Username = request.getParameter("id");  
          String Password= request.getParameter("pass");  
          int user = Integer.parseInt(Username);
          Class.forName("com.mysql.jdbc.Driver");  
          connection = DriverManager.getConnection(connectionURL, "root", "12345");  
          PreparedStatement pst = connection.prepareStatement("insert into book1 values(?,?)");
          pst.setInt(1,user);  
          pst.setString(2,Password);        
          
          int i = pst.executeUpdate();  
          if(i!=0)
          {  
            pw.println("<br>Record has been inserted");  
          }  
          else
          {  
            pw.println("failed to insert the data");  
           }  
        }  
        catch (Exception e)
        {  
          pw.println(e);  
        }  
      }  
     

	}


