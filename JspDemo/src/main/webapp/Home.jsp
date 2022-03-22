<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>

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
        <a href="Home.jsp">Home</a>
        <a href="Login.jsp">Login</a>
        <div class="navlist-right">
        <a href="About.jsp">About Us</a>
        <a href="Contact.jsp">Contact Us</a>
        </div>
    
    </div>
    <br> 
    <h1 style="color:green; padding-top:40px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
     Tours & Travels Management </h1>
        <br>
         <div>
        <img class="picture" width=1000px height=300 px src="Images/one.jpg"/>
   
       
         </div>
        </body>    
</html>