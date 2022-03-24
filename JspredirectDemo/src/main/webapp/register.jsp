<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register</title>
</head>
<body>
         <div align="center">
              <h2> Registration Form  </h2>
              <br><br>
        
        <form action="insert.jsp" method="post">  
        
              <label> First Name  :  </label>
              <input type="text" name="fname">
              <br><br>
              
              <label> Last Name : </label>
              <input type="text" name="lname">
              <br><br>
              
              <label> Address : </label>
              <input type="text" name="address">
              <br><br>
              
              <label> Contact : </label>
              <input type="text" name="contact"> 
              <br><br>
              
               <input type="submit" value="Submit">   
        </form>  
                   
              </div>

</body>
</html>