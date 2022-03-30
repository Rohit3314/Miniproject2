package com.update;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DeleteServlet() {
        super();
    }
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	  response.setContentType("text/html");
	  PrintWriter out = response.getWriter();
	  
	  String s1 = request.getParameter("id");
	  int id1 = Integer.parseInt(s1);
	  
	  try
	  {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","12345");
		  String sql = "delete from employeedata where id=?";
		  
		  PreparedStatement pstmt = con.prepareStatement(sql);
		  pstmt.setInt(1, id1);
		  int result = pstmt.executeUpdate();
		  if (result != 0)
		    	 out.println("<h4>Record Updated</h4>");
		    	 else
		    		 out.println("<h4>Record Not Updated</h4>");
	  }catch(Exception e)
	  {
	}

}
}