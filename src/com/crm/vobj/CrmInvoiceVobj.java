package com.crm.vobj;

import java.util.Date;

public class CrmInvoiceVobj {
	private Integer customerId,departmentId,employeeId,invoicetype;
	private Date startdate,enddate;
	private String num;
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public Integer getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public Integer getInvoicetype() {
		return invoicetype;
	}
	public void setInvoicetype(Integer invoicetype) {
		this.invoicetype = invoicetype;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
}
