package com.mfkara.shoppingcartbackend;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ShoppingCartBackendApplication {

	private static final Logger log = LoggerFactory.getLogger(ShoppingCartBackendApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(ShoppingCartBackendApplication.class, args);
	}

}
