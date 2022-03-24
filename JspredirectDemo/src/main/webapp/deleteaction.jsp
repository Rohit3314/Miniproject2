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
<title>deleteaction</title>
</head>
<body>

<%
                            PrintWriter pw= response.getWriter();
                    try
                    {
                            String f1 = request.getParameter("fname");
                            
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","12345");
                            Statement stmt = con.createStatement();
                             
                            int i = stmt.executeUpdate("delete from studentdetail where fname="+"fname");                        
                            if(i!=0)
                            {  
                              pw.println("<br>Deleted record Successfully");  
                            }  
                            else
                            {  
                              pw.println("failed to delete record");  
                             }                   
                    
                    }
                    catch(Exception e)
                    {
                           pw.println(e);                    	
                    }

%>>

</body>
</html>