package com.crm.info;

import java.sql.Timestamp;

/**
 * SysLogin entity. @author MyEclipse Persistence Tools
 */

public class SysLogin implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployee;
	private String title;
	private String empName;
	private Timestamp logintime;

	// Constructors

	/** default constructor */
	public SysLogin() {
	}

	/** full constructor */
	public SysLogin(HrEmployee hrEmployee, String title, String empName,
			Timestamp logintime) {
		this.hrEmployee = hrEmployee;
		this.title = title;
		this.empName = empName;
		this.logintime = logintime;
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

	public String getEmpName() {
		return this.empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public Timestamp getLogintime() {
		return this.logintime;
	}

	public void setLogintime(Timestamp logintime) {
		this.logintime = logintime;
	}

}