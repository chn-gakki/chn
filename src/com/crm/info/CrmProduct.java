package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * CrmProduct entity. @author MyEclipse Persistence Tools
 */

public class CrmProduct implements java.io.Serializable {

	// Fields

	private Integer productId;
	private CrmProductCategory crmProductCategory;
	private String productName;
	private String specifications;
	private String status;
	private String unit;
	private String remarks;
	private Double price;
	private Integer isdelete;
	private Date deleteTime;
	private Set crmOrderDetailses = new HashSet(0);

	// Constructors

	/** default constructor */
	public CrmProduct() {
	}

	/** full constructor */
	public CrmProduct(CrmProductCategory crmProductCategory,
			String productName, String specifications, String status,
			String unit, String remarks, Double price, Integer isdelete,
			Date deleteTime, Set crmOrderDetailses) {
		this.crmProductCategory = crmProductCategory;
		this.productName = productName;
		this.specifications = specifications;
		this.status = status;
		this.unit = unit;
		this.remarks = remarks;
		this.price = price;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.crmOrderDetailses = crmOrderDetailses;
	}

	// Property accessors

	public Integer getProductId() {
		return this.productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public CrmProductCategory getCrmProductCategory() {
		return this.crmProductCategory;
	}

	public void setCrmProductCategory(CrmProductCategory crmProductCategory) {
		this.crmProductCategory = crmProductCategory;
	}

	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getSpecifications() {
		return this.specifications;
	}

	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUnit() {
		return this.unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getIsdelete() {
		return this.isdelete;
	}

	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}

	public Date getDeleteTime() {
		return this.deleteTime;
	}

	public void setDeleteTime(Date deleteTime) {
		this.deleteTime = deleteTime;
	}

	public Set getCrmOrderDetailses() {
		return this.crmOrderDetailses;
	}

	public void setCrmOrderDetailses(Set crmOrderDetailses) {
		this.crmOrderDetailses = crmOrderDetailses;
	}

}