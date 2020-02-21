package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.HrDepartmentBiz;
import com.crm.info.HrDepartment;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("hrDepartmentAction")
public class HrDepartmentAction extends ActionSupport {
	
	private HrDepartmentBiz hrDepartmentBiz;
	public void setHrDepartmentBiz(HrDepartmentBiz hrDepartmentBiz) {
		this.hrDepartmentBiz = hrDepartmentBiz;
	}

	public String ajaxGetDeps(){
		List<HrDepartment> departments=hrDepartmentBiz.findAll();
		WebTools.jsonClearDeps(departments);
		String data=WebTools.convertJson(departments);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
	public String execute() {
		List<HrDepartment> list=hrDepartmentBiz.findAll();
		Scopes.getRequestMap().put("listdata", list);
		return SUCCESS;
	}
	private int id;
	
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * Ô¤É¾³ý  
	 * @return
	 */
	public String deleteById(){
		hrDepartmentBiz.deleteFalse(id);
		return "delete";
	}
	private HrDepartment department;
	
	public HrDepartment getDepartment() {
		return department;
	}

	public void setDepartment(HrDepartment department) {
		this.department = department;
	}

	/**
	 * ÐÞ¸Ä  
	 * @return
	 */
	public String update(){
		hrDepartmentBiz.update(department);
		return "update";
	}
	public String findOne(){
		HrDepartment hrDepartment=hrDepartmentBiz.findOneHrDepartment(id);
		Scopes.getRequestMap().put("listdata", hrDepartment);
		return "findOne";
	}
	/**
	 * Ôö¼Ó  
	 * @return
	 */
	public String add(){
		hrDepartmentBiz.addDepartment(department);
		return "add";
	}
	public String trashAll(){
		Scopes.getRequestMap().put("listdata", hrDepartmentBiz.findTrashAll());
		return "trash";
	}
	public String trashAdd(){
		hrDepartmentBiz.doTrashAdd(id);
		return trashAll();
	}
	public String trashDel(){
		hrDepartmentBiz.deleteById(id);
		return trashAll();
	}
}