package com.product.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.product.model.Productdata;

@Repository
public interface productrepository extends JpaRepository<Productdata,Integer>
{

}
