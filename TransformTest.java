package com.calci;
import java.awt.event.*;
import java.awt.*;
import java.awt.geom.*;
import javax.swing.*;
import javax.swing.JFrame;

public class TransformTest 
{
	public static void main(String[] args) 
	{
		JFrame f1 = new TransformTestFrame();
		f1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        f1.setVisible(true);
	}
}

class TransformTestFrame extends JFrame
{
	TransformTestFrame()
	{
		setTitle("Transformation");
		setSize(WIDTH,HEIGHT);
		canvas = new TransferPanel();
		add(canvas,BorderLayout.CENTER);
	    JPanel buttongroup = new JPanel();
	    ButtonGroup group = new ButtonGroup();
	    
	    JRadioButton rotatebutton = new JRadioButton("Rotate",true);
	    buttongroup.add(rotatebutton);
	    group.add(rotatebutton);
	    
	    rotatebutton.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) 
			{
				
				canvas.setRotate();
			}
	 	
	    });
	    
	    JRadioButton translatebutton = new JRadioButton("Translate",true);
	    buttongroup.add(translatebutton);
	    group.add(translatebutton);
	    
	    translatebutton.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) 
			{
				
				canvas.setTranslate();
			}
	 	    	
	    });
	    
	    JRadioButton scalebutton = new JRadioButton("Scale",true);
	    buttongroup.add(scalebutton);
	    group.add(scalebutton);
	    
	    scalebutton.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) 
			{
				
				canvas.setScale();
			}
	 	
	    });
	    
	    JRadioButton shearbutton = new JRadioButton("Shear",true);
	    buttongroup.add(shearbutton);
	    group.add(shearbutton);
	    
	    shearbutton.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) 
			{
				
				canvas.setShear();
			}
	    	    	
	    });
	    
	 add(buttongroup,BorderLayout.NORTH);   
	    
	}
      private TransferPanel canvas;
      private static final int HEIGHT =  300;
      private static final int WIDTH =  300;
}

    class TransferPanel extends JPanel
    {
        TransferPanel()
        {
        	square = new Rectangle2D.Double(-50,-50,100,100);
        	t = new AffineTransform();
        	setRotate();
        }
    	public void paintComponent(Graphics g)
    	{
    		super.paintComponent(g);
    		Graphics2D g2 = (Graphics2D)g;
              g2.translate(getHeight()/2,getWidth()/2);
              g2.setPaint(Color.RED);
              g2.draw(square);
              g2.transform(t);
              g2.setPaint(Color.BLUE);
              g2.draw(square);          
    	}
    	public void setRotate()
    	{
    		t.setToRotation(Math.toRadians(30));
    		repaint();
    	}
    	
    	public void setTranslate()
    	{
    		t.setToTranslation(20,15);
    		repaint();
    	}
    	public void setScale()
    	{
    		t.setToScale(2.0,1.5);
    		repaint();
    	}
    	public void setShear()
    	{
    		t.setToShear(0.2,0);
    		repaint();
    	}
    	
    	private Rectangle2D square;
    	private AffineTransform t;
    }

  
