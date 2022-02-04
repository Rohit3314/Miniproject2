package com.example2;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.JFrame;
import java.awt.*;
import java.awt.geom.*;
public class TransformDemo1 extends JFrame
{
	public static void main(String[] args) 
	{
	     JFrame frame = new TransformDemo2();
	     frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	     frame.setVisible(true);
	}
}

class TransformDemo2 extends JFrame
 {
	 TransformDemo2()
	{
	setTitle("Transformation");
	setSize(400,400);
	demo3 = new TransformDemo3();
	JButton b1 = new JButton("Rotate");
	JButton b2 = new JButton("Translate");
	JButton b3 = new JButton("Scale");
	JButton b4 = new JButton("Shear");
	JPanel p1 = new JPanel();
	
	p1.add(b1); p1.add(b2); p1.add(b3); p1.add(b4);
	add(p1,BorderLayout.NORTH);
	add(demo3,BorderLayout.CENTER);
	b1.addActionListener(new ActionListener()
	{
	public void actionPerformed(ActionEvent e)
	{
		demo3.setRotate();	
	}	
	});
	b2.addActionListener(new ActionListener()
	{
	public void actionPerformed(ActionEvent e)
	{
			demo3.setTranslate();		
	}	
	});
	b3.addActionListener(new ActionListener()
	{
	public void actionPerformed(ActionEvent e)
	{
			demo3.setScale();		
	}	
	});
	b4.addActionListener(new ActionListener()
	{
	public void actionPerformed(ActionEvent e)
	{
	         demo3.setShear();				
	}	
	});
	
	}
	private  TransformDemo3 demo3;
 }


 class TransformDemo3 extends JPanel
 {
     	 TransformDemo3()
     	 {
     		 square = new Rectangle2D.Double(-50,-50,100,100);
     		 t = new AffineTransform();
     	 }
    public void paintComponent(Graphics g)
    {
    	super.paintComponent(g);
    	Graphics2D  g2 = (Graphics2D)g;
    	g2.translate(getHeight()/2,getWidth()/2);
    	g2.setPaint(Color.BLUE);
    	g2.draw(square);
    	g2.transform(t);
    	g2.setPaint(Color.RED);
    	g2.draw(square);
    }	 
    public void setRotate()
    {
    	t.setToRotation(Math.toRadians(30));
    	repaint();
    }
    public void setTranslate()
    {
    	t.setToTranslation(20,20);
    	repaint();
    }
    
    public void setScale()
    {
    	t.setToScale(2.0,2.0);
    	repaint();
    }
    public void setShear()
    {
    	t.setToShear(0.3,0);
    	repaint();
    }
	 private Rectangle2D square;
	 private AffineTransform t; 
 }
