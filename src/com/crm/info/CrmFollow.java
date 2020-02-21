package com.crm.info;

import java.util.Date;

/**
 * CrmFollow entity. @author MyEclipse Persistence Tools
 */

public class CrmFollow implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployee;
	private CrmCustomer crmCustomer;
	private ParamSysparam paramSysparam;
	private HrDepartment hrDepartment;
	private String follow;
	private Date followDate;
	private Integer isdelete;
	private Date deleteTime;

	// Constructors

	/** default constructor */
	public CrmFollow() {
	}

	/** minimal constructor */
	public CrmFollow(CrmCustomer crmCustomer) {
		this.crmCustomer = crmCustomer;
	}

	/** full constructor */
	public CrmFollow(HrEmployee hrEmployee, CrmCustomer crmCustomer,
			ParamSysparam paramSysparam, HrDepartment hrDepartment,
			String follow, Date followDate, Integer isdelete, Date deleteTime) {
		this.hrEmployee = hrEmployee;
		this.crmCustomer = crmCustomer;
		this.paramSysparam = paramSysparam;
		this.hrDepartment = hrDepartment;
		this.follow = follow;
		this.followDate = followDate;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
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

	public CrmCustomer getCrmCustomer() {
		return this.crmCustomer;
	}

	public void setCrmCustomer(CrmCustomer crmCustomer) {
		this.crmCustomer = crmCustomer;
	}

	public ParamSysparam getParamSysparam() {
		return this.paramSysparam;
	}

	public void setParamSysparam(ParamSysparam paramSysparam) {
		this.paramSysparam = paramSysparam;
	}

	public HrDepartment getHrDepartment() {
		return this.hrDepartment;
	}

	public void setHrDepartment(HrDepartment hrDepartment) {
		this.hrDepartment = hrDepartment;
	}

	public String getFollow() {
		return this.follow;
	}

	public void setFollow(String follow) {
		this.follow = follow;
	}

	public Date getFollowDate() {
		return this.followDate;
	}

	public void setFollowDate(Date followDate) {
		this.followDate = followDate;
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

}