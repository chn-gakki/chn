package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.CrmInvoiceBiz;
import com.crm.biz.CrmOrderBiz;
import com.crm.info.CrmInvoice;
import com.crm.info.CrmOrder;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.crm.vobj.CrmInvoiceVobj;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("crmInvoiceAction")
public class CrmInvoiceAction extends ActionSupport {
	
	private CrmInvoiceBiz crmInvoiceBiz;
	private CrmInvoiceVobj invoicevobj;
	private CrmOrderBiz crmOrderBiz;
	private CrmInvoice invoice;

	public CrmInvoice getInvoice() {
		return invoice;
	}

	public void setInvoice(CrmInvoice invoice) {
		this.invoice = invoice;
	}

	public void setCrmOrderBiz(CrmOrderBiz crmOrderBiz) {
		this.crmOrderBiz = crmOrderBiz;
	}

	public void setCrmInvoiceBiz(CrmInvoiceBiz crmInvoiceBiz) {
		this.crmInvoiceBiz = crmInvoiceBiz;
	}
	private int orderid,invoiceid;

	public void setInvoiceid(int invoiceid) {
		this.invoiceid = invoiceid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	/**
	 * 按 订单全查
	 */
	public String execute() {
		if (orderid < 1) {
			orderid=WebTools.invoice_orderid;
		}
		System.out.println(orderid);
		List<CrmInvoice> invoices=crmInvoiceBiz.findByOrderId(orderid);
		Scopes.getRequestMap().put("orderid", orderid);
		Scopes.getRequestMap().put("invoices", invoices);
		return SUCCESS;
	}
	
	public CrmInvoiceVobj getInvoicevobj() {
		return invoicevobj;
	}

	public void setInvoicevobj(CrmInvoiceVobj invoicevobj) {
		this.invoicevobj = invoicevobj;
	}
	/**
	 * 条件全查
	 * @return
	 */
	public String findAll(){
		List<CrmInvoice> invoices=crmInvoiceBiz.findAllByWhere(invoicevobj);
		Scopes.getRequestMap().put("invoices", invoices);
		return "findall";
	}
	/**
	 * 单查
	 * @return
	 */
	public String findOne(){
		WebTools.invoice_orderid=orderid;
		CrmOrder order=crmOrderBiz.findOne(orderid);
		Scopes.getRequestMap().put("order", order);
		if (invoiceid > 0) {
			Scopes.getRequestMap().put("invoice", crmInvoiceBiz.findOne(invoiceid));
			return "findupdate";
		}
		Scopes.getRequestMap().put("orderid", orderid);
		return "findadd";
	}
	/**
	 * 添加
	 * @return
	 */
	public String add(){
		crmInvoiceBiz.add(invoice);
		crmOrderBiz.saveCalculate(invoice);
		return "add";
	}
	/**
	 * 修改
	 * @return
	 */
	public String update(){
		crmInvoiceBiz.update(invoice);
		return "update";
	}
	
	public String delete(){
		crmInvoiceBiz.deleteFlase(invoiceid);
		WebTools.invoice_orderid=orderid;
		return "delete";
	}
	
	public String trashAll(){
		Scopes.getRequestMap().put("invoices", crmInvoiceBiz.findTrashAll());
		return "trash";
	}
	public String trashAdd(){
		crmInvoiceBiz.doTrashAdd(invoiceid);
		return trashAll();
	}
	public String trashDel(){
		crmInvoiceBiz.deleteById(invoiceid);
		return trashAll();
	}
}