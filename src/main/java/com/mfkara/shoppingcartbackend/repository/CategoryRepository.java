package com.mfkara.shoppingcartbackend.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.mfkara.shoppingcartbackend.model.Category;

public interface CategoryRepository  extends CrudRepository<Category, Long>{
	
	@Query("select c from Category c where c.SeoUrl=:seoUrl")
	Category findOneBySeoUrl(@Param("seoUrl")String seoUrl);
	
	

}
