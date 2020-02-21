package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * CrmProductCategory entity. @author MyEclipse Persistence Tools
 */

public class CrmProductCategory implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployee;
	private String productCategory;
	private Integer parentid;
	private String productIcon;
	private Integer isdelete;
	private Date deleteTime;
	private Set crmProducts = new HashSet(0);

	// Constructors

	/** default constructor */
	public CrmProductCategory() {
	}

	/** full constructor */
	public CrmProductCategory(HrEmployee hrEmployee, String productCategory,
			Integer parentid, String productIcon, Integer isdelete,
			Date deleteTime, Set crmProducts) {
		this.hrEmployee = hrEmployee;
		this.productCategory = productCategory;
		this.parentid = parentid;
		this.productIcon = productIcon;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.crmProducts = crmProducts;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public HrEmployee getHrEmployee() {
		return this.hrEmployee;
	}

	public void setHrEmployee(HrEmployee hrEmployee) {
		this.hrEmployee = hrEmployee;
	}

	public String getProductCategory() {
		return this.productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public Integer getParentid() {
		return this.parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public String getProductIcon() {
		return this.productIcon;
	}

	public void setProductIcon(String productIcon) {
		this.productIcon = productIcon;
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

	public Set getCrmProducts() {
		return this.crmProducts;
	}

	public void setCrmProducts(Set crmProducts) {
		this.crmProducts = crmProducts;
	}

}