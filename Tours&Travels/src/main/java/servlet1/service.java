package servlet1;

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


@WebServlet("/service")
public class service extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
    public service() 
    {
      super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");  
        PrintWriter pw = response.getWriter();  
        String connectionURL = "jdbc:mysql://localhost:3306/sample1"; 
        Connection connection;  
        
        try
        {  
          String source = request.getParameter("source");  
          String dest = request.getParameter("dest");  
          String count1 = request.getParameter("count");  
          String date = request.getParameter("date");  
          int count = Integer.parseInt(count1); 
          Class.forName("com.mysql.cj.jdbc.Driver");  
          connection = DriverManager.getConnection(connectionURL, "root", "12345");  
          PreparedStatement pst = connection.prepareStatement("insert into travel values(?,?,?,?)");
         
          pst.setString(1,source);        
          pst.setString(2,dest);  
          pst.setInt(3,count); 
          pst.setString(4,date);
          
          int i = pst.executeUpdate();  
          if(i!=0)
          {  
            pw.println("<br>Record has been inserted");  
          }  
          else
          {  
            pw.println("failed to insert the data");  
           }  
        }  
        catch (Exception e)
        {  
          pw.println(e);  
        }  
      }  
  
}
