package com.crm.info;

import java.util.Date;

/**
 * CrmContract entity. @author MyEclipse Persistence Tools
 */

public class CrmContract implements java.io.Serializable {

	// Fields

	private Integer id;
	private CrmCustomer crmCustomer;
	private HrEmployee hrEmployeeByOurContractorId;
	private HrDepartment hrDepartmentByCDepid;
	private HrDepartment hrDepartmentByOurContractorDepid;
	private HrEmployee hrEmployeeByCEmpid;
	private HrEmployee hrEmployeeByCreaterId;
	private String contractName;
	private String serialnumber;
	private Double contractAmount;
	private Integer payCycle;
	private Date startDate;
	private Date endDate;
	private Date signDate;
	private String customerContractor;
	private Date createTime;
	private String mainContent;
	private String remarks;
	private Integer isdelete;
	private Date deleteTime;

	// Constructors

	/** default constructor */
	public CrmContract() {
	}

	/** full constructor */
	public CrmContract(CrmCustomer crmCustomer,
			HrEmployee hrEmployeeByOurContractorId,
			HrDepartment hrDepartmentByCDepid,
			HrDepartment hrDepartmentByOurContractorDepid,
			HrEmployee hrEmployeeByCEmpid, HrEmployee hrEmployeeByCreaterId,
			String contractName, String serialnumber, Double contractAmount,
			Integer payCycle, Date startDate, Date endDate, Date signDate,
			String customerContractor, Date createTime, String mainContent,
			String remarks, Integer isdelete, Date deleteTime) {
		this.crmCustomer = crmCustomer;
		this.hrEmployeeByOurContractorId = hrEmployeeByOurContractorId;
		this.hrDepartmentByCDepid = hrDepartmentByCDepid;
		this.hrDepartmentByOurContractorDepid = hrDepartmentByOurContractorDepid;
		this.hrEmployeeByCEmpid = hrEmployeeByCEmpid;
		this.hrEmployeeByCreaterId = hrEmployeeByCreaterId;
		this.contractName = contractName;
		this.serialnumber = serialnumber;
		this.contractAmount = contractAmount;
		this.payCycle = payCycle;
		this.startDate = startDate;
		this.endDate = endDate;
		this.signDate = signDate;
		this.customerContractor = customerContractor;
		this.createTime = createTime;
		this.mainContent = mainContent;
		this.remarks = remarks;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
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

	public HrEmployee getHrEmployeeByOurContractorId() {
		return this.hrEmployeeByOurContractorId;
	}

	public void setHrEmployeeByOurContractorId(
			HrEmployee hrEmployeeByOurContractorId) {
		this.hrEmployeeByOurContractorId = hrEmployeeByOurContractorId;
	}

	public HrDepartment getHrDepartmentByCDepid() {
		return this.hrDepartmentByCDepid;
	}

	public void setHrDepartmentByCDepid(HrDepartment hrDepartmentByCDepid) {
		this.hrDepartmentByCDepid = hrDepartmentByCDepid;
	}

	public HrDepartment getHrDepartmentByOurContractorDepid() {
		return this.hrDepartmentByOurContractorDepid;
	}

	public void setHrDepartmentByOurContractorDepid(
			HrDepartment hrDepartmentByOurContractorDepid) {
		this.hrDepartmentByOurContractorDepid = hrDepartmentByOurContractorDepid;
	}

	public HrEmployee getHrEmployeeByCEmpid() {
		return this.hrEmployeeByCEmpid;
	}

	public void setHrEmployeeByCEmpid(HrEmployee hrEmployeeByCEmpid) {
		this.hrEmployeeByCEmpid = hrEmployeeByCEmpid;
	}

	public HrEmployee getHrEmployeeByCreaterId() {
		return this.hrEmployeeByCreaterId;
	}

	public void setHrEmployeeByCreaterId(HrEmployee hrEmployeeByCreaterId) {
		this.hrEmployeeByCreaterId = hrEmployeeByCreaterId;
	}

	public String getContractName() {
		return this.contractName;
	}

	public void setContractName(String contractName) {
		this.contractName = contractName;
	}

	public String getSerialnumber() {
		return this.serialnumber;
	}

	public void setSerialnumber(String serialnumber) {
		this.serialnumber = serialnumber;
	}

	public Double getContractAmount() {
		return this.contractAmount;
	}

	public void setContractAmount(Double contractAmount) {
		this.contractAmount = contractAmount;
	}

	public Integer getPayCycle() {
		return this.payCycle;
	}

	public void setPayCycle(Integer payCycle) {
		this.payCycle = payCycle;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Date getSignDate() {
		return this.signDate;
	}

	public void setSignDate(Date signDate) {
		this.signDate = signDate;
	}

	public String getCustomerContractor() {
		return this.customerContractor;
	}

	public void setCustomerContractor(String customerContractor) {
		this.customerContractor = customerContractor;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getMainContent() {
		return this.mainContent;
	}

	public void setMainContent(String mainContent) {
		this.mainContent = mainContent;
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

	public Date getDeleteTime() {
		return this.deleteTime;
	}

	public void setDeleteTime(Date deleteTime) {
		this.deleteTime = deleteTime;
	}

}