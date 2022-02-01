package com.calci;
import java.awt.*;
import java.awt.Color.*;
import java.awt.Graphics.*;
import java.awt.Graphics2D.*;
import java.awt.Image.*;
import java.awt.event.MouseAdapter.*;
import java.awt.event.MouseMotionAdapter.*;
import java.awt.event.*;
import java.awt.event.MouseEvent.*;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class Paint 
{
	public static void main(String[] args) 
	{
		Gui g1 = new Gui();
        g1.setVisible(true);
	}

}

class Gui extends JComponent implements ActionListener
{
	
	JButton red,green,blue,clear;
	Graphics2D draw;
	Image img;
	int x,y,prevX,prevY;
	Gui()
	{
		JFrame f1 = new JFrame("Paint");
		Container c1 = f1.getContentPane();
		c1.setLayout(new BorderLayout());
		setDoubleBuffered(false);
		JPanel p1 = new JPanel();
		c1.add(p1,BorderLayout.SOUTH);
		p1.setPreferredSize(new Dimension(32,68));
		p1.setMaximumSize(new Dimension(32,68));
		p1.setMinimumSize(new Dimension(32,60));
		
		red = new JButton("Red");
		green = new JButton("Green");
		blue = new JButton("Blue");
		clear = new JButton("Clear");
		
	//	red.setPreferredSize(new Dimension(50,16));
	//	green.setPreferredSize(new Dimension(50,16));
	//	blue.setPreferredSize(new Dimension(50,16));

	    p1.add(red); p1.add(green); p1.add(blue); p1.add(clear);
	    
	    p1.setVisible(true);
	    red.addActionListener(this);
	    green.addActionListener(this);
	    blue.addActionListener(this);
	    clear.addActionListener(this);
	
	    f1.setSize(500,500);
	    f1.setVisible(true);
	    
	    addMouseListener(new MouseAdapter()
	    {
	    	public void mousePressed(MouseEvent e)
	    	{
	    		prevX = e.getX();
	    		prevY = e.getY();
	    	}
	    });
	    
	    addMouseMotionListener(new MouseMotionAdapter()
	    		{
	    	       public void mouseDragged(MouseEvent e)
	    	       {
	    	    	   x = e.getX();
	    	    	   y = e.getY();
	    	    	   draw.drawLine(prevX,prevY,x,y);
	    	    	   repaint();
	    	    	   prevX = x;
	    	    	   prevY = y;
	    	    	   
	    	       }
	    	
	    		});
	}
	    public void paintComponent(Graphics g)
	    {
	       if(img == null)
	       {
	            img = createImage(getSize().width,getSize().height);   	   
	    	    draw = (Graphics2D)img.getGraphics();
	    	    draw.setRenderingHint(RenderingHints.KEY_ANTIALIASING,RenderingHints.VALUE_ANTIALIAS_ON);
	    	    draw.setPaint(Color.WHITE);
	    	    draw.fillRect(0,0,getSize().width,getSize().height);
	    	    draw.setPaint(Color.BLACK);
	    	    repaint();
	       }
	       g.drawImage(img,0,0,null);
	    }
	 		
	public void actionPerformed1(ActionEvent e) 
	{
		if(e.getSource()==red)
		{
			draw.setPaint(Color.RED);
			repaint();
		}
		if(e.getSource()==green)
		{
			draw.setPaint(Color.GREEN);
			repaint();
		}
		if(e.getSource()==blue)
		{
			draw.setPaint(Color.BLUE);
			repaint();
		}
		if(e.getSource()==clear)
		{
			    draw.setPaint(Color.WHITE);
	    	    draw.fillRect(0,0,getSize().width,getSize().height);
	    	    draw.setPaint(Color.BLACK);
	    	    repaint();
		}	
	}
	public void actionPerformed(ActionEvent e)
	{
	}
}
