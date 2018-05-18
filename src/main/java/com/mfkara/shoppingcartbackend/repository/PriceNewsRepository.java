package com.mfkara.shoppingcartbackend.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.mfkara.shoppingcartbackend.model.PriceNews;
import com.mfkara.shoppingcartbackend.model.Product;

public interface PriceNewsRepository extends CrudRepository<PriceNews, Long> {

	List<PriceNews> findByProduct(Product product);
	//
	// List<Product> findAllByOrderByProductIdAsc();
}
