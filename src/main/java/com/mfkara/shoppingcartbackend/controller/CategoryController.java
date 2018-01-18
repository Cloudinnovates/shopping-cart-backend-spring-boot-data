package com.mfkara.shoppingcartbackend.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mfkara.shoppingcartbackend.model.Category;
import com.mfkara.shoppingcartbackend.model.Product;
import com.mfkara.shoppingcartbackend.repository.CategoryRepository;
import com.mfkara.shoppingcartbackend.repository.ProductRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
public class CategoryController {

	@Autowired
	CategoryRepository categoryRepository;

	@RequestMapping(value = "/categories", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<Category> getAll() {
		List<Category> categories = new ArrayList<>();
		for (Category c : categoryRepository.findAll())
			categories.add(c);
		return categories;

	}
}
