package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * HrPost entity. @author MyEclipse Persistence Tools
 */

public class HrPost implements java.io.Serializable {

	// Fields

	private Integer postId;
	private HrPosition hrPosition;
	private HrEmployee hrEmployee;
	private HrDepartment hrDepartment;
	private String postName;
	private String positionOrder;
	private String postDescript;
	private Integer isdelete;
	private Date deleteTime;
	private Set hrEmployees = new HashSet(0);

	// Constructors

	/** default constructor */
	public HrPost() {
	}

	/** full constructor */
	public HrPost(HrPosition hrPosition, HrEmployee hrEmployee,
			HrDepartment hrDepartment, String postName, String positionOrder,
			String postDescript, Integer isdelete, Date deleteTime,
			Set hrEmployees) {
		this.hrPosition = hrPosition;
		this.hrEmployee = hrEmployee;
		this.hrDepartment = hrDepartment;
		this.postName = postName;
		this.positionOrder = positionOrder;
		this.postDescript = postDescript;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.hrEmployees = hrEmployees;
	}

	// Property accessors

	public Integer getPostId() {
		return this.postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}

	public HrPosition getHrPosition() {
		return this.hrPosition;
	}

	public void setHrPosition(HrPosition hrPosition) {
		this.hrPosition = hrPosition;
	}

	public HrEmployee getHrEmployee() {
		return this.hrEmployee;
	}

	public void setHrEmployee(HrEmployee hrEmployee) {
		this.hrEmployee = hrEmployee;
	}

	public HrDepartment getHrDepartment() {
		return this.hrDepartment;
	}

	public void setHrDepartment(HrDepartment hrDepartment) {
		this.hrDepartment = hrDepartment;
	}

	public String getPostName() {
		return this.postName;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}

	public String getPositionOrder() {
		return this.positionOrder;
	}

	public void setPositionOrder(String positionOrder) {
		this.positionOrder = positionOrder;
	}

	public String getPostDescript() {
		return this.postDescript;
	}

	public void setPostDescript(String postDescript) {
		this.postDescript = postDescript;
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

	public Set getHrEmployees() {
		return this.hrEmployees;
	}

	public void setHrEmployees(Set hrEmployees) {
		this.hrEmployees = hrEmployees;
	}

}