<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete</title>
</head>
<body>
           <div align="center">
           <h2> Delete record </h2>
           
           <form action="deleteaction.jsp" method="post">
                                   
             <label> Enter User Name   : </label>
             <input type="text" name="fname">
             <br><br>
             
             <input type="submit" value="DELETE">
           </form>
           </div>
</body>
</html>