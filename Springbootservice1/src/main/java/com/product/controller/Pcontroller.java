package com.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.product.service.pservice;

@Controller
public class Pcontroller 
{

	@Autowired
	private pservice ps;
	
	@GetMapping("/")
	  public String productdetails(Model model)
	{
		
		model.addAttribute("product1",ps.getProducts());
		
		return "home";
			
	}
	
}
