package com.example2;
import java.awt.*;
import java.awt.event.*;
import java.awt.geom.*;
import java.awt.Graphics;
import javax.swing.*;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class ImageDemo1 extends JFrame 
{
	public static void main(String[] args)
	{
		JFrame frame = new ImageDemo2(); 
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
	}
}
   class ImageDemo2 extends JFrame
   {
	  
	   ImageDemo2()
	   {
       setTitle("ImageDemo");
       setSize(400,400);
	   JButton b1,b2,b3,b4;
	   JPanel p1 = new JPanel();
	   b1 = new JButton("Java"); 
	   b2 = new JButton("Python");
	   b3 = new JButton("Angular");
	   b4 = new JButton("C sharp");
	   p1.add(b1); p1.add(b2); p1.add(b3); p1.add(b4);
	   add(p1,BorderLayout.NORTH);
	   demo3 =new ImageDemo3();
	   add(demo3,BorderLayout.CENTER); 
	   
	   b1.addActionListener(new ActionListener() {
    	public void actionPerformed(ActionEvent e)
    	{
			demo3.setImage1();		
		}	   
	   });
	   
	   b2.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent e) 
		{
			demo3.setImage2();			
		}   
	   });
	   
	   b3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) 
			{
				demo3.setImage3();			
			}   
		   });
	   b4.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) 
			{
				demo3.setImage4();			
			}   
		   });
	   }
	   private static ImageDemo3 demo3;
  }	   
   class ImageDemo3 extends JPanel
   {
	   private Image img;
	   
	   ImageDemo3()
	   {
		   t = new AffineTransform();
	   }
	   public void paintComponent(Graphics g)
	   {
		   super.paintComponent(g);
		   Graphics2D g2 = (Graphics2D)g;
		   img = Toolkit.getDefaultToolkit().getImage(str);
		   AffineTransform t = new AffineTransform();
		   t.setToScale(0.5,0.5);
		   g2.transform(t);
		   g2.drawImage(img,20,30,this);
	   }
	   public void setImage1()
	   {
		   str ="C:\\Users\\Rohit Sutare\\Desktop\\New folder\\java.png";
		   repaint();
	   }
	   public void setImage2()
	   {
		   str ="C:\\Users\\Rohit Sutare\\Desktop\\New folder\\python.png";
		   repaint();
	   }
	   public void setImage3()
	   {
		   str ="C:\\Users\\Rohit Sutare\\Desktop\\New folder\\angular.png";
		   repaint();
	   }
	   public void setImage4()
	   {
		   str ="C:\\Users\\Rohit Sutare\\Desktop\\New folder\\c.png";
		   repaint();
	   }
	  private  String str;
      private AffineTransform t;
   }
   
   