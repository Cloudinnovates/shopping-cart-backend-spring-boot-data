package com.mfkara.shoppingcartbackend.service;

import java.util.List;

import com.mfkara.shoppingcartbackend.model.PriceNews;
import com.mfkara.shoppingcartbackend.model.Product;

public interface PriceNewsService {

	public PriceNews getOne(Long id);

	public List<PriceNews> getAll();

	public void addPriceNews(PriceNews priceNews);

	public void notifyDiscount(Product product) throws Exception;
}
