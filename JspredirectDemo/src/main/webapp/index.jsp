<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>


                 <meta name="viewport"
        content="width=device-width, initial-scale=1">
          
    <style>
                      
        /* styling navlist */
        #navlist {
            background-color: #0074D9;
            position: absolute;
            width: 100%;
        }
           
        /* styling navlist anchor element */
        #navlist a {
            float:left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 12px;
            text-decoration: none;
            font-size: 15px;
        }
        .navlist-right{
            float:right;
        }
   
        /* hover effect of navlist anchor element */
        #navlist a:hover {
            background-color: #ddd;
            color: black;
        }
    </style>
</head>
  
<body>
      
    <!-- Navbar items -->
    
    <div id="navlist">
        <a href="register.jsp">Register</a>
        <a href="home.jsp">Data</a>
        <a href="update.jsp">Update</a>
        <a href="delete.jsp">Delete</a>
    
    </div>
    <br> 
                 <div align="center">
                 <h2 style="color:green; padding-top:60px;"> Employee Data</h2>
                 </div>
        
</body>
</html>