package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.CrmOrderBiz;
import com.crm.biz.CrmReceiveBiz;
import com.crm.info.CrmOrder;
import com.crm.info.CrmReceive;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.crm.vobj.CrmReceiveVobj;
import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller("crmReceiveAction")
public class CrmReceiveAction extends ActionSupport {

	private CrmReceiveBiz crmReceiveBiz;

	public void setCrmReceiveBiz(CrmReceiveBiz crmReceiveBiz) {
		this.crmReceiveBiz = crmReceiveBiz;
	}

	private CrmOrderBiz crmOrderBiz;

	public void setCrmOrderBiz(CrmOrderBiz crmOrderBiz) {
		this.crmOrderBiz = crmOrderBiz;
	}

	private int orderid,receiveid;

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	
	public void setReceiveid(int receiveid) {
		this.receiveid = receiveid;
	}

	private CrmReceive receive;

	public void setReceive(CrmReceive receive) {
		this.receive = receive;
	}

	public CrmReceive getReceive() {
		return receive;
	}

	public String execute() {
		if (orderid < 1) {
			orderid=WebTools.receive_orderid;
		}
		Scopes.getRequestMap().put("receives", crmReceiveBiz.findAllByOrderId(orderid));
		Scopes.getRequestMap().put("orderid", orderid);
		return "findbyorderid";
	}
	
	private CrmReceiveVobj receivevobj;
	
	public CrmReceiveVobj getReceivevobj() {
		return receivevobj;
	}

	public void setReceivevobj(CrmReceiveVobj receivevobj) {
		this.receivevobj = receivevobj;
	}

	public String findAll(){
		List<CrmReceive> list = crmReceiveBiz.findAllByWhere(receivevobj);
		Scopes.getRequestMap().put("receives", list);
		return "findall";
	}

	public String add() {
		crmReceiveBiz.add(receive);
		crmOrderBiz.saveCalculate(receive);
		return "add";
	}

	public String findOne() {
		//获取订单对象
		CrmOrder ord=crmOrderBiz.findOne(orderid);
		Scopes.getRequestMap().put("order", ord);
		Scopes.getRequestMap().put("orderid", orderid);
		WebTools.receive_orderid=orderid;
		if ( receiveid > 0 ) {
			Scopes.getRequestMap().put("receive", crmReceiveBiz.findOne(receiveid));
			Scopes.getRequestMap().put("receiveid", receiveid);
			return "findreceive";
		}
		return "findorder";
	}

	public String update() {
		crmReceiveBiz.update(receive);
		return "update";
	}
	
	public String delete(){
		crmReceiveBiz.deleteFlase(receiveid);
		WebTools.receive_orderid=orderid;
		return "delete";
	}
	
	public String trashAll(){
		Scopes.getRequestMap().put("receives", crmReceiveBiz.findTrashAll());
		return "trash";
	}
	public String trashAdd(){
		crmReceiveBiz.doTrashAdd(receiveid);
		return trashAll();
	}
	public String trashDel(){
		crmReceiveBiz.deleteById(receiveid);
		return trashAll();
	}

}