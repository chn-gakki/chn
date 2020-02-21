package com.crm.info;

/**
 * MailAttachment entity. @author MyEclipse Persistence Tools
 */

public class MailAttachment implements java.io.Serializable {

	// Fields

	private Integer id;
	private MailFlow mailFlow;
	private String fileUrl;
	private String fileName;
	private String realName;

	// Constructors

	/** default constructor */
	public MailAttachment() {
	}

	/** full constructor */
	public MailAttachment(MailFlow mailFlow, String fileUrl, String fileName,
			String realName) {
		this.mailFlow = mailFlow;
		this.fileUrl = fileUrl;
		this.fileName = fileName;
		this.realName = realName;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public MailFlow getMailFlow() {
		return this.mailFlow;
	}

	public void setMailFlow(MailFlow mailFlow) {
		this.mailFlow = mailFlow;
	}

	public String getFileUrl() {
		return this.fileUrl;
	}

	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}

	public String getFileName() {
		return this.fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

}