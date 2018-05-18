package com.mfkara.shoppingcartbackend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long CategoryId;

	private String SeoUrl;

	private String CategoryName;

	/*
	 * @OneToMany(fetch = FetchType.LAZY, mappedBy = "category", cascade =
	 * CascadeType.ALL) private Set<Product> products;
	 * 
	 */
	public Category() {
		// TODO Auto-generated constructor stub
	}

	public Category(String seoUrl, String categoryName) {
		super();
		SeoUrl = seoUrl;
		CategoryName = categoryName;
	}

	/*
	 * public Set<Product> getProducts() { return products; }
	 * 
	 * public void setProducts(Set<Product> products) { this.products = products; }
	 */

	public String getSeoUrl() {
		return SeoUrl;
	}

	public void setSeoUrl(String SeoUrl) {
		this.SeoUrl = SeoUrl;
	}

	public Long getCategoryId() {
		return CategoryId;
	}

	public void setCategoryId(Long CategoryId) {
		this.CategoryId = CategoryId;
	}

	public String getCategoryName() {
		return CategoryName;
	}

	public void setCategoryName(String CategoryName) {
		this.CategoryName = CategoryName;
	}

	@Override
	public String toString() {
		return "Category [CategoryId=" + CategoryId + ", SeoUrl=" + SeoUrl + ", CategoryName=" + CategoryName + "]";
	}

}