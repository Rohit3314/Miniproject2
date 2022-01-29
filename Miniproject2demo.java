package com.jdbc1;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Miniproject2demo extends JFrame implements ActionListener
{
   JFrame f1;
   JPanel p1;                                                        // declaration
   JLabel l1,l2;
   JTextField t1,t2;
   JButton b1,b2,b3;
	
   Miniproject2demo()                                                // initialize all controls
   {
	   f1 = new JFrame("Banking");
	   p1 = new JPanel();
	   l1 = new JLabel("Username : ");
	   l2 = new JLabel("Password : ");
	   t1 = new JTextField("0",10);
	   t2 = new JTextField("0",10);
	   b1 = new JButton("Profile");
	   b2 = new JButton("Last 3T");
	   b3 = new JButton("Balance");
	   p1.add(l1); p1.add(t1);
	   p1.add(l2); p1.add(t2);
	   p1.add(b1); p1.add(b2); p1.add(b3);
	   f1.add(p1);
	   f1.setSize(300,300);
	   f1.setVisible(true);
	   
	   b1.addActionListener(new ActionListener()
	   {
		public void actionPerformed(ActionEvent e)            // login action
		{
			String n1 = t1.getText();
			String n2 = t2.getText();
			
			if(n1.equals("123") && n2.equals("abc"))
			{
				try 
				{
				     Class.forName("com.mysql.cj.jdbc.Driver");
				     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
					 Statement st = con.createStatement();
					 ResultSet rs =  st.executeQuery("select * from profile1");
					 System.out.println("\n Your profile is : ");
				     while(rs.next())
				     {
				    	 System.out.println("ID : "+rs.getInt(1)+" Name  :"+rs.getString(2)+"  Address :"+rs.getString(3)+" Email : "+rs.getString(4));						    	 
				     }
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			}
			else
			{
			     System.out.println("\n Incorrect ID or password");	
			}
			
		}	   
	   });


	   
	   b2.addActionListener(new ActionListener()
			   {
				public void actionPerformed(ActionEvent e)            // login action
				{
					String n1 = t1.getText();
					String n2 = t2.getText();
					
					if(n1.equals("123") && n2.equals("abc"))
					{
						try 
						{
						     Class.forName("com.mysql.cj.jdbc.Driver");
						     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
							 Statement st = con.createStatement();
							 ResultSet rs =  st.executeQuery("select * from transact");
							 System.out.println("\n Last 3 Transactions are : ");
						     while(rs.next())
						     {
						    	 System.out.println("ID :"+rs.getInt(1)+"Date : "+rs.getDate(2)+" Operation  :"+rs.getString(3)+"Amount  :"+rs.getDouble(4));						    	 
						     }
						}catch(Exception ex)
						{
							ex.printStackTrace();
						}
					}
					else
					{
					     System.out.println("\n Incorrect ID or password");	
					}
					
				}	   
			   });
	   b3.addActionListener(new ActionListener()
	   {
		public void actionPerformed(ActionEvent e)            // login action
		{
			String n1 = t1.getText();
			String n2 = t2.getText();
			
			if(n1.equals("123") && n2.equals("abc"))
			{
				try 
				{
				     Class.forName("com.mysql.cj.jdbc.Driver");
				     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
					 Statement st = con.createStatement();
					 ResultSet rs =  st.executeQuery("select * from balance");
					 System.out.println("\n Remaining Balance : ");
				     while(rs.next())
				     {
				    	 System.out.println("ID  : "+rs.getInt(1)+"   Balance  : "+rs.getDouble(2));						    	 
				     }
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			}
			else
			{
			     System.out.println("\n Incorrect ID or password");	
			}
			
		}	   
	   });

	   
}
	public static void main(String[] args)
	{
		new Miniproject2demo();                                       // invoke the constructor
	}
	public void actionPerformed(ActionEvent e) 
	{
		
	}

}
