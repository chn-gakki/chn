package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * ParamCity entity. @author MyEclipse Persistence Tools
 */

public class ParamCity implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployeeByCreateId;
	private HrEmployee hrEmployeeByUpdateId;
	private Integer parentid;
	private String city;
	private Date createDate;
	private Date updateDate;
	private Set crmCustomersForCityId = new HashSet(0);
	private Set crmCustomersForProvincesId = new HashSet(0);

	// Constructors

	/** default constructor */
	public ParamCity() {
	}

	/** full constructor */
	public ParamCity(HrEmployee hrEmployeeByCreateId,
			HrEmployee hrEmployeeByUpdateId, Integer parentid, String city,
			Date createDate, Date updateDate, Set crmCustomersForCityId,
			Set crmCustomersForProvincesId) {
		this.hrEmployeeByCreateId = hrEmployeeByCreateId;
		this.hrEmployeeByUpdateId = hrEmployeeByUpdateId;
		this.parentid = parentid;
		this.city = city;
		this.createDate = createDate;
		this.updateDate = updateDate;
		this.crmCustomersForCityId = crmCustomersForCityId;
		this.crmCustomersForProvincesId = crmCustomersForProvincesId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public HrEmployee getHrEmployeeByCreateId() {
		return this.hrEmployeeByCreateId;
	}

	public void setHrEmployeeByCreateId(HrEmployee hrEmployeeByCreateId) {
		this.hrEmployeeByCreateId = hrEmployeeByCreateId;
	}

	public HrEmployee getHrEmployeeByUpdateId() {
		return this.hrEmployeeByUpdateId;
	}

	public void setHrEmployeeByUpdateId(HrEmployee hrEmployeeByUpdateId) {
		this.hrEmployeeByUpdateId = hrEmployeeByUpdateId;
	}

	public Integer getParentid() {
		return this.parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Set getCrmCustomersForCityId() {
		return this.crmCustomersForCityId;
	}

	public void setCrmCustomersForCityId(Set crmCustomersForCityId) {
		this.crmCustomersForCityId = crmCustomersForCityId;
	}

	public Set getCrmCustomersForProvincesId() {
		return this.crmCustomersForProvincesId;
	}

	public void setCrmCustomersForProvincesId(Set crmCustomersForProvincesId) {
		this.crmCustomersForProvincesId = crmCustomersForProvincesId;
	}

}