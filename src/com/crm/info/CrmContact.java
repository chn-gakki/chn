package com.crm.info;

import java.util.Date;

/**
 * CrmContact entity. @author MyEclipse Persistence Tools
 */

public class CrmContact implements java.io.Serializable {

	// Fields

	private Integer id;
	private CrmCustomer crmCustomer;
	private HrEmployee hrEmployee;
	private String CName;
	private String CSex;
	private String CDepartment;
	private String CPosition;
	private String CBirthday;
	private String CTel;
	private String CEmail;
	private String CMob;
	private String CQq;
	private String CAddress;
	private String CHobby;
	private String CRemarks;
	private Date CCreatedate;
	private Integer isdelete;
	private Date deleteTime;

	// Constructors

	/** default constructor */
	public CrmContact() {
	}

	/** full constructor */
	public CrmContact(CrmCustomer crmCustomer, HrEmployee hrEmployee,
			String CName, String CSex, String CDepartment, String CPosition,
			String CBirthday, String CTel, String CEmail, String CMob,
			String CQq, String CAddress, String CHobby, String CRemarks,
			Date CCreatedate, Integer isdelete, Date deleteTime) {
		this.crmCustomer = crmCustomer;
		this.hrEmployee = hrEmployee;
		this.CName = CName;
		this.CSex = CSex;
		this.CDepartment = CDepartment;
		this.CPosition = CPosition;
		this.CBirthday = CBirthday;
		this.CTel = CTel;
		this.CEmail = CEmail;
		this.CMob = CMob;
		this.CQq = CQq;
		this.CAddress = CAddress;
		this.CHobby = CHobby;
		this.CRemarks = CRemarks;
		this.CCreatedate = CCreatedate;
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

	public HrEmployee getHrEmployee() {
		return this.hrEmployee;
	}

	public void setHrEmployee(HrEmployee hrEmployee) {
		this.hrEmployee = hrEmployee;
	}

	public String getCName() {
		return this.CName;
	}

	public void setCName(String CName) {
		this.CName = CName;
	}

	public String getCSex() {
		return this.CSex;
	}

	public void setCSex(String CSex) {
		this.CSex = CSex;
	}

	public String getCDepartment() {
		return this.CDepartment;
	}

	public void setCDepartment(String CDepartment) {
		this.CDepartment = CDepartment;
	}

	public String getCPosition() {
		return this.CPosition;
	}

	public void setCPosition(String CPosition) {
		this.CPosition = CPosition;
	}

	public String getCBirthday() {
		return this.CBirthday;
	}

	public void setCBirthday(String CBirthday) {
		this.CBirthday = CBirthday;
	}

	public String getCTel() {
		return this.CTel;
	}

	public void setCTel(String CTel) {
		this.CTel = CTel;
	}

	public String getCEmail() {
		return this.CEmail;
	}

	public void setCEmail(String CEmail) {
		this.CEmail = CEmail;
	}

	public String getCMob() {
		return this.CMob;
	}

	public void setCMob(String CMob) {
		this.CMob = CMob;
	}

	public String getCQq() {
		return this.CQq;
	}

	public void setCQq(String CQq) {
		this.CQq = CQq;
	}

	public String getCAddress() {
		return this.CAddress;
	}

	public void setCAddress(String CAddress) {
		this.CAddress = CAddress;
	}

	public String getCHobby() {
		return this.CHobby;
	}

	public void setCHobby(String CHobby) {
		this.CHobby = CHobby;
	}

	public String getCRemarks() {
		return this.CRemarks;
	}

	public void setCRemarks(String CRemarks) {
		this.CRemarks = CRemarks;
	}

	public Date getCCreatedate() {
		return this.CCreatedate;
	}

	public void setCCreatedate(Date CCreatedate) {
		this.CCreatedate = CCreatedate;
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