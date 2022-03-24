<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>  <%@page import="java.io.*" %> <%@page import="java.sql.Connection" %> 
<%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
</head>
<body>

         <%
         PrintWriter pw = response.getWriter();
              
        try
        
        {   
                   
          Class.forName("com.mysql.cj.jdbc.Driver");  
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "12345");  
          
           Statement stmt =con.createStatement();
			
			String s1 = "select * from studentdetail";                    
			ResultSet rs = stmt.executeQuery(s1);                   
			
			pw.println("<h2> Employee Data</h2>");
			pw.println("<br><br>");
			
			while(rs.next())
			{
				
				pw.println("First Name  : "+ rs.getString(1)+ " Last Name : "+rs.getString(2)
				           +"Address   : "+ rs.getString(3)+ " Contact : "+rs.getString(4));
			    pw.println("<br><br>");
			}
			
            }  
        catch (Exception e)
        {  
          pw.println(e);  
        }  
       
      %>

</body>
</html>