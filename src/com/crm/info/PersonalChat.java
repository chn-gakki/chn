package com.crm.info;

import java.sql.Timestamp;

/**
 * PersonalChat entity. @author MyEclipse Persistence Tools
 */

public class PersonalChat implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer sendEmp;
	private Integer receiveEmp;
	private String content;
	private Timestamp sendDatetime;

	// Constructors

	/** default constructor */
	public PersonalChat() {
	}

	/** full constructor */
	public PersonalChat(Integer sendEmp, Integer receiveEmp, String content,
			Timestamp sendDatetime) {
		this.sendEmp = sendEmp;
		this.receiveEmp = receiveEmp;
		this.content = content;
		this.sendDatetime = sendDatetime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSendEmp() {
		return this.sendEmp;
	}

	public void setSendEmp(Integer sendEmp) {
		this.sendEmp = sendEmp;
	}

	public Integer getReceiveEmp() {
		return this.receiveEmp;
	}

	public void setReceiveEmp(Integer receiveEmp) {
		this.receiveEmp = receiveEmp;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getSendDatetime() {
		return this.sendDatetime;
	}

	public void setSendDatetime(Timestamp sendDatetime) {
		this.sendDatetime = sendDatetime;
	}

}