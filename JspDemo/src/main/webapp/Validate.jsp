<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validate</title>
</head>
<body>
              <div align="center">

           <%
                       
                  String var1 = request.getParameter("userid");     
                  request.setAttribute("id",var1);
                  String var2 = request.getParameter("pswd");
                  
                  if(var1.equals("root") && var2.equals("root"))
                  {
                	  out.println("Login Success for : ");
                			  out.println(var1);
                			  
                			  try
                				{
                					
                					Class.forName("com.mysql.cj.jdbc.Driver");  // register my driver
                					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel","root","12345");  // connection
                					Statement stmt =con.createStatement();
                					
                					String s1 = "select * from tourism where userid=var1";                       // query
                					ResultSet rs = stmt.executeQuery(s1);                      // table data
                					while(rs.next())
                					{
                						
                						out.println("ID : "+ rs.getString(1)+ "   Name : "+rs.getString(2)+ " Address : "+rs.getString(3));
                     				}
                					
                					con.close();
                					
                				}catch(Exception e)
                				{
                					e.printStackTrace();
                				}	  
                			  
                  			  
                  }
                  else
                  {
                	  out.println("Login Failed");
                	  
                  }
           
           %>

              </div>
</body>
</html>