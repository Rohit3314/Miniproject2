package servlet1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Data")
public class Data extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Data() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		 out.println("<tr><td>" + " Bookings Record : "); 
		 out.println("<br><br>");
		if(id.equals("abc")&&pass.equals("12345"))
		{
		 try 
		    {
		  Class.forName("com.mysql.cj.jdbc.Driver");                // registering my driver
		  
		  Connection con = DriverManager.getConnection 
		  ("jdbc:mysql://localhost:3306/sample1","root","12345");    // creating a connection
		  Statement stmt = con.createStatement();                   // statements to create
		  ResultSet rs = stmt.executeQuery("select * from travel");   // executing query
		
		 out.println("<br><br>");
		 out.println();
		  while(rs.next())
		  {
			  String nm1 = rs.getString("source"); 
			  String nm2 = rs.getString("dest"); 
			  int n = rs.getInt("count");  
		      String nm3 = rs.getString("date");  
		        
		     // out.println(" ID  : " + n + " Title  : " + nm );   
		      out.println("<tr><td>" + nm1 + "&nbsp&nbsp&nbsp&nbsp</td><td>" + nm2 + "</td></tr>"
		    		  +"<tr><td>" + n + "&nbsp&nbsp&nbsp&nbsp</td><td>" + nm3 + "</td></tr>"); 
		      out.println("<br><br>");
		  }  
		   
		  out.println("</html></body>");  
		  con.close();  
		    }catch(Exception e)
		 {
		    	
		 }
		} 
		 else
		 {
			 
			 out.println("Invalid ID or Password");
		 }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
