package com.crm.info;

import java.sql.Timestamp;
import java.util.Date;

/**
 * PublicNews entity. @author MyEclipse Persistence Tools
 */

public class PublicNews implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployee;
	private HrDepartment hrDepartment;
	private String newsTitle;
	private String newsContent;
	private Timestamp newsTime;
	private Integer isdelete;
	private Date deleteTime;
	private Integer viewNum;

	// Constructors

	/** default constructor */
	public PublicNews() {
	}

	/** full constructor */
	public PublicNews(HrEmployee hrEmployee, HrDepartment hrDepartment,
			String newsTitle, String newsContent, Timestamp newsTime,
			Integer isdelete, Date deleteTime, Integer viewNum) {
		this.hrEmployee = hrEmployee;
		this.hrDepartment = hrDepartment;
		this.newsTitle = newsTitle;
		this.newsContent = newsContent;
		this.newsTime = newsTime;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.viewNum = viewNum;
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

	public HrDepartment getHrDepartment() {
		return this.hrDepartment;
	}

	public void setHrDepartment(HrDepartment hrDepartment) {
		this.hrDepartment = hrDepartment;
	}

	public String getNewsTitle() {
		return this.newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsContent() {
		return this.newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public Timestamp getNewsTime() {
		return this.newsTime;
	}

	public void setNewsTime(Timestamp newsTime) {
		this.newsTime = newsTime;
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

	public Integer getViewNum() {
		return this.viewNum;
	}

	public void setViewNum(Integer viewNum) {
		this.viewNum = viewNum;
	}

}