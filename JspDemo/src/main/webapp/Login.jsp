<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
            <div align="center">
            <form action="Validate.jsp" method="post">
             <h2> Login Page</h2>
             <br><br>
            <label> Enter ID : </label>
            <input type="text" name="userid">
            <br><br>

			<label> Pswd  : </label>
            <input type="password" name="pswd">
            <br><br>

             <Button> Submit </Button> 
                    
             </form>
             </div>
</body>
</html>