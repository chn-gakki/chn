package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * HrPosition entity. @author MyEclipse Persistence Tools
 */

public class HrPosition implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployee;
	private ParamSysparam paramSysparam;
	private String positionName;
	private String positionOrder;
	private Date createDate;
	private Integer isdelete;
	private Date deleteTime;
	private Set hrPosts = new HashSet(0);
	private Set hrEmployees = new HashSet(0);

	// Constructors

	/** default constructor */
	public HrPosition() {
	}

	/** full constructor */
	public HrPosition(HrEmployee hrEmployee, ParamSysparam paramSysparam,
			String positionName, String positionOrder, Date createDate,
			Integer isdelete, Date deleteTime, Set hrPosts, Set hrEmployees) {
		this.hrEmployee = hrEmployee;
		this.paramSysparam = paramSysparam;
		this.positionName = positionName;
		this.positionOrder = positionOrder;
		this.createDate = createDate;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.hrPosts = hrPosts;
		this.hrEmployees = hrEmployees;
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

	public ParamSysparam getParamSysparam() {
		return this.paramSysparam;
	}

	public void setParamSysparam(ParamSysparam paramSysparam) {
		this.paramSysparam = paramSysparam;
	}

	public String getPositionName() {
		return this.positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public String getPositionOrder() {
		return this.positionOrder;
	}

	public void setPositionOrder(String positionOrder) {
		this.positionOrder = positionOrder;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
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

	public Set getHrPosts() {
		return this.hrPosts;
	}

	public void setHrPosts(Set hrPosts) {
		this.hrPosts = hrPosts;
	}

	public Set getHrEmployees() {
		return this.hrEmployees;
	}

	public void setHrEmployees(Set hrEmployees) {
		this.hrEmployees = hrEmployees;
	}

}