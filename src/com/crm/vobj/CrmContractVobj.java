package com.crm.vobj;

import java.util.Date;

public class CrmContractVobj {
	private Date endSigndate,startSigndate;
	private String contractName;
	private Integer employeeId,departmentId,customerId;
	public Date getEndSigndate() {
		return endSigndate;
	}
	public void setEndSigndate(Date endSigndate) {
		this.endSigndate = endSigndate;
	}
	public Date getStartSigndate() {
		return startSigndate;
	}
	public void setStartSigndate(Date startSigndate) {
		this.startSigndate = startSigndate;
	}
	public String getContractName() {
		return contractName;
	}
	public void setContractName(String contractName) {
		this.contractName = contractName;
	}
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public Integer getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}
}
