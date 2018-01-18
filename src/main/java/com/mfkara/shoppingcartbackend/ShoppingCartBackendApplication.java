package com.mfkara.shoppingcartbackend;

import org.springframework.beans.factory.annotation.Autowired;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;
import java.io.File;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.mfkara.shoppingcartbackend.model.Category;
import com.mfkara.shoppingcartbackend.model.Product;
import com.mfkara.shoppingcartbackend.repository.CategoryRepository;
import com.mfkara.shoppingcartbackend.repository.ProductRepository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SpringBootApplication
public class ShoppingCartBackendApplication {

	private static final Logger log = LoggerFactory.getLogger(ShoppingCartBackendApplication.class);

	
	public static void main(String[] args) {
		 SpringApplication.run(ShoppingCartBackendApplication.class, args);
	}

	
	 }
