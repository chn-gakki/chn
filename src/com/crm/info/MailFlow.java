package com.crm.info;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * MailFlow entity. @author MyEclipse Persistence Tools
 */

public class MailFlow implements java.io.Serializable {

	// Fields

	private Integer id;
	private ParamSysparam paramSysparamByImportant;
	private HrEmployee hrEmployeeBySenderId;
	private ParamSysparam paramSysparamByReciveTypeId;
	private HrEmployee hrEmployeeByReceiveId;
	private String mailTitle;
	private String mailContent;
	private Integer isview;
	private Timestamp viewTime;
	private Timestamp senderTime;
	private Integer isdelete;
	private Date deleteTime;
	private Set mailAttachments = new HashSet(0);

	// Constructors

	/** default constructor */
	public MailFlow() {
	}

	/** full constructor */
	public MailFlow(ParamSysparam paramSysparamByImportant,
			HrEmployee hrEmployeeBySenderId,
			ParamSysparam paramSysparamByReciveTypeId,
			HrEmployee hrEmployeeByReceiveId, String mailTitle,
			String mailContent, Integer isview, Timestamp viewTime,
			Timestamp senderTime, Integer isdelete, Date deleteTime,
			Set mailAttachments) {
		this.paramSysparamByImportant = paramSysparamByImportant;
		this.hrEmployeeBySenderId = hrEmployeeBySenderId;
		this.paramSysparamByReciveTypeId = paramSysparamByReciveTypeId;
		this.hrEmployeeByReceiveId = hrEmployeeByReceiveId;
		this.mailTitle = mailTitle;
		this.mailContent = mailContent;
		this.isview = isview;
		this.viewTime = viewTime;
		this.senderTime = senderTime;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.mailAttachments = mailAttachments;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ParamSysparam getParamSysparamByImportant() {
		return this.paramSysparamByImportant;
	}

	public void setParamSysparamByImportant(
			ParamSysparam paramSysparamByImportant) {
		this.paramSysparamByImportant = paramSysparamByImportant;
	}

	public HrEmployee getHrEmployeeBySenderId() {
		return this.hrEmployeeBySenderId;
	}

	public void setHrEmployeeBySenderId(HrEmployee hrEmployeeBySenderId) {
		this.hrEmployeeBySenderId = hrEmployeeBySenderId;
	}

	public ParamSysparam getParamSysparamByReciveTypeId() {
		return this.paramSysparamByReciveTypeId;
	}

	public void setParamSysparamByReciveTypeId(
			ParamSysparam paramSysparamByReciveTypeId) {
		this.paramSysparamByReciveTypeId = paramSysparamByReciveTypeId;
	}

	public HrEmployee getHrEmployeeByReceiveId() {
		return this.hrEmployeeByReceiveId;
	}

	public void setHrEmployeeByReceiveId(HrEmployee hrEmployeeByReceiveId) {
		this.hrEmployeeByReceiveId = hrEmployeeByReceiveId;
	}

	public String getMailTitle() {
		return this.mailTitle;
	}

	public void setMailTitle(String mailTitle) {
		this.mailTitle = mailTitle;
	}

	public String getMailContent() {
		return this.mailContent;
	}

	public void setMailContent(String mailContent) {
		this.mailContent = mailContent;
	}

	public Integer getIsview() {
		return this.isview;
	}

	public void setIsview(Integer isview) {
		this.isview = isview;
	}

	public Timestamp getViewTime() {
		return this.viewTime;
	}

	public void setViewTime(Timestamp viewTime) {
		this.viewTime = viewTime;
	}

	public Timestamp getSenderTime() {
		return this.senderTime;
	}

	public void setSenderTime(Timestamp senderTime) {
		this.senderTime = senderTime;
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

	public Set getMailAttachments() {
		return this.mailAttachments;
	}

	public void setMailAttachments(Set mailAttachments) {
		this.mailAttachments = mailAttachments;
	}

}