package com.mfkara.shoppingcartbackend.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mfkara.shoppingcartbackend.model.Category;
import com.mfkara.shoppingcartbackend.repository.CategoryRepository;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryRepository categoryRepository;

	@Override
	public List<Category> getAll() {

		List<Category> categories = new ArrayList<>();
		for (Category c : categoryRepository.findAll())
			categories.add(c);

		return categories;

	}

}
