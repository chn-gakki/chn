package com.crm.action;

import java.util.List;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.CrmOrderBiz;
import com.crm.info.CrmOrder;
import com.crm.tools.Scopes;
import com.crm.vobj.CrmOrderVobj;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("crmOrderAction")
public class CrmOrderAction extends ActionSupport {
	
	private CrmOrderBiz crmOrderBiz;
	
	public void setCrmOrderBiz(CrmOrderBiz crmOrderBiz) {
		this.crmOrderBiz = crmOrderBiz;
	}
	
	private CrmOrderVobj bw;
	
	public CrmOrderVobj getBw() {
		return bw;
	}
	public void setBw(CrmOrderVobj bw) {
		this.bw = bw;
	}
	private int v;
	public void setV(int v) {
		this.v = v;
	}
	public String execute() {
		List<CrmOrder> list=crmOrderBiz.findAllByWhere(bw);
		Scopes.getRequestMap().put("a",list);
		Scopes.getRequestMap().put("v", v);
		return SUCCESS;
	}
	
	private CrmOrder orderobj;
	
	public CrmOrder getOrderobj() {
		return orderobj;
	}
	public void setOrderobj(CrmOrder orderobj) {
		this.orderobj = orderobj;
	}
	/**
	 * 单查 
	 * @return
	 */
	public String findOne(){
		Scopes.getRequestMap().put("one", crmOrderBiz.findOne(orderobj.getId()));
		return "findone";
	}
	/**
	 * 修改  
	 * @return
	 */
	public String update(){
		crmOrderBiz.update(orderobj);
		return "update";
	}
	
	/**
	 * 真删除 
	 * @return
	 */
	public String del(){
		crmOrderBiz.deleteFalse(orderobj.getId());
		return "delete";
	}
	/**
	 * 新增
	 * @return
	 */
	public String add(){
		crmOrderBiz.add(orderobj);
		return "add";
	}
	
	public String trashAll(){
		Scopes.getRequestMap().put("a", crmOrderBiz.findTrashAll());
		return "trash";
	}
	public String trashDel(){
		crmOrderBiz.deleteById(orderobj.getId());
		return trashAll();
	}
	public String trashAdd(){
		crmOrderBiz.doTrashAdd(orderobj.getId());
		return trashAll();
	}
}