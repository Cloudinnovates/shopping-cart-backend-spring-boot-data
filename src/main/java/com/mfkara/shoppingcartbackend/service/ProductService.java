package com.mfkara.shoppingcartbackend.service;

import java.util.List;

import com.mfkara.shoppingcartbackend.model.Category;
import com.mfkara.shoppingcartbackend.model.Product;


public interface ProductService {


	public Product getOne(Long id);
	
	public List<Product> getAll();
	
	public List<Product> getProductsByCategory(String SeoUrl);
}
