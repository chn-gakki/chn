package com.crm.info;

import java.util.Date;

/**
 * PublicNotice entity. @author MyEclipse Persistence Tools
 */

public class PublicNotice implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployee;
	private HrDepartment hrDepartment;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeTime;
	private Integer viewNum;

	// Constructors

	/** default constructor */
	public PublicNotice() {
	}

	/** full constructor */
	public PublicNotice(HrEmployee hrEmployee, HrDepartment hrDepartment,
			String noticeTitle, String noticeContent, Date noticeTime,
			Integer viewNum) {
		this.hrEmployee = hrEmployee;
		this.hrDepartment = hrDepartment;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeTime = noticeTime;
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

	public String getNoticeTitle() {
		return this.noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return this.noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Date getNoticeTime() {
		return this.noticeTime;
	}

	public void setNoticeTime(Date noticeTime) {
		this.noticeTime = noticeTime;
	}

	public Integer getViewNum() {
		return this.viewNum;
	}

	public void setViewNum(Integer viewNum) {
		this.viewNum = viewNum;
	}

}