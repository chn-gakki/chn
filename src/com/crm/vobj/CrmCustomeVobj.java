package com.crm.vobj;

import java.util.Date;

public class CrmCustomeVobj {
	private String customer;//公司名
	private Integer departmentId;//部门ID
	private Integer employeeId;//员工ID
	private String tel;//电话
	private Date createDateStart;//创建起始时间
	private Date createDateEnd;//创建结束时间
	private Integer provincesId;//省份ID
	private Integer cityId;//城市ID
	private Date lastfollowStart;//跟进起始时间
	private Date lastfollowEnd;//跟进结束时间
	private Integer customertypeId;//员工类型ID
	private Integer customerlevelId;//员工类别ID
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getCreateDateStart() {
		return createDateStart;
	}
	public void setCreateDateStart(Date createDateStart) {
		this.createDateStart = createDateStart;
	}
	public Date getCreateDateEnd() {
		return createDateEnd;
	}
	public void setCreateDateEnd(Date createDateEnd) {
		this.createDateEnd = createDateEnd;
	}
	public Integer getProvincesId() {
		return provincesId;
	}
	public void setProvincesId(Integer provincesId) {
		this.provincesId = provincesId;
	}
	public Integer getCityId() {
		return cityId;
	}
	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}
	public Date getLastfollowStart() {
		return lastfollowStart;
	}
	public void setLastfollowStart(Date lastfollowStart) {
		this.lastfollowStart = lastfollowStart;
	}
	public Date getLastfollowEnd() {
		return lastfollowEnd;
	}
	public void setLastfollowEnd(Date lastfollowEnd) {
		this.lastfollowEnd = lastfollowEnd;
	}
	public Integer getCustomertypeId() {
		return customertypeId;
	}
	public void setCustomertypeId(Integer customertypeId) {
		this.customertypeId = customertypeId;
	}
	public Integer getCustomerlevelId() {
		return customerlevelId;
	}
	public void setCustomerlevelId(Integer customerlevelId) {
		this.customerlevelId = customerlevelId;
	}
	
}
