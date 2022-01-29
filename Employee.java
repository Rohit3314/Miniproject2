package com.miniproject;
import java.awt.*;
import java.awt.event.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Employee extends JFrame implements ActionListener
{
	JFrame f1;                                     // declaration
	JPanel p1;
	JLabel l1,l2;
	JTextField t1,t2;
	JButton b1;

	Employee()
	{
		f1 = new JFrame("Employee");                          // initialization
		p1 = new JPanel();
		l1 = new JLabel("Username :"); l2 = new JLabel("Password :"); 
		t1 = new JTextField("0",10); t2 = new JTextField("0",10);
		b1 = new JButton("Show");
		
		p1.add(l1); p1.add(t1); p1.add(l2); p1.add(t2);
		p1.add(b1);
		f1.add(p1);
		
	    f1.setSize(200,200);                                     // UI
	    f1.setVisible(true);
	    
	    b1.addActionListener(new ActionListener()
	    		{

			public void actionPerformed(ActionEvent e)
				{
					try
					{
						String s1 = t1.getText();
						String s2 = t2.getText();
						
						if(s1.equals("101") && s2.equals("abc"))
						{
							try
							{
							    Class.forName("com.mysql.cj.jdbc.Driver"); 
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","12345");
								Statement st = con.createStatement();
								ResultSet rs = st.executeQuery("select * from employee_data");
						        
								while(rs.next())
								{
								System.out.println("ID :"+rs.getInt(1)+"  Name : "
								+rs.getString(2)+"  Add :"+rs.getString(3)+" Contact :"+rs.getLong(4)+
								"  Email :"+rs.getString(5));
									
								}
							}catch(Exception ae)
							{
								ae.printStackTrace();
							}
							
						}
						else
						{
							System.out.println("Incorrect ID/pswd");
						}
												
					}catch(Exception ex)
					{
						ex.printStackTrace();
					}
						
				}
	    	
	    		});
	
	}
	public static void main(String args[])
	{
		new Employee();
	}

	@Override
	public void actionPerformed(ActionEvent e) 
	{
		
		
	}
}
