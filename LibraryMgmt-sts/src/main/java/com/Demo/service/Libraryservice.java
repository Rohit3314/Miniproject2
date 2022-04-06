package com.Demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Demo.model.Librarymodel;
import com.Demo.repository.Libraryrepository;

@Service
public class Libraryservice
{

	@Autowired
	private Libraryrepository libraryrepo;
	
	public Librarymodel updateService(Librarymodel book)      // service to update a book entry
	{
		return libraryrepo.save(book);
	}

    public Librarymodel insertService(Librarymodel book1)
    {
	   return libraryrepo.save(book1);
    }

    public void deleteService(Librarymodel id)
    {
	  libraryrepo.delete(id);
    }
    
    public List<Librarymodel> fetchService()
    {
    	return libraryrepo.findAll();
    }
}
