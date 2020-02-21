package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * CrmCustomer entity. @author MyEclipse Persistence Tools
 */

public class CrmCustomer implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployeeByEmployeeId;
	private ParamSysparam paramSysparamByCustomertypeId;
	private ParamSysparam paramSysparamByCustomerlevelId;
	private HrEmployee hrEmployeeByCreateId;
	private ParamCity paramCityByCityId;
	private ParamSysparam paramSysparamByCustomersourceId;
	private HrDepartment hrDepartment;
	private ParamSysparam paramSysparamByCustomerindustryId;
	private ParamCity paramCityByProvincesId;
	private String serialnumber;
	private String customer;
	private String address;
	private String tel;
	private String site;
	private String descripe;
	private String remarks;
	private String privatecustomer;
	private Date lastfollow;
	private Date createDate;
	private Integer isdelete;
	private Date deleteTime;
	private Set crmContacts = new HashSet(0);
	private Set crmContracts = new HashSet(0);
	private Set crmInvoices = new HashSet(0);
	private Set crmReceives = new HashSet(0);
	private Set crmFollows = new HashSet(0);
	private Set crmOrders = new HashSet(0);

	// Constructors

	/** default constructor */
	public CrmCustomer() {
	}

	/** full constructor */
	public CrmCustomer(HrEmployee hrEmployeeByEmployeeId,
			ParamSysparam paramSysparamByCustomertypeId,
			ParamSysparam paramSysparamByCustomerlevelId,
			HrEmployee hrEmployeeByCreateId, ParamCity paramCityByCityId,
			ParamSysparam paramSysparamByCustomersourceId,
			HrDepartment hrDepartment,
			ParamSysparam paramSysparamByCustomerindustryId,
			ParamCity paramCityByProvincesId, String serialnumber,
			String customer, String address, String tel, String site,
			String descripe, String remarks, String privatecustomer,
			Date lastfollow, Date createDate, Integer isdelete,
			Date deleteTime, Set crmContacts, Set crmContracts,
			Set crmInvoices, Set crmReceives, Set crmFollows, Set crmOrders) {
		this.hrEmployeeByEmployeeId = hrEmployeeByEmployeeId;
		this.paramSysparamByCustomertypeId = paramSysparamByCustomertypeId;
		this.paramSysparamByCustomerlevelId = paramSysparamByCustomerlevelId;
		this.hrEmployeeByCreateId = hrEmployeeByCreateId;
		this.paramCityByCityId = paramCityByCityId;
		this.paramSysparamByCustomersourceId = paramSysparamByCustomersourceId;
		this.hrDepartment = hrDepartment;
		this.paramSysparamByCustomerindustryId = paramSysparamByCustomerindustryId;
		this.paramCityByProvincesId = paramCityByProvincesId;
		this.serialnumber = serialnumber;
		this.customer = customer;
		this.address = address;
		this.tel = tel;
		this.site = site;
		this.descripe = descripe;
		this.remarks = remarks;
		this.privatecustomer = privatecustomer;
		this.lastfollow = lastfollow;
		this.createDate = createDate;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.crmContacts = crmContacts;
		this.crmContracts = crmContracts;
		this.crmInvoices = crmInvoices;
		this.crmReceives = crmReceives;
		this.crmFollows = crmFollows;
		this.crmOrders = crmOrders;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public HrEmployee getHrEmployeeByEmployeeId() {
		return this.hrEmployeeByEmployeeId;
	}

	public void setHrEmployeeByEmployeeId(HrEmployee hrEmployeeByEmployeeId) {
		this.hrEmployeeByEmployeeId = hrEmployeeByEmployeeId;
	}

	public ParamSysparam getParamSysparamByCustomertypeId() {
		return this.paramSysparamByCustomertypeId;
	}

	public void setParamSysparamByCustomertypeId(
			ParamSysparam paramSysparamByCustomertypeId) {
		this.paramSysparamByCustomertypeId = paramSysparamByCustomertypeId;
	}

	public ParamSysparam getParamSysparamByCustomerlevelId() {
		return this.paramSysparamByCustomerlevelId;
	}

	public void setParamSysparamByCustomerlevelId(
			ParamSysparam paramSysparamByCustomerlevelId) {
		this.paramSysparamByCustomerlevelId = paramSysparamByCustomerlevelId;
	}

	public HrEmployee getHrEmployeeByCreateId() {
		return this.hrEmployeeByCreateId;
	}

	public void setHrEmployeeByCreateId(HrEmployee hrEmployeeByCreateId) {
		this.hrEmployeeByCreateId = hrEmployeeByCreateId;
	}

	public ParamCity getParamCityByCityId() {
		return this.paramCityByCityId;
	}

	public void setParamCityByCityId(ParamCity paramCityByCityId) {
		this.paramCityByCityId = paramCityByCityId;
	}

	public ParamSysparam getParamSysparamByCustomersourceId() {
		return this.paramSysparamByCustomersourceId;
	}

	public void setParamSysparamByCustomersourceId(
			ParamSysparam paramSysparamByCustomersourceId) {
		this.paramSysparamByCustomersourceId = paramSysparamByCustomersourceId;
	}

	public HrDepartment getHrDepartment() {
		return this.hrDepartment;
	}

	public void setHrDepartment(HrDepartment hrDepartment) {
		this.hrDepartment = hrDepartment;
	}

	public ParamSysparam getParamSysparamByCustomerindustryId() {
		return this.paramSysparamByCustomerindustryId;
	}

	public void setParamSysparamByCustomerindustryId(
			ParamSysparam paramSysparamByCustomerindustryId) {
		this.paramSysparamByCustomerindustryId = paramSysparamByCustomerindustryId;
	}

	public ParamCity getParamCityByProvincesId() {
		return this.paramCityByProvincesId;
	}

	public void setParamCityByProvincesId(ParamCity paramCityByProvincesId) {
		this.paramCityByProvincesId = paramCityByProvincesId;
	}

	public String getSerialnumber() {
		return this.serialnumber;
	}

	public void setSerialnumber(String serialnumber) {
		this.serialnumber = serialnumber;
	}

	public String getCustomer() {
		return this.customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSite() {
		return this.site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getDescripe() {
		return this.descripe;
	}

	public void setDescripe(String descripe) {
		this.descripe = descripe;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getPrivatecustomer() {
		return this.privatecustomer;
	}

	public void setPrivatecustomer(String privatecustomer) {
		this.privatecustomer = privatecustomer;
	}

	public Date getLastfollow() {
		return this.lastfollow;
	}

	public void setLastfollow(Date lastfollow) {
		this.lastfollow = lastfollow;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
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

	public Set getCrmContacts() {
		return this.crmContacts;
	}

	public void setCrmContacts(Set crmContacts) {
		this.crmContacts = crmContacts;
	}

	public Set getCrmContracts() {
		return this.crmContracts;
	}

	public void setCrmContracts(Set crmContracts) {
		this.crmContracts = crmContracts;
	}

	public Set getCrmInvoices() {
		return this.crmInvoices;
	}

	public void setCrmInvoices(Set crmInvoices) {
		this.crmInvoices = crmInvoices;
	}

	public Set getCrmReceives() {
		return this.crmReceives;
	}

	public void setCrmReceives(Set crmReceives) {
		this.crmReceives = crmReceives;
	}

	public Set getCrmFollows() {
		return this.crmFollows;
	}

	public void setCrmFollows(Set crmFollows) {
		this.crmFollows = crmFollows;
	}

	public Set getCrmOrders() {
		return this.crmOrders;
	}

	public void setCrmOrders(Set crmOrders) {
		this.crmOrders = crmOrders;
	}

}