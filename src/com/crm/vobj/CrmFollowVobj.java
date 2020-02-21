package com.crm.vobj;

import java.util.Date;

public class CrmFollowVobj {
	private Integer customerId,departmentId,employeeId,followtype;
	private Date startfollowdate,endfollowdate;
	private String followcontent;
	public String getFollowcontent() {
		return followcontent;
	}
	public void setFollowcontent(String followcontent) {
		this.followcontent = followcontent;
	}
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
	public Integer getFollowtype() {
		return followtype;
	}
	public void setFollowtype(Integer followtype) {
		this.followtype = followtype;
	}
	public Date getStartfollowdate() {
		return startfollowdate;
	}
	public void setStartfollowdate(Date startfollowdate) {
		this.startfollowdate = startfollowdate;
	}
	public Date getEndfollowdate() {
		return endfollowdate;
	}
	public void setEndfollowdate(Date endfollowdate) {
		this.endfollowdate = endfollowdate;
	}
}
