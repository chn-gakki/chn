package com.crm.vobj;

import java.sql.Date;

public class CrmOrderVobj {
	private Integer  customerId;
	private Integer FDepId;
	private Integer FEmpId;
	private Date endOrderdate;
	private Date startOrderdate;
	private Integer orderStatus;
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public Date getEndOrderdate() {
		return endOrderdate;
	}
	public Integer getFDepId() {
		return FDepId;
	}
	public void setFDepId(Integer fDepId) {
		FDepId = fDepId;
	}
	public Integer getFEmpId() {
		return FEmpId;
	}
	public void setFEmpId(Integer fEmpId) {
		FEmpId = fEmpId;
	}
	public void setEndOrderdate(Date endOrderdate) {
		this.endOrderdate = endOrderdate;
	}
	public Date getStartOrderdate() {
		return startOrderdate;
	}
	public void setStartOrderdate(Date startOrderdate) {
		this.startOrderdate = startOrderdate;
	}
	public Integer getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(Integer orderStatus) {
		this.orderStatus = orderStatus;
	}
	
}