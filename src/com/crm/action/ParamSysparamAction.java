package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.ParamSysparamBiz;
import com.crm.info.ParamSysparam;
import com.crm.info.ParamSysparamType;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("paramSysparamAction")
public class ParamSysparamAction extends ActionSupport {

	private ParamSysparamBiz paramSysparamBiz;
	private int sysid;
	
	public void setSysid(int sysid) {
		this.sysid = sysid;
	}
	public void setParamSysparamBiz(ParamSysparamBiz paramSysparamBiz) {
		this.paramSysparamBiz = paramSysparamBiz;
	}
	private ParamSysparam sysparam;
	
	public ParamSysparam getSysparam() {
		return sysparam;
	}
	public void setSysparam(ParamSysparam sysparam) {
		this.sysparam = sysparam;
	}
	public String execute(){
		return SUCCESS;
	}
	
	/**
	 * 接收到ParamSysparamTypeAction的类型  并全查子类型 
	 * @return
	 */
	public String findSysParam(){
		Scopes.getRequestMap().put("sysparam", paramSysparamBiz.findOne(sysid));
		return "find";
	}
	
	public String add(){
		paramSysparamBiz.add(sysparam);
		return "add";
	}
	
	public String update(){
		paramSysparamBiz.update(sysparam);
		return "update";
	}
	
	public String ajaxGetBySysId(){
		List<ParamSysparam> sysparams=paramSysparamBiz.findSysParamByParentId(sysid);
		WebTools.jsonClearSysParams(sysparams);
		String data=WebTools.convertJson(sysparams);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
}