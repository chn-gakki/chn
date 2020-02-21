package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * ParamSysparam entity. @author MyEclipse Persistence Tools
 */

public class ParamSysparam implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployeeByCreateId;
	private ParamSysparamType paramSysparamType;
	private HrEmployee hrEmployeeByUpdateId;
	private String paramsName;
	private String paramsOrder;
	private Date createDate;
	private Date updateDate;
	private Set crmReceivesForReceiveTypeId = new HashSet(0);
	private Set crmReceivesForReceiveDirectionId = new HashSet(0);
	private Set hrPositions = new HashSet(0);
	private Set hrEmployees = new HashSet(0);
	private Set mailFlowsForReciveTypeId = new HashSet(0);
	private Set mailFlowsForImportant = new HashSet(0);
	private Set crmCustomersForCustomerindustryId = new HashSet(0);
	private Set crmOrdersForOrderStatusId = new HashSet(0);
	private Set crmCustomersForCustomersourceId = new HashSet(0);
	private Set crmCustomersForCustomerlevelId = new HashSet(0);
	private Set crmCustomersForCustomertypeId = new HashSet(0);
	private Set crmFollows = new HashSet(0);
	private Set crmOrdersForPayTypeId = new HashSet(0);
	private Set hrDepartmentsForDIconId = new HashSet(0);
	private Set crmInvoices = new HashSet(0);
	private Set hrDepartmentsForDTypeId = new HashSet(0);

	// Constructors

	/** default constructor */
	public ParamSysparam() {
	}

	/** full constructor */
	public ParamSysparam(HrEmployee hrEmployeeByCreateId,
			ParamSysparamType paramSysparamType,
			HrEmployee hrEmployeeByUpdateId, String paramsName,
			String paramsOrder, Date createDate, Date updateDate,
			Set crmReceivesForReceiveTypeId,
			Set crmReceivesForReceiveDirectionId, Set hrPositions,
			Set hrEmployees, Set mailFlowsForReciveTypeId,
			Set mailFlowsForImportant, Set crmCustomersForCustomerindustryId,
			Set crmOrdersForOrderStatusId, Set crmCustomersForCustomersourceId,
			Set crmCustomersForCustomerlevelId,
			Set crmCustomersForCustomertypeId, Set crmFollows,
			Set crmOrdersForPayTypeId, Set hrDepartmentsForDIconId,
			Set crmInvoices, Set hrDepartmentsForDTypeId) {
		this.hrEmployeeByCreateId = hrEmployeeByCreateId;
		this.paramSysparamType = paramSysparamType;
		this.hrEmployeeByUpdateId = hrEmployeeByUpdateId;
		this.paramsName = paramsName;
		this.paramsOrder = paramsOrder;
		this.createDate = createDate;
		this.updateDate = updateDate;
		this.crmReceivesForReceiveTypeId = crmReceivesForReceiveTypeId;
		this.crmReceivesForReceiveDirectionId = crmReceivesForReceiveDirectionId;
		this.hrPositions = hrPositions;
		this.hrEmployees = hrEmployees;
		this.mailFlowsForReciveTypeId = mailFlowsForReciveTypeId;
		this.mailFlowsForImportant = mailFlowsForImportant;
		this.crmCustomersForCustomerindustryId = crmCustomersForCustomerindustryId;
		this.crmOrdersForOrderStatusId = crmOrdersForOrderStatusId;
		this.crmCustomersForCustomersourceId = crmCustomersForCustomersourceId;
		this.crmCustomersForCustomerlevelId = crmCustomersForCustomerlevelId;
		this.crmCustomersForCustomertypeId = crmCustomersForCustomertypeId;
		this.crmFollows = crmFollows;
		this.crmOrdersForPayTypeId = crmOrdersForPayTypeId;
		this.hrDepartmentsForDIconId = hrDepartmentsForDIconId;
		this.crmInvoices = crmInvoices;
		this.hrDepartmentsForDTypeId = hrDepartmentsForDTypeId;
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

	public ParamSysparamType getParamSysparamType() {
		return this.paramSysparamType;
	}

	public void setParamSysparamType(ParamSysparamType paramSysparamType) {
		this.paramSysparamType = paramSysparamType;
	}

	public HrEmployee getHrEmployeeByUpdateId() {
		return this.hrEmployeeByUpdateId;
	}

	public void setHrEmployeeByUpdateId(HrEmployee hrEmployeeByUpdateId) {
		this.hrEmployeeByUpdateId = hrEmployeeByUpdateId;
	}

	public String getParamsName() {
		return this.paramsName;
	}

	public void setParamsName(String paramsName) {
		this.paramsName = paramsName;
	}

	public String getParamsOrder() {
		return this.paramsOrder;
	}

	public void setParamsOrder(String paramsOrder) {
		this.paramsOrder = paramsOrder;
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

	public Set getCrmReceivesForReceiveTypeId() {
		return this.crmReceivesForReceiveTypeId;
	}

	public void setCrmReceivesForReceiveTypeId(Set crmReceivesForReceiveTypeId) {
		this.crmReceivesForReceiveTypeId = crmReceivesForReceiveTypeId;
	}

	public Set getCrmReceivesForReceiveDirectionId() {
		return this.crmReceivesForReceiveDirectionId;
	}

	public void setCrmReceivesForReceiveDirectionId(
			Set crmReceivesForReceiveDirectionId) {
		this.crmReceivesForReceiveDirectionId = crmReceivesForReceiveDirectionId;
	}

	public Set getHrPositions() {
		return this.hrPositions;
	}

	public void setHrPositions(Set hrPositions) {
		this.hrPositions = hrPositions;
	}

	public Set getHrEmployees() {
		return this.hrEmployees;
	}

	public void setHrEmployees(Set hrEmployees) {
		this.hrEmployees = hrEmployees;
	}

	public Set getMailFlowsForReciveTypeId() {
		return this.mailFlowsForReciveTypeId;
	}

	public void setMailFlowsForReciveTypeId(Set mailFlowsForReciveTypeId) {
		this.mailFlowsForReciveTypeId = mailFlowsForReciveTypeId;
	}

	public Set getMailFlowsForImportant() {
		return this.mailFlowsForImportant;
	}

	public void setMailFlowsForImportant(Set mailFlowsForImportant) {
		this.mailFlowsForImportant = mailFlowsForImportant;
	}

	public Set getCrmCustomersForCustomerindustryId() {
		return this.crmCustomersForCustomerindustryId;
	}

	public void setCrmCustomersForCustomerindustryId(
			Set crmCustomersForCustomerindustryId) {
		this.crmCustomersForCustomerindustryId = crmCustomersForCustomerindustryId;
	}

	public Set getCrmOrdersForOrderStatusId() {
		return this.crmOrdersForOrderStatusId;
	}

	public void setCrmOrdersForOrderStatusId(Set crmOrdersForOrderStatusId) {
		this.crmOrdersForOrderStatusId = crmOrdersForOrderStatusId;
	}

	public Set getCrmCustomersForCustomersourceId() {
		return this.crmCustomersForCustomersourceId;
	}

	public void setCrmCustomersForCustomersourceId(
			Set crmCustomersForCustomersourceId) {
		this.crmCustomersForCustomersourceId = crmCustomersForCustomersourceId;
	}

	public Set getCrmCustomersForCustomerlevelId() {
		return this.crmCustomersForCustomerlevelId;
	}

	public void setCrmCustomersForCustomerlevelId(
			Set crmCustomersForCustomerlevelId) {
		this.crmCustomersForCustomerlevelId = crmCustomersForCustomerlevelId;
	}

	public Set getCrmCustomersForCustomertypeId() {
		return this.crmCustomersForCustomertypeId;
	}

	public void setCrmCustomersForCustomertypeId(
			Set crmCustomersForCustomertypeId) {
		this.crmCustomersForCustomertypeId = crmCustomersForCustomertypeId;
	}

	public Set getCrmFollows() {
		return this.crmFollows;
	}

	public void setCrmFollows(Set crmFollows) {
		this.crmFollows = crmFollows;
	}

	public Set getCrmOrdersForPayTypeId() {
		return this.crmOrdersForPayTypeId;
	}

	public void setCrmOrdersForPayTypeId(Set crmOrdersForPayTypeId) {
		this.crmOrdersForPayTypeId = crmOrdersForPayTypeId;
	}

	public Set getHrDepartmentsForDIconId() {
		return this.hrDepartmentsForDIconId;
	}

	public void setHrDepartmentsForDIconId(Set hrDepartmentsForDIconId) {
		this.hrDepartmentsForDIconId = hrDepartmentsForDIconId;
	}

	public Set getCrmInvoices() {
		return this.crmInvoices;
	}

	public void setCrmInvoices(Set crmInvoices) {
		this.crmInvoices = crmInvoices;
	}

	public Set getHrDepartmentsForDTypeId() {
		return this.hrDepartmentsForDTypeId;
	}

	public void setHrDepartmentsForDTypeId(Set hrDepartmentsForDTypeId) {
		this.hrDepartmentsForDTypeId = hrDepartmentsForDTypeId;
	}

}