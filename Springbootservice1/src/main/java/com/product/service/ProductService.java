package com.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.model.Productdata;
import com.product.repository.productrepository;

@Service
public class ProductService implements pservice

{
     
	@Autowired
	private productrepository pr;

	@Override
	public List<Productdata> getProducts()
	{
		return pr.findAll();
	}
	
	
}
