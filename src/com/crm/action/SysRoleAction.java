package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.SysMenuBiz;
import com.crm.biz.SysRoleBiz;
import com.crm.info.SysRole;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.crm.vobj.SysMenuVobj;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("sysRoleAction")
public class SysRoleAction extends ActionSupport {
	private SysRoleBiz sysRoleBiz;
	private SysMenuBiz sysMenuBiz;

	public void setSysMenuBiz(SysMenuBiz sysMenuBiz) {
		this.sysMenuBiz = sysMenuBiz;
	}

	public void setSysRoleBiz(SysRoleBiz sysRoleBiz) {
		this.sysRoleBiz = sysRoleBiz;
	}
	
	public String execute() {
		List<SysRole> list = sysRoleBiz.findAll();
		Scopes.getRequestMap().put("roles", list);
		List<SysMenuVobj> menus=sysMenuBiz.findAllTree();
		Scopes.getRequestMap().put("menustree", menus);
		return SUCCESS;
	}
	
	private SysRole role;
	public SysRole getRole() {
		return role;
	}

	public void setRole(SysRole role) {
		this.role = role;
	}

	public String add(){
		String data="";
		if (sysRoleBiz.add(role)) {
			data="success";
		}else{
			data="failed";
		}
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	public String update(){
		String data="";
		if (sysRoleBiz.update(role)) {
			data="success";
		}else{
			data="failed";
		}
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	private int id;

	public void setId(int id) {
		this.id = id;
	}

	public String findOne(){
		SysRole sysRole = sysRoleBiz.findOne(id);
		sysRole.setHrEmployeeByCreateid(null);
		sysRole.setHrEmployeeByUpdateid(null);
		sysRole.setHrEmployees(null);
		String data = WebTools.convertJson(sysRole);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
	public String ajaxLoadSysRole(){
		List<SysRole> roles=sysRoleBiz.findAll();
		WebTools.jsonClearRole(roles);
		String data=WebTools.convertJson(roles);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
}