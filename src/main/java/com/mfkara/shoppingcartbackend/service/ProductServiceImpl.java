package com.mfkara.shoppingcartbackend.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mfkara.shoppingcartbackend.model.Category;
import com.mfkara.shoppingcartbackend.model.Product;
import com.mfkara.shoppingcartbackend.repository.CategoryRepository;
import com.mfkara.shoppingcartbackend.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository productRepository;
	@Autowired
	CategoryRepository categoryRepository;

	@Override
	public Product getOne(Long id) {
		// TODO Auto-generated method stub
		return productRepository.findOne(id);
	}

	@Override
	public List<Product> getAll() {

		List<Product> products = new ArrayList<>();
		for (Product p : productRepository.findAll())
			products.add(p);

		return products;
	}

	@Override
	public List<Product> getProductsByCategory(String SeoUrl) {
		
		Category category=categoryRepository.findOneBySeoUrl(SeoUrl);
		List<Product> products = new ArrayList<>();
		for (Product p : productRepository.findByCategory(category))
			products.add(p);

		return products;
	}

}
