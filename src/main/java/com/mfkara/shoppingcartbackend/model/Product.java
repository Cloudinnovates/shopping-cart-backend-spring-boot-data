package com.mfkara.shoppingcartbackend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long productId;

	@ManyToOne()
	@JoinColumn(name = "categoryId", nullable = false)
	private Category category;

	private String quantityPerUnit;

	private String productName;

	private int unitPrice;

	private int unitsInStock;

	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(Category category, String quantityPerUnit, String productName, int unitPrice, int unitsInStock) {
		super();
		this.category = category;
		this.quantityPerUnit = quantityPerUnit;
		this.productName = productName;
		this.unitPrice = unitPrice;
		this.unitsInStock = unitsInStock;
	}

	public int getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(int unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getQuantityPerUnit() {
		return quantityPerUnit;
	}

	public void setQuantityPerUnit(String quantityPerUnit) {
		this.quantityPerUnit = quantityPerUnit;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	@Override
	public String toString() {
		return "Product [unitsInStock=" + unitsInStock + ", category=" + category + ", quantityPerUnit="
				+ quantityPerUnit + ", productName=" + productName + ", unitPrice=" + unitPrice + ", productId="
				+ productId + "]";
	}

}
