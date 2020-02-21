package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * CrmOrder entity. @author MyEclipse Persistence Tools
 */

public class CrmOrder implements java.io.Serializable {

	// Fields

	private Integer id;
	private CrmCustomer crmCustomer;
	private HrEmployee hrEmployeeByCreateId;
	private ParamSysparam paramSysparamByOrderStatusId;
	private HrDepartment hrDepartmentByFDepId;
	private ParamSysparam paramSysparamByPayTypeId;
	private HrEmployee hrEmployeeByFEmpId;
	private HrEmployee hrEmployeeByCEmpId;
	private HrDepartment hrDepartmentByCDepId;
	private String serialnumber;
	private Date orderDate;
	private String orderDetails;
	private Double orderAmount;
	private Date createDate;
	private Double receiveMoney;
	private Double arrearsMoney;
	private Double invoiceMoney;
	private Double arrearsInvoice;
	private Integer isdelete;
	private Date deleteTime;
	private Set crmReceives = new HashSet(0);
	private Set crmOrderDetailses = new HashSet(0);
	private Set crmInvoices = new HashSet(0);

	// Constructors

	/** default constructor */
	public CrmOrder() {
	}

	/** full constructor */
	public CrmOrder(CrmCustomer crmCustomer, HrEmployee hrEmployeeByCreateId,
			ParamSysparam paramSysparamByOrderStatusId,
			HrDepartment hrDepartmentByFDepId,
			ParamSysparam paramSysparamByPayTypeId,
			HrEmployee hrEmployeeByFEmpId, HrEmployee hrEmployeeByCEmpId,
			HrDepartment hrDepartmentByCDepId, String serialnumber,
			Date orderDate, String orderDetails, Double orderAmount,
			Date createDate, Double receiveMoney, Double arrearsMoney,
			Double invoiceMoney, Double arrearsInvoice, Integer isdelete,
			Date deleteTime, Set crmReceives, Set crmOrderDetailses,
			Set crmInvoices) {
		this.crmCustomer = crmCustomer;
		this.hrEmployeeByCreateId = hrEmployeeByCreateId;
		this.paramSysparamByOrderStatusId = paramSysparamByOrderStatusId;
		this.hrDepartmentByFDepId = hrDepartmentByFDepId;
		this.paramSysparamByPayTypeId = paramSysparamByPayTypeId;
		this.hrEmployeeByFEmpId = hrEmployeeByFEmpId;
		this.hrEmployeeByCEmpId = hrEmployeeByCEmpId;
		this.hrDepartmentByCDepId = hrDepartmentByCDepId;
		this.serialnumber = serialnumber;
		this.orderDate = orderDate;
		this.orderDetails = orderDetails;
		this.orderAmount = orderAmount;
		this.createDate = createDate;
		this.receiveMoney = receiveMoney;
		this.arrearsMoney = arrearsMoney;
		this.invoiceMoney = invoiceMoney;
		this.arrearsInvoice = arrearsInvoice;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.crmReceives = crmReceives;
		this.crmOrderDetailses = crmOrderDetailses;
		this.crmInvoices = crmInvoices;
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

	public HrEmployee getHrEmployeeByCreateId() {
		return this.hrEmployeeByCreateId;
	}

	public void setHrEmployeeByCreateId(HrEmployee hrEmployeeByCreateId) {
		this.hrEmployeeByCreateId = hrEmployeeByCreateId;
	}

	public ParamSysparam getParamSysparamByOrderStatusId() {
		return this.paramSysparamByOrderStatusId;
	}

	public void setParamSysparamByOrderStatusId(
			ParamSysparam paramSysparamByOrderStatusId) {
		this.paramSysparamByOrderStatusId = paramSysparamByOrderStatusId;
	}

	public HrDepartment getHrDepartmentByFDepId() {
		return this.hrDepartmentByFDepId;
	}

	public void setHrDepartmentByFDepId(HrDepartment hrDepartmentByFDepId) {
		this.hrDepartmentByFDepId = hrDepartmentByFDepId;
	}

	public ParamSysparam getParamSysparamByPayTypeId() {
		return this.paramSysparamByPayTypeId;
	}

	public void setParamSysparamByPayTypeId(
			ParamSysparam paramSysparamByPayTypeId) {
		this.paramSysparamByPayTypeId = paramSysparamByPayTypeId;
	}

	public HrEmployee getHrEmployeeByFEmpId() {
		return this.hrEmployeeByFEmpId;
	}

	public void setHrEmployeeByFEmpId(HrEmployee hrEmployeeByFEmpId) {
		this.hrEmployeeByFEmpId = hrEmployeeByFEmpId;
	}

	public HrEmployee getHrEmployeeByCEmpId() {
		return this.hrEmployeeByCEmpId;
	}

	public void setHrEmployeeByCEmpId(HrEmployee hrEmployeeByCEmpId) {
		this.hrEmployeeByCEmpId = hrEmployeeByCEmpId;
	}

	public HrDepartment getHrDepartmentByCDepId() {
		return this.hrDepartmentByCDepId;
	}

	public void setHrDepartmentByCDepId(HrDepartment hrDepartmentByCDepId) {
		this.hrDepartmentByCDepId = hrDepartmentByCDepId;
	}

	public String getSerialnumber() {
		return this.serialnumber;
	}

	public void setSerialnumber(String serialnumber) {
		this.serialnumber = serialnumber;
	}

	public Date getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderDetails() {
		return this.orderDetails;
	}

	public void setOrderDetails(String orderDetails) {
		this.orderDetails = orderDetails;
	}

	public Double getOrderAmount() {
		return this.orderAmount;
	}

	public void setOrderAmount(Double orderAmount) {
		this.orderAmount = orderAmount;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Double getReceiveMoney() {
		return this.receiveMoney;
	}

	public void setReceiveMoney(Double receiveMoney) {
		this.receiveMoney = receiveMoney;
	}

	public Double getArrearsMoney() {
		return this.arrearsMoney;
	}

	public void setArrearsMoney(Double arrearsMoney) {
		this.arrearsMoney = arrearsMoney;
	}

	public Double getInvoiceMoney() {
		return this.invoiceMoney;
	}

	public void setInvoiceMoney(Double invoiceMoney) {
		this.invoiceMoney = invoiceMoney;
	}

	public Double getArrearsInvoice() {
		return this.arrearsInvoice;
	}

	public void setArrearsInvoice(Double arrearsInvoice) {
		this.arrearsInvoice = arrearsInvoice;
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

	public Set getCrmReceives() {
		return this.crmReceives;
	}

	public void setCrmReceives(Set crmReceives) {
		this.crmReceives = crmReceives;
	}

	public Set getCrmOrderDetailses() {
		return this.crmOrderDetailses;
	}

	public void setCrmOrderDetailses(Set crmOrderDetailses) {
		this.crmOrderDetailses = crmOrderDetailses;
	}

	public Set getCrmInvoices() {
		return this.crmInvoices;
	}

	public void setCrmInvoices(Set crmInvoices) {
		this.crmInvoices = crmInvoices;
	}

}