package com.crm.info;

import java.util.Date;

/**
 * PersonalEvent entity. @author MyEclipse Persistence Tools
 */

public class PersonalEvent implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployee;
	private String title;
	private Date createdate;

	// Constructors

	/** default constructor */
	public PersonalEvent() {
	}

	/** full constructor */
	public PersonalEvent(HrEmployee hrEmployee, String title, Date createdate) {
		this.hrEmployee = hrEmployee;
		this.title = title;
		this.createdate = createdate;
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

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

}