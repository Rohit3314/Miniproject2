<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>  <%@page import="java.io.*" %> 
<%@page import="java.sql.Connection" %> 
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.*" %> 
<%@ page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updateaction</title>
</head>
<body>

            <%
                   PrintWriter pw = response.getWriter();
             
              try
              {
            	String fname = request.getParameter("fname");
            	String lname = request.getParameter("lname");
            	String address = request.getParameter("address");
            	String contact = request.getParameter("contact");
            	
            	Class.forName("com.mysql.cj.jdbc.Driver");
            //	Connection con= DriverManager.getConnetion("jdbc:mysql://localhost:3306/student","root","12345");
            	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","12345");
                 PreparedStatement pt = con.prepareStatement("update studentdetail set fname=?,lname=?,address=?,contact=? where fname=fname");
            	 pt.setString(1,fname);  
                 pt.setString(2,lname);        
                 pt.setString(3,address);  
                 pt.setString(4,contact);        
                 
                 int i = pt.executeUpdate();  
                 if(i!=0)
                 {  
                   pw.println("<br>Record has been updated");  
                 }  
                 else
                 {  
                   pw.println("failed to update record");  
                  }  
            	
            	
              }catch(Exception e)
              {
            	  pw.println(e);
              }     
            %>
</body>
</html>