package com.mfkara.shoppingcartbackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mfkara.shoppingcartbackend.model.PriceNews;
import com.mfkara.shoppingcartbackend.model.PriceNews2;
import com.mfkara.shoppingcartbackend.service.PriceNewsService;
import com.mfkara.shoppingcartbackend.service.ProductService;

@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
public class PriceNewsController {

	@Autowired
	PriceNewsService priceNewsService;
	@Autowired
	ProductService productService;

	@RequestMapping(value = "/priceNews", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public void addPriceNews(@RequestBody PriceNews2 priceNews) {

		PriceNews pN = new PriceNews();
		pN.setEmail(priceNews.getEmail());
		pN.setProduct(productService.getOne(priceNews.getProduct()));
		priceNewsService.addPriceNews(pN);

		System.out.println(priceNews);
	}

}
