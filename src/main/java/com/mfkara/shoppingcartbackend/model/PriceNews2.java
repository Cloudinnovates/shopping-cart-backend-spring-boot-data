package com.mfkara.shoppingcartbackend.model;

public class PriceNews2 {

	private Long Id;
	private String email;
	private Long product;

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getProduct() {
		return product;
	}

	public void setProduct(Long product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "PriceNews [Id=" + Id + ", email=" + email + ", product=" + product + "]";
	}

}
