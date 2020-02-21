package com.crm.info;

import java.util.Date;

/**
 * CrmReceive entity. @author MyEclipse Persistence Tools
 */

public class CrmReceive implements java.io.Serializable {

	// Fields

	private Integer id;
	private CrmCustomer crmCustomer;
	private HrDepartment hrDepartment;
	private HrEmployee hrEmployeeByCreateId;
	private CrmOrder crmOrder;
	private ParamSysparam paramSysparamByReceiveTypeId;
	private ParamSysparam paramSysparamByReceiveDirectionId;
	private HrEmployee hrEmployeeByCEmpid;
	private String receiveNum;
	private Double receiveAmount;
	private Date receiveDate;
	private Date createDate;
	private Date deleteTime;
	private Double receiveReal;
	private String remarks;
	private Integer isdelete;

	// Constructors

	/** default constructor */
	public CrmReceive() {
	}

	/** full constructor */
	public CrmReceive(CrmCustomer crmCustomer, HrDepartment hrDepartment,
			HrEmployee hrEmployeeByCreateId, CrmOrder crmOrder,
			ParamSysparam paramSysparamByReceiveTypeId,
			ParamSysparam paramSysparamByReceiveDirectionId,
			HrEmployee hrEmployeeByCEmpid, String receiveNum,
			Double receiveAmount, Date receiveDate, Date createDate,
			Date deleteTime, Double receiveReal, String remarks,
			Integer isdelete) {
		this.crmCustomer = crmCustomer;
		this.hrDepartment = hrDepartment;
		this.hrEmployeeByCreateId = hrEmployeeByCreateId;
		this.crmOrder = crmOrder;
		this.paramSysparamByReceiveTypeId = paramSysparamByReceiveTypeId;
		this.paramSysparamByReceiveDirectionId = paramSysparamByReceiveDirectionId;
		this.hrEmployeeByCEmpid = hrEmployeeByCEmpid;
		this.receiveNum = receiveNum;
		this.receiveAmount = receiveAmount;
		this.receiveDate = receiveDate;
		this.createDate = createDate;
		this.deleteTime = deleteTime;
		this.receiveReal = receiveReal;
		this.remarks = remarks;
		this.isdelete = isdelete;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public CrmCustomer getCrmCustomer() {
		return this.crmCustomer;
	}

	public void setCrmCustomer(CrmCustomer crmCustomer) {
		this.crmCustomer = crmCustomer;
	}

	public HrDepartment getHrDepartment() {
		return this.hrDepartment;
	}

	public void setHrDepartment(HrDepartment hrDepartment) {
		this.hrDepartment = hrDepartment;
	}

	public HrEmployee getHrEmployeeByCreateId() {
		return this.hrEmployeeByCreateId;
	}

	public void setHrEmployeeByCreateId(HrEmployee hrEmployeeByCreateId) {
		this.hrEmployeeByCreateId = hrEmployeeByCreateId;
	}

	public CrmOrder getCrmOrder() {
		return this.crmOrder;
	}

	public void setCrmOrder(CrmOrder crmOrder) {
		this.crmOrder = crmOrder;
	}

	public ParamSysparam getParamSysparamByReceiveTypeId() {
		return this.paramSysparamByReceiveTypeId;
	}

	public void setParamSysparamByReceiveTypeId(
			ParamSysparam paramSysparamByReceiveTypeId) {
		this.paramSysparamByReceiveTypeId = paramSysparamByReceiveTypeId;
	}

	public ParamSysparam getParamSysparamByReceiveDirectionId() {
		return this.paramSysparamByReceiveDirectionId;
	}

	public void setParamSysparamByReceiveDirectionId(
			ParamSysparam paramSysparamByReceiveDirectionId) {
		this.paramSysparamByReceiveDirectionId = paramSysparamByReceiveDirectionId;
	}

	public HrEmployee getHrEmployeeByCEmpid() {
		return this.hrEmployeeByCEmpid;
	}

	public void setHrEmployeeByCEmpid(HrEmployee hrEmployeeByCEmpid) {
		this.hrEmployeeByCEmpid = hrEmployeeByCEmpid;
	}

	public String getReceiveNum() {
		return this.receiveNum;
	}

	public void setReceiveNum(String receiveNum) {
		this.receiveNum = receiveNum;
	}

	public Double getReceiveAmount() {
		return this.receiveAmount;
	}

	public void setReceiveAmount(Double receiveAmount) {
		this.receiveAmount = receiveAmount;
	}

	public Date getReceiveDate() {
		return this.receiveDate;
	}

	public void setReceiveDate(Date receiveDate) {
		this.receiveDate = receiveDate;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getDeleteTime() {
		return this.deleteTime;
	}

	public void setDeleteTime(Date deleteTime) {
		this.deleteTime = deleteTime;
	}

	public Double getReceiveReal() {
		return this.receiveReal;
	}

	public void setReceiveReal(Double receiveReal) {
		this.receiveReal = receiveReal;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Integer getIsdelete() {
		return this.isdelete;
	}

	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}

}