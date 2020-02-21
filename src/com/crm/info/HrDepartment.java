package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * HrDepartment entity. @author MyEclipse Persistence Tools
 */

public class HrDepartment implements java.io.Serializable {

	// Fields

	private Integer id;
	private ParamSysparam paramSysparamByDIconId;
	private ParamSysparam paramSysparamByDTypeId;
	private String DName;
	private Integer parentid;
	private String DEmployee;
	private String DTelephone;
	private String DAddress;
	private String DEmail;
	private String DDescription;
	private String DOrder;
	private Integer isdelete;
	private Date deleteTime;
	private Set publicChatRooms = new HashSet(0);
	private Set crmContractsForCDepid = new HashSet(0);
	private Set crmContractsForOurContractorDepid = new HashSet(0);
	private Set hrPosts = new HashSet(0);
	private Set hrEmployees = new HashSet(0);
	private Set publicNotices = new HashSet(0);
	private Set crmOrdersForCDepId = new HashSet(0);
	private Set crmCustomers = new HashSet(0);
	private Set crmOrdersForFDepId = new HashSet(0);
	private Set crmInvoices = new HashSet(0);
	private Set crmReceives = new HashSet(0);
	private Set crmFollows = new HashSet(0);
	private Set publicNewses = new HashSet(0);

	// Constructors

	/** default constructor */
	public HrDepartment() {
	}

	/** full constructor */
	public HrDepartment(ParamSysparam paramSysparamByDIconId,
			ParamSysparam paramSysparamByDTypeId, String DName,
			Integer parentid, String DEmployee, String DTelephone,
			String DAddress, String DEmail, String DDescription, String DOrder,
			Integer isdelete, Date deleteTime, Set publicChatRooms,
			Set crmContractsForCDepid, Set crmContractsForOurContractorDepid,
			Set hrPosts, Set hrEmployees, Set publicNotices,
			Set crmOrdersForCDepId, Set crmCustomers, Set crmOrdersForFDepId,
			Set crmInvoices, Set crmReceives, Set crmFollows, Set publicNewses) {
		this.paramSysparamByDIconId = paramSysparamByDIconId;
		this.paramSysparamByDTypeId = paramSysparamByDTypeId;
		this.DName = DName;
		this.parentid = parentid;
		this.DEmployee = DEmployee;
		this.DTelephone = DTelephone;
		this.DAddress = DAddress;
		this.DEmail = DEmail;
		this.DDescription = DDescription;
		this.DOrder = DOrder;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.publicChatRooms = publicChatRooms;
		this.crmContractsForCDepid = crmContractsForCDepid;
		this.crmContractsForOurContractorDepid = crmContractsForOurContractorDepid;
		this.hrPosts = hrPosts;
		this.hrEmployees = hrEmployees;
		this.publicNotices = publicNotices;
		this.crmOrdersForCDepId = crmOrdersForCDepId;
		this.crmCustomers = crmCustomers;
		this.crmOrdersForFDepId = crmOrdersForFDepId;
		this.crmInvoices = crmInvoices;
		this.crmReceives = crmReceives;
		this.crmFollows = crmFollows;
		this.publicNewses = publicNewses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ParamSysparam getParamSysparamByDIconId() {
		return this.paramSysparamByDIconId;
	}

	public void setParamSysparamByDIconId(ParamSysparam paramSysparamByDIconId) {
		this.paramSysparamByDIconId = paramSysparamByDIconId;
	}

	public ParamSysparam getParamSysparamByDTypeId() {
		return this.paramSysparamByDTypeId;
	}

	public void setParamSysparamByDTypeId(ParamSysparam paramSysparamByDTypeId) {
		this.paramSysparamByDTypeId = paramSysparamByDTypeId;
	}

	public String getDName() {
		return this.DName;
	}

	public void setDName(String DName) {
		this.DName = DName;
	}

	public Integer getParentid() {
		return this.parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public String getDEmployee() {
		return this.DEmployee;
	}

	public void setDEmployee(String DEmployee) {
		this.DEmployee = DEmployee;
	}

	public String getDTelephone() {
		return this.DTelephone;
	}

	public void setDTelephone(String DTelephone) {
		this.DTelephone = DTelephone;
	}

	public String getDAddress() {
		return this.DAddress;
	}

	public void setDAddress(String DAddress) {
		this.DAddress = DAddress;
	}

	public String getDEmail() {
		return this.DEmail;
	}

	public void setDEmail(String DEmail) {
		this.DEmail = DEmail;
	}

	public String getDDescription() {
		return this.DDescription;
	}

	public void setDDescription(String DDescription) {
		this.DDescription = DDescription;
	}

	public String getDOrder() {
		return this.DOrder;
	}

	public void setDOrder(String DOrder) {
		this.DOrder = DOrder;
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

	public Set getPublicChatRooms() {
		return this.publicChatRooms;
	}

	public void setPublicChatRooms(Set publicChatRooms) {
		this.publicChatRooms = publicChatRooms;
	}

	public Set getCrmContractsForCDepid() {
		return this.crmContractsForCDepid;
	}

	public void setCrmContractsForCDepid(Set crmContractsForCDepid) {
		this.crmContractsForCDepid = crmContractsForCDepid;
	}

	public Set getCrmContractsForOurContractorDepid() {
		return this.crmContractsForOurContractorDepid;
	}

	public void setCrmContractsForOurContractorDepid(
			Set crmContractsForOurContractorDepid) {
		this.crmContractsForOurContractorDepid = crmContractsForOurContractorDepid;
	}

	public Set getHrPosts() {
		return this.hrPosts;
	}

	public void setHrPosts(Set hrPosts) {
		this.hrPosts = hrPosts;
	}

	public Set getHrEmployees() {
		return this.hrEmployees;
	}

	public void setHrEmployees(Set hrEmployees) {
		this.hrEmployees = hrEmployees;
	}

	public Set getPublicNotices() {
		return this.publicNotices;
	}

	public void setPublicNotices(Set publicNotices) {
		this.publicNotices = publicNotices;
	}

	public Set getCrmOrdersForCDepId() {
		return this.crmOrdersForCDepId;
	}

	public void setCrmOrdersForCDepId(Set crmOrdersForCDepId) {
		this.crmOrdersForCDepId = crmOrdersForCDepId;
	}

	public Set getCrmCustomers() {
		return this.crmCustomers;
	}

	public void setCrmCustomers(Set crmCustomers) {
		this.crmCustomers = crmCustomers;
	}

	public Set getCrmOrdersForFDepId() {
		return this.crmOrdersForFDepId;
	}

	public void setCrmOrdersForFDepId(Set crmOrdersForFDepId) {
		this.crmOrdersForFDepId = crmOrdersForFDepId;
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

	public Set getPublicNewses() {
		return this.publicNewses;
	}

	public void setPublicNewses(Set publicNewses) {
		this.publicNewses = publicNewses;
	}

}