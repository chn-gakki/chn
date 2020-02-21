package com.crm.info;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * ParamSysparamType entity. @author MyEclipse Persistence Tools
 */

public class ParamSysparamType implements java.io.Serializable {

	// Fields

	private Integer id;
	private String paramsName;
	private String paramsOrder;
	private Integer isdelete;
	private Date deleteTime;
	private Set paramSysparams = new HashSet(0);

	// Constructors

	/** default constructor */
	public ParamSysparamType() {
	}

	/** full constructor */
	public ParamSysparamType(String paramsName, String paramsOrder,
			Integer isdelete, Date deleteTime, Set paramSysparams) {
		this.paramsName = paramsName;
		this.paramsOrder = paramsOrder;
		this.isdelete = isdelete;
		this.deleteTime = deleteTime;
		this.paramSysparams = paramSysparams;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Set getParamSysparams() {
		return this.paramSysparams;
	}

	public void setParamSysparams(Set paramSysparams) {
		this.paramSysparams = paramSysparams;
	}

}