package com.example2;
import java.awt.*;
import java.awt.geom.*;
import javax.swing.JFrame;

public class MyImageExample2 extends Canvas
{
	public void paint(Graphics g)
	{
		Graphics2D  g2 = (Graphics2D)g;
		Image img =Toolkit.getDefaultToolkit().getImage("C:\\Users\\Rohit Sutare\\Desktop\\New folder\\java.png");
        AffineTransform t = new AffineTransform();		 
		t.setToScale(0.3,0.3);
        g2.setTransform(t);
		g2.drawImage(img,50,50,this);
	}
	public static void main(String[] args) 
	{
	     JFrame frame = new JFrame("MyImage");	
	     frame.add(new MyImageExample2());	     
	     frame.setSize(200,200);
	     frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	     frame.setVisible(true);
	}

}
