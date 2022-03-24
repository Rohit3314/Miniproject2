<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>  <%@page import="java.io.*" %> 
<%@page import="java.sql.Connection" %> 
<%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.*" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>insert</title>
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
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "12345");  
          PreparedStatement pst = con.prepareStatement("insert into studentdetail values(?,?,?,?)");
          
          pst.setString(1,fname);  
          pst.setString(2,lname);        
          pst.setString(3,address);  
          pst.setString(4,contact);        
          
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
       
      %>
</body>
</html>