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

	@Autowired
	PriceNewsService priceNewsService;

	@Override
	public Product getOne(Long id) {
		// TODO Auto-generated method stub
		return productRepository.findOne(id);
	}

	@Override
	public List<Product> getAll() {

		List<Product> products = new ArrayList<>();
		for (Product p : productRepository.findAllByOrderByProductIdAsc())
			products.add(p);

		return products;
	}

	@Override
	public List<Product> getProductsByCategory(String SeoUrl) {

		Category category = categoryRepository.findOneBySeoUrl(SeoUrl);
		List<Product> products = new ArrayList<>();
		for (Product p : productRepository.findByCategory(category))
			products.add(p);

		return products;
	}

	@Override
	public void addProduct(Product product) {

		boolean discountStatus = false;
		if (product.getProductId() > 0)
			discountStatus = checkDiscount(product);
		productRepository.save(product);
		try {
			if (discountStatus)
				priceNewsService.notifyDiscount(product);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("asd");
		}
	}

	private boolean checkDiscount(Product product) {
		Product p = productRepository.findOne(product.getProductId());
		if (p.getUnitPrice() - product.getUnitPrice() > 0)
			return true;
		return false;
	}

}
