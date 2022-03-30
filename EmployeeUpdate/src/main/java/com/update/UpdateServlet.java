package com.update;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
    public UpdateServlet() 
    {
        super();   
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{   
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
        String eid = request.getParameter("id"); 
	    int eid1 = Integer.parseInt(eid);
	    String ename1 = request.getParameter("name");
	    String edesg1 = request.getParameter("desg");
	    
	    
	    try
	    {
	    	 Class.forName("com.mysql.cj.jdbc.Driver");
	    	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","12345");
	      	
	    	 String sql = "update employeedata set name=?, desg=? where id=?";
	    	
	    	 PreparedStatement pstmt = con.prepareStatement(sql);
	    	 pstmt.setString(1,ename1);
	    	 pstmt.setString(2,edesg1);
	    	 pstmt.setInt(3,eid1);
	    	 int result = pstmt.executeUpdate();
	    	 
	    	 if (result != 0)
	    	 out.println("<h4>Record Updated</h4>");
	    	 else
	    		 out.println("<h4>Record Not Updated</h4>");		 
	    }catch(Exception e)
	    {
	    	out.println("<h5>"+e+"</h5>");
	    }
	}

}
