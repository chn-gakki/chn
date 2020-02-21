package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * HrEmployee entity. @author MyEclipse Persistence Tools
 */

public class HrEmployee implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrPosition hrPosition;
	private ParamSysparam paramSysparam;
	private HrDepartment hrDepartment;
	private SysRole sysRole;
	private HrPost hrPost;
	private String uid;
	private String pwd;
	private String name;
	private String idcard;
	private Date birthday;
	private String email;
	private String sex;
	private String telephone;
	private String status;
	private Integer sort;
	private Date entrydate;
	private String address;
	private String remarks;
	private String education;
	private String professional;
	private String schools;
	private String title;
	private Integer isdelete;
	private Date deleteTime;
	private String portal;
	private String theme;
	private Integer canlogin;
	private String layout;
	private Date loginoutdate;
	private Integer ispost;
	private Set crmReceivesForCEmpid = new HashSet(0);
	private Set paramCitiesForUpdateId = new HashSet(0);
	private Set paramCitiesForCreateId = new HashSet(0);
	private Set crmReceivesForCreateId = new HashSet(0);
	private Set sysLogins = new HashSet(0);
	private Set crmContractsForCEmpid = new HashSet(0);
	private Set sysRolesForUpdateid = new HashSet(0);
	private Set sysRolesForCreateid = new HashSet(0);
	private Set paramSysparamsForUpdateId = new HashSet(0);
	private Set publicNotices = new HashSet(0);
	private Set hrPosts = new HashSet(0);
	private Set crmFollows = new HashSet(0);
	private Set paramSysparamsForCreateId = new HashSet(0);
	private Set crmInvoicesForCreateId = new HashSet(0);
	private Set crmContacts = new HashSet(0);
	private Set crmOrdersForCreateId = new HashSet(0);
	private Set crmOrdersForFEmpId = new HashSet(0);
	private Set crmProductCategories = new HashSet(0);
	private Set crmOrdersForCEmpId = new HashSet(0);
	private Set personalNoteses = new HashSet(0);
	private Set crmInvoicesForCEmpid = new HashSet(0);
	private Set publicChatRooms = new HashSet(0);
	private Set personalCalendars = new HashSet(0);
	private Set hrPositions = new HashSet(0);
	private Set mailFlowsForReceiveId = new HashSet(0);
	private Set personalEvents = new HashSet(0);
	private Set mailFlowsForSenderId = new HashSet(0);
	private Set crmCustomersForCreateId = new HashSet(0);
	private Set crmCustomersForEmployeeId = new HashSet(0);
	private Set publicNewses = new HashSet(0);
	private Set crmContractsForCreaterId = new HashSet(0);
	private Set crmContractsForOurContractorId = new HashSet(0);

	// Constructors

	/** default constructor */
	public HrEmployee() {
	}

	/** full constructor */
	public HrEmployee(HrPosition hrPosition, ParamSysparam paramSysparam,
			HrDepartment hrDepartment, SysRole sysRole, HrPost hrPost,
			String uid, String pwd, String name, String idcard, Date birthday,
			String email, String sex, String telephone, String status,
			Integer sort, Date entrydate, String address, String remarks,
			String education, String professional, String schools,
			String title, Integer isdelete, Date deleteTime, String portal,
			String theme, Integer canlogin, String layout, Date loginoutdate,
			Integer ispost, Set crmReceivesForCEmpid,
			Set paramCitiesForUpdateId, Set paramCitiesForCreateId,
			Set crmReceivesForCreateId, Set sysLogins,
			Set crmContractsForCEmpid, Set sysRolesForUpdateid,
			Set sysRolesForCreateid, Set paramSysparamsForUpdateId,
			Set publicNotices, Set hrPosts, Set crmFollows,
			Set paramSysparamsForCreateId, Set crmInvoicesForCreateId,
			Set crmContacts, Set crmOrdersForCreateId, Set crmOrdersForFEmpId,
			Set crmProductCategories, Set crmOrdersForCEmpId,
			Set personalNoteses, Set crmInvoicesForCEmpid, Set publicChatRooms,
			Set personalCalendars, Set hrPositions, Set mailFlowsForReceiveId,
			Set personalEvents, Set mailFlowsForSenderId,
			Set crmCustomersForCreateId, Set crmCustomersForEmployeeId,
			Set publicNewses, Set crmContractsForCreaterId,
			Set crmContractsForOurContractorId) {
		this.hrPosition = hrPosition;
		this.paramSysparam = paramSysparam;
		this.hrDepartment = hrDepartment;
		this.sysRole = sysRole;
		this.hrPost = hrPost;
		this.uid = uid;
		this.pwd = pwd;
		this.name = name;
		this.idcard = idcard;
		this.birthday = birthday;
		this.email = email;
		this.sex = sex;
		this.telephone = telephone;
		this.status = status;
		this.sort = sort;
		this.entrydate = entrydate;
		this.address = address;
		this.remarks = remarks;
		this.education = education;
		this.professional = professional;
		this.schools = schools;
		this.title = title;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.portal = portal;
		this.theme = theme;
		this.canlogin = canlogin;
		this.layout = layout;
		this.loginoutdate = loginoutdate;
		this.ispost = ispost;
		this.crmReceivesForCEmpid = crmReceivesForCEmpid;
		this.paramCitiesForUpdateId = paramCitiesForUpdateId;
		this.paramCitiesForCreateId = paramCitiesForCreateId;
		this.crmReceivesForCreateId = crmReceivesForCreateId;
		this.sysLogins = sysLogins;
		this.crmContractsForCEmpid = crmContractsForCEmpid;
		this.sysRolesForUpdateid = sysRolesForUpdateid;
		this.sysRolesForCreateid = sysRolesForCreateid;
		this.paramSysparamsForUpdateId = paramSysparamsForUpdateId;
		this.publicNotices = publicNotices;
		this.hrPosts = hrPosts;
		this.crmFollows = crmFollows;
		this.paramSysparamsForCreateId = paramSysparamsForCreateId;
		this.crmInvoicesForCreateId = crmInvoicesForCreateId;
		this.crmContacts = crmContacts;
		this.crmOrdersForCreateId = crmOrdersForCreateId;
		this.crmOrdersForFEmpId = crmOrdersForFEmpId;
		this.crmProductCategories = crmProductCategories;
		this.crmOrdersForCEmpId = crmOrdersForCEmpId;
		this.personalNoteses = personalNoteses;
		this.crmInvoicesForCEmpid = crmInvoicesForCEmpid;
		this.publicChatRooms = publicChatRooms;
		this.personalCalendars = personalCalendars;
		this.hrPositions = hrPositions;
		this.mailFlowsForReceiveId = mailFlowsForReceiveId;
		this.personalEvents = personalEvents;
		this.mailFlowsForSenderId = mailFlowsForSenderId;
		this.crmCustomersForCreateId = crmCustomersForCreateId;
		this.crmCustomersForEmployeeId = crmCustomersForEmployeeId;
		this.publicNewses = publicNewses;
		this.crmContractsForCreaterId = crmContractsForCreaterId;
		this.crmContractsForOurContractorId = crmContractsForOurContractorId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public HrPosition getHrPosition() {
		return this.hrPosition;
	}

	public void setHrPosition(HrPosition hrPosition) {
		this.hrPosition = hrPosition;
	}

	public ParamSysparam getParamSysparam() {
		return this.paramSysparam;
	}

	public void setParamSysparam(ParamSysparam paramSysparam) {
		this.paramSysparam = paramSysparam;
	}

	public HrDepartment getHrDepartment() {
		return this.hrDepartment;
	}

	public void setHrDepartment(HrDepartment hrDepartment) {
		this.hrDepartment = hrDepartment;
	}

	public SysRole getSysRole() {
		return this.sysRole;
	}

	public void setSysRole(SysRole sysRole) {
		this.sysRole = sysRole;
	}

	public HrPost getHrPost() {
		return this.hrPost;
	}

	public void setHrPost(HrPost hrPost) {
		this.hrPost = hrPost;
	}

	public String getUid() {
		return this.uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdcard() {
		return this.idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getSort() {
		return this.sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Date getEntrydate() {
		return this.entrydate;
	}

	public void setEntrydate(Date entrydate) {
		this.entrydate = entrydate;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getEducation() {
		return this.education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getProfessional() {
		return this.professional;
	}

	public void setProfessional(String professional) {
		this.professional = professional;
	}

	public String getSchools() {
		return this.schools;
	}

	public void setSchools(String schools) {
		this.schools = schools;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getPortal() {
		return this.portal;
	}

	public void setPortal(String portal) {
		this.portal = portal;
	}

	public String getTheme() {
		return this.theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public Integer getCanlogin() {
		return this.canlogin;
	}

	public void setCanlogin(Integer canlogin) {
		this.canlogin = canlogin;
	}

	public String getLayout() {
		return this.layout;
	}

	public void setLayout(String layout) {
		this.layout = layout;
	}

	public Date getLoginoutdate() {
		return this.loginoutdate;
	}

	public void setLoginoutdate(Date loginoutdate) {
		this.loginoutdate = loginoutdate;
	}

	public Integer getIspost() {
		return this.ispost;
	}

	public void setIspost(Integer ispost) {
		this.ispost = ispost;
	}

	public Set getCrmReceivesForCEmpid() {
		return this.crmReceivesForCEmpid;
	}

	public void setCrmReceivesForCEmpid(Set crmReceivesForCEmpid) {
		this.crmReceivesForCEmpid = crmReceivesForCEmpid;
	}

	public Set getParamCitiesForUpdateId() {
		return this.paramCitiesForUpdateId;
	}

	public void setParamCitiesForUpdateId(Set paramCitiesForUpdateId) {
		this.paramCitiesForUpdateId = paramCitiesForUpdateId;
	}

	public Set getParamCitiesForCreateId() {
		return this.paramCitiesForCreateId;
	}

	public void setParamCitiesForCreateId(Set paramCitiesForCreateId) {
		this.paramCitiesForCreateId = paramCitiesForCreateId;
	}

	public Set getCrmReceivesForCreateId() {
		return this.crmReceivesForCreateId;
	}

	public void setCrmReceivesForCreateId(Set crmReceivesForCreateId) {
		this.crmReceivesForCreateId = crmReceivesForCreateId;
	}

	public Set getSysLogins() {
		return this.sysLogins;
	}

	public void setSysLogins(Set sysLogins) {
		this.sysLogins = sysLogins;
	}

	public Set getCrmContractsForCEmpid() {
		return this.crmContractsForCEmpid;
	}

	public void setCrmContractsForCEmpid(Set crmContractsForCEmpid) {
		this.crmContractsForCEmpid = crmContractsForCEmpid;
	}

	public Set getSysRolesForUpdateid() {
		return this.sysRolesForUpdateid;
	}

	public void setSysRolesForUpdateid(Set sysRolesForUpdateid) {
		this.sysRolesForUpdateid = sysRolesForUpdateid;
	}

	public Set getSysRolesForCreateid() {
		return this.sysRolesForCreateid;
	}

	public void setSysRolesForCreateid(Set sysRolesForCreateid) {
		this.sysRolesForCreateid = sysRolesForCreateid;
	}

	public Set getParamSysparamsForUpdateId() {
		return this.paramSysparamsForUpdateId;
	}

	public void setParamSysparamsForUpdateId(Set paramSysparamsForUpdateId) {
		this.paramSysparamsForUpdateId = paramSysparamsForUpdateId;
	}

	public Set getPublicNotices() {
		return this.publicNotices;
	}

	public void setPublicNotices(Set publicNotices) {
		this.publicNotices = publicNotices;
	}

	public Set getHrPosts() {
		return this.hrPosts;
	}

	public void setHrPosts(Set hrPosts) {
		this.hrPosts = hrPosts;
	}

	public Set getCrmFollows() {
		return this.crmFollows;
	}

	public void setCrmFollows(Set crmFollows) {
		this.crmFollows = crmFollows;
	}

	public Set getParamSysparamsForCreateId() {
		return this.paramSysparamsForCreateId;
	}

	public void setParamSysparamsForCreateId(Set paramSysparamsForCreateId) {
		this.paramSysparamsForCreateId = paramSysparamsForCreateId;
	}

	public Set getCrmInvoicesForCreateId() {
		return this.crmInvoicesForCreateId;
	}

	public void setCrmInvoicesForCreateId(Set crmInvoicesForCreateId) {
		this.crmInvoicesForCreateId = crmInvoicesForCreateId;
	}

	public Set getCrmContacts() {
		return this.crmContacts;
	}

	public void setCrmContacts(Set crmContacts) {
		this.crmContacts = crmContacts;
	}

	public Set getCrmOrdersForCreateId() {
		return this.crmOrdersForCreateId;
	}

	public void setCrmOrdersForCreateId(Set crmOrdersForCreateId) {
		this.crmOrdersForCreateId = crmOrdersForCreateId;
	}

	public Set getCrmOrdersForFEmpId() {
		return this.crmOrdersForFEmpId;
	}

	public void setCrmOrdersForFEmpId(Set crmOrdersForFEmpId) {
		this.crmOrdersForFEmpId = crmOrdersForFEmpId;
	}

	public Set getCrmProductCategories() {
		return this.crmProductCategories;
	}

	public void setCrmProductCategories(Set crmProductCategories) {
		this.crmProductCategories = crmProductCategories;
	}

	public Set getCrmOrdersForCEmpId() {
		return this.crmOrdersForCEmpId;
	}

	public void setCrmOrdersForCEmpId(Set crmOrdersForCEmpId) {
		this.crmOrdersForCEmpId = crmOrdersForCEmpId;
	}

	public Set getPersonalNoteses() {
		return this.personalNoteses;
	}

	public void setPersonalNoteses(Set personalNoteses) {
		this.personalNoteses = personalNoteses;
	}

	public Set getCrmInvoicesForCEmpid() {
		return this.crmInvoicesForCEmpid;
	}

	public void setCrmInvoicesForCEmpid(Set crmInvoicesForCEmpid) {
		this.crmInvoicesForCEmpid = crmInvoicesForCEmpid;
	}

	public Set getPublicChatRooms() {
		return this.publicChatRooms;
	}

	public void setPublicChatRooms(Set publicChatRooms) {
		this.publicChatRooms = publicChatRooms;
	}

	public Set getPersonalCalendars() {
		return this.personalCalendars;
	}

	public void setPersonalCalendars(Set personalCalendars) {
		this.personalCalendars = personalCalendars;
	}

	public Set getHrPositions() {
		return this.hrPositions;
	}

	public void setHrPositions(Set hrPositions) {
		this.hrPositions = hrPositions;
	}

	public Set getMailFlowsForReceiveId() {
		return this.mailFlowsForReceiveId;
	}

	public void setMailFlowsForReceiveId(Set mailFlowsForReceiveId) {
		this.mailFlowsForReceiveId = mailFlowsForReceiveId;
	}

	public Set getPersonalEvents() {
		return this.personalEvents;
	}

	public void setPersonalEvents(Set personalEvents) {
		this.personalEvents = personalEvents;
	}

	public Set getMailFlowsForSenderId() {
		return this.mailFlowsForSenderId;
	}

	public void setMailFlowsForSenderId(Set mailFlowsForSenderId) {
		this.mailFlowsForSenderId = mailFlowsForSenderId;
	}

	public Set getCrmCustomersForCreateId() {
		return this.crmCustomersForCreateId;
	}

	public void setCrmCustomersForCreateId(Set crmCustomersForCreateId) {
		this.crmCustomersForCreateId = crmCustomersForCreateId;
	}

	public Set getCrmCustomersForEmployeeId() {
		return this.crmCustomersForEmployeeId;
	}

	public void setCrmCustomersForEmployeeId(Set crmCustomersForEmployeeId) {
		this.crmCustomersForEmployeeId = crmCustomersForEmployeeId;
	}

	public Set getPublicNewses() {
		return this.publicNewses;
	}

	public void setPublicNewses(Set publicNewses) {
		this.publicNewses = publicNewses;
	}

	public Set getCrmContractsForCreaterId() {
		return this.crmContractsForCreaterId;
	}

	public void setCrmContractsForCreaterId(Set crmContractsForCreaterId) {
		this.crmContractsForCreaterId = crmContractsForCreaterId;
	}

	public Set getCrmContractsForOurContractorId() {
		return this.crmContractsForOurContractorId;
	}

	public void setCrmContractsForOurContractorId(
			Set crmContractsForOurContractorId) {
		this.crmContractsForOurContractorId = crmContractsForOurContractorId;
	}

}