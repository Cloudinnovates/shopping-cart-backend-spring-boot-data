package com.mfkara.shoppingcartbackend.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.mfkara.shoppingcartbackend.model.Category;
import com.mfkara.shoppingcartbackend.model.Product;

public interface ProductRepository extends CrudRepository<Product, Long>{

	List<Product> findByCategory(Category category);
}
