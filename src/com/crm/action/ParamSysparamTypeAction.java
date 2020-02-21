package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.ParamSysparamBiz;
import com.crm.biz.ParamSysparamTypeBiz;
import com.crm.info.ParamSysparam;
import com.crm.info.ParamSysparamType;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller("paramSysparamTypeAction")
public class ParamSysparamTypeAction extends ActionSupport {
	
	private ParamSysparamTypeBiz paramSysparamTypeBiz;
	
	public void setParamSysparamTypeBiz(ParamSysparamTypeBiz paramSysparamTypeBiz) {
		this.paramSysparamTypeBiz = paramSysparamTypeBiz;
	}
	private ParamSysparamBiz paramSysparamBiz;
	
	public void setParamSysparamBiz(ParamSysparamBiz paramSysparamBiz) {
		this.paramSysparamBiz = paramSysparamBiz;
	}
	private int sysid;
	
	public void setSysid(int sysid) {
		this.sysid = sysid;
	}
	
	/**
	 * execute()
	 */
	public String execute() {
		List<ParamSysparamType> types=paramSysparamTypeBiz.findAllType();
		List<ParamSysparam> sysparams;
		if (sysid > 0 ) {
			sysparams = paramSysparamBiz.findSysParamByParentId(sysid);
		}else{
			sysparams = paramSysparamBiz.findAll();
		}
		Scopes.getRequestMap().put("sysparamType", sysparams);
		Scopes.getRequestMap().put("ptype",types);
		return SUCCESS;
	}
	private ParamSysparamType paramtype;
	
	public ParamSysparamType getParamtype() {
		return paramtype;
	}

	public void setParamtype(ParamSysparamType paramtype) {
		this.paramtype = paramtype;
	}
	
	public String ajaxGetAllParamType(){
		List<ParamSysparamType> types=paramSysparamTypeBiz.findAllType();
		for (ParamSysparamType type : types) {
			type.setParamSysparams(null);
		}
		String data=WebTools.convertJson(types);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
}
