package com.rmidemo;
import java.awt.*;
import javax.swing.*;
import java.awt.geom.*;
import java.awt.event.*;

public class MyImagedemo extends JFrame 
{
  	public static void main(String[] args) 
	{ 
  		JFrame f2 = new Imagedemo3();
   		f2.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
   		f2.setVisible(true);
	}
}

  class Imagedemo3 extends JFrame
  { 
	  Imagedemo3()
	  {
		setTitle("Image Demo");
		setSize(500,500);
		i1 = new Imagedemo2(); 
		add(i1,BorderLayout.CENTER);
		JPanel p1 = new JPanel();
        JButton b1,b2,b3,b4;
        b1 = new JButton("HYD"); b2 = new JButton("JK");
        b3 = new JButton("UP");b4 = new JButton("DELHI");
        p1.add(b1);p1.add(b2);p1.add(b3);p1.add(b4);
        add(p1,BorderLayout.NORTH);
         
		b1.addActionListener(new ActionListener() 
		   {
			   public void actionPerformed(ActionEvent e)
			   {
                i1.setImage1();					
			   }
		     
		});
		b2.addActionListener(new ActionListener() 
		   {
			   public void actionPerformed(ActionEvent e)
			   {
             i1.setImage2();					
			   }
		     
		});
		b3.addActionListener(new ActionListener() 
		   {
			   public void actionPerformed(ActionEvent e)
			   {
             i1.setImage3();					
			   }
		     
		});
		b4.addActionListener(new ActionListener() 
		   {
			   public void actionPerformed(ActionEvent e)
			   {
             i1.setImage4();					
			   }
		     
		});
	}
  	private static Imagedemo2 i1;
}
  
  class Imagedemo2 extends JPanel
   {
	  private Image img;
	    Imagedemo2()
	   {   
	       //r1 = new Rectangle2D.Double(100,100,200,200);
	    	t = new AffineTransform();
	   }
	    public void paintComponent(Graphics g)
		   {
		    super.paintComponent(g);
	    	Graphics2D g2 = (Graphics2D)g;
		   	Image img = Toolkit.getDefaultToolkit().getImage(str);
		    AffineTransform t = new AffineTransform(); 
		    g2.scale(0.4,0.4);
		    g2.transform(t);
			g2.drawImage(img,50,60,this);
		   }
	      
	    
	     public void setImage1()
           {
             str = "C:\\Users\\Rohit Sutare\\Desktop\\New folder\\hyd.jpg";       
	    	 repaint();
						   
           }
	      public void setImage2()
          {
	    	  str = "C:\\Users\\Rohit Sutare\\Desktop\\New folder\\jk.jpg";     
                   repaint();
						   
          }
	      public void setImage3()
          {       
	    	  str = "C:\\Users\\Rohit Sutare\\Desktop\\New folder\\up.jpg";     
                   repaint();
						   
          }
	      public void setImage4()
          {
	    	  str = "C:\\Users\\Rohit Sutare\\Desktop\\New folder\\delhi.jpg";          
	    	  repaint();
						   
          }
      private AffineTransform t;
      private String str;
   }
    
	