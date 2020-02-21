package com.crm.vobj;

import java.sql.Date;

public class CrmContactVobj {
	
	private Integer customerId;
	private String cname;
	private String cqq;
	private Date cCreatedateStart;
	private Date cCreatedateEnd;
	private String cmob;

	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCqq() {
		return cqq;
	}
	public void setCqq(String cqq) {
		this.cqq = cqq;
	}
	public Date getcCreatedateStart() {
		return cCreatedateStart;
	}
	public void setcCreatedateStart(Date cCreatedateStart) {
		this.cCreatedateStart = cCreatedateStart;
	}
	public Date getcCreatedateEnd() {
		return cCreatedateEnd;
	}
	public void setcCreatedateEnd(Date cCreatedateEnd) {
		this.cCreatedateEnd = cCreatedateEnd;
	}
	public String getCmob() {
		return cmob;
	}
	public void setCmob(String cmob) {
		this.cmob = cmob;
	}

}
