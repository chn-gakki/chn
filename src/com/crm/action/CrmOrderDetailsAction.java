package com.crm.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.CrmOrderDetailsBiz;
import com.crm.info.CrmOrderDetails;
import com.crm.info.CrmProduct;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller("crmOrderDetailsAction")
public class CrmOrderDetailsAction extends ActionSupport {
	
	private CrmOrderDetailsBiz crmOrderDetailsBiz;
	public void setCrmOrderDetailsBiz(CrmOrderDetailsBiz crmOrderDetailsBiz) {
		this.crmOrderDetailsBiz = crmOrderDetailsBiz;
	}
	private int id;
	private CrmOrderDetails details;

	public CrmOrderDetails getDetails() {
		return details;
	}

	public void setDetails(CrmOrderDetails details) {
		this.details = details;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String delete() {
		if (crmOrderDetailsBiz.delete(id)) {
			Scopes.getRequestMap().put("data", "success");
		} else {
			Scopes.getRequestMap().put("data", "failed");
		}
		return "ajax";
	}

	public String getPriceById() {
		CrmProduct product = crmOrderDetailsBiz.findProduct(id);
		product.setCrmOrderDetailses(null);
		product.setCrmProductCategory(null);
		String data = WebTools.convertJson(product);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
	public String addOne(){
		try {
			crmOrderDetailsBiz.save(details);
			Scopes.getRequestMap().put("data", "success");
		} catch (Exception e) {
			e.printStackTrace();
			Scopes.getRequestMap().put("data", "failed");
		}
		return "ajax";
	}
}
