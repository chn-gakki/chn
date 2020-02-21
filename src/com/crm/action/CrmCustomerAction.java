package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.CrmContactBiz;
import com.crm.biz.CrmCustomerBiz;
import com.crm.info.CrmContact;
import com.crm.info.CrmCustomer;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.crm.vobj.CrmCustomeVobj;
import com.crm.vobj.EmpDepVobj;
import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller("crmCustomerAction")
public class CrmCustomerAction extends ActionSupport {

	private CrmCustomerBiz crmCustomerBiz;
	
	public void setCrmCustomerBiz(CrmCustomerBiz crmCustomerBiz) {
		this.crmCustomerBiz = crmCustomerBiz;
	}
	private CrmContactBiz crmContactBiz;

	public void setCrmContactBiz(CrmContactBiz crmContactBiz) {
		this.crmContactBiz = crmContactBiz;
	}
	//Ìõ¼þ²éÑ¯
	private CrmCustomeVobj bwvobj;
	
	public CrmCustomeVobj getBwvobj() {
		return bwvobj;
	}

	public void setBwvobj(CrmCustomeVobj bwvobj) {
		this.bwvobj = bwvobj;
	}
	private int id;

	public void setId(int id) {
		this.id = id;
	}
	private CrmCustomer customer;
	private CrmContact contact;
	public CrmContact getContact() {
		return contact;
	}

	public void setContact(CrmContact contact) {
		this.contact = contact;
	}

	public CrmCustomer getCustomer() {
		return customer;
	}

	public void setCustomer(CrmCustomer customer) {
		this.customer = customer;
	}

	public String execute(){
		Scopes.getRequestMap().put("bywhere", crmCustomerBiz.findAllByWhere(bwvobj));
		return SUCCESS;
	}
	
	public String findOne(){
		CrmCustomer customer = crmCustomerBiz.findOne(id);
		Scopes.getRequestMap().put("one", customer);
		return "toupdate";
	}
	
	public String add(){
		CrmCustomer newcust = crmCustomerBiz.addCustomer(customer);
		contact.setCrmCustomer(newcust);
		crmContactBiz.add(contact);
		return "add";
	}
	
	public String update(){
		crmCustomerBiz.update(customer);
		return "update";
	}
	
	public String delete(){
		crmCustomerBiz.deleteFalse(id);
		return "delete";
	}
	
	public String ajaxGetAllCustomer(){
		List<CrmCustomer> customers=crmCustomerBiz.findAll();
		WebTools.jsonClearCustomer(customers);
		String data=WebTools.convertJson(customers);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	public String ajaxGetDepEmp(){
		CrmCustomer cus = crmCustomerBiz.findOne(id);
		EmpDepVobj edvobj=new EmpDepVobj();
		edvobj.setDepid(cus.getHrDepartment().getId());
		edvobj.setDepname(cus.getHrDepartment().getDName());
		edvobj.setEmpid(cus.getHrEmployeeByEmployeeId().getId());
		edvobj.setEmpname(cus.getHrEmployeeByEmployeeId().getName());
		String data = WebTools.convertJson(edvobj);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
	public String trashAll(){
		Scopes.getRequestMap().put("bywhere", crmCustomerBiz.findTrashAll());
		return "trash";
	}
	public String trashAdd(){
		crmCustomerBiz.doTrashAdd(id);
		return trashAll();
	}
	public String trashDel(){
		crmCustomerBiz.deleteById(id);
		return trashAll();
	}
}