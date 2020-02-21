package com.crm.info;

import java.sql.Timestamp;
import java.util.Date;

/**
 * PublicChatRoom entity. @author MyEclipse Persistence Tools
 */

public class PublicChatRoom implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployee;
	private HrDepartment hrDepartment;
	private String chatContent;
	private Timestamp chatDatetime;
	private Integer chatIsdelete;
	private Date chatDeletetime;

	// Constructors

	/** default constructor */
	public PublicChatRoom() {
	}

	/** full constructor */
	public PublicChatRoom(HrEmployee hrEmployee, HrDepartment hrDepartment,
			String chatContent, Timestamp chatDatetime, Integer chatIsdelete,
			Date chatDeletetime) {
		this.hrEmployee = hrEmployee;
		this.hrDepartment = hrDepartment;
		this.chatContent = chatContent;
		this.chatDatetime = chatDatetime;
		this.chatIsdelete = chatIsdelete;
		this.chatDeletetime = chatDeletetime;
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

	public String getChatContent() {
		return this.chatContent;
	}

	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}

	public Timestamp getChatDatetime() {
		return this.chatDatetime;
	}

	public void setChatDatetime(Timestamp chatDatetime) {
		this.chatDatetime = chatDatetime;
	}

	public Integer getChatIsdelete() {
		return this.chatIsdelete;
	}

	public void setChatIsdelete(Integer chatIsdelete) {
		this.chatIsdelete = chatIsdelete;
	}

	public Date getChatDeletetime() {
		return this.chatDeletetime;
	}

	public void setChatDeletetime(Date chatDeletetime) {
		this.chatDeletetime = chatDeletetime;
	}

}