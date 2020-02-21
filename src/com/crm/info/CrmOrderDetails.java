package com.crm.info;

/**
 * CrmOrderDetails entity. @author MyEclipse Persistence Tools
 */

public class CrmOrderDetails implements java.io.Serializable {

	// Fields

	private Integer id;
	private CrmProduct crmProduct;
	private CrmOrder crmOrder;
	private Double price;
	private Integer quantity;
	private String unit;
	private Double amount;

	// Constructors

	/** default constructor */
	public CrmOrderDetails() {
	}

	/** full constructor */
	public CrmOrderDetails(CrmProduct crmProduct, CrmOrder crmOrder,
			Double price, Integer quantity, String unit, Double amount) {
		this.crmProduct = crmProduct;
		this.crmOrder = crmOrder;
		this.price = price;
		this.quantity = quantity;
		this.unit = unit;
		this.amount = amount;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public CrmProduct getCrmProduct() {
		return this.crmProduct;
	}

	public void setCrmProduct(CrmProduct crmProduct) {
		this.crmProduct = crmProduct;
	}

	public CrmOrder getCrmOrder() {
		return this.crmOrder;
	}

	public void setCrmOrder(CrmOrder crmOrder) {
		this.crmOrder = crmOrder;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getUnit() {
		return this.unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public Double getAmount() {
		return this.amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

}