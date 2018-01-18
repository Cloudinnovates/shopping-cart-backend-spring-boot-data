package com.mfkara.shoppingcartbackend.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mfkara.shoppingcartbackend.model.Category;
import com.mfkara.shoppingcartbackend.model.Product;
import com.mfkara.shoppingcartbackend.service.ProductService;

@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@RequestMapping(value = "/products", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<Product> getAll() {

		List<Product> products = productService.getAll();
		return products;
	}
	
	@RequestMapping(value = "/products/{SeoUrl}", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<Product> getProductsByCategory(@PathVariable("SeoUrl")String SeoUrl) {

		List<Product> products = productService.getProductsByCategory(SeoUrl);
		return products;
	}
	
	@RequestMapping(value = "/product/{productId}", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public Product getProductsById(@PathVariable("productId") Long productId) {

		Product product = productService.getOne(Long.valueOf(productId));
		return product;
	}

}
