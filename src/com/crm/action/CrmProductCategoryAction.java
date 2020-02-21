package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.CrmProductCategoryBiz;
import com.crm.info.CrmProductCategory;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("crmProductCategoryAction")
public class CrmProductCategoryAction extends ActionSupport {
	
	private CrmProductCategoryBiz crmProductCategoryBiz;
	private int id;

	public void setId(int id) {
		this.id = id;
	}
	public void setCrmProductCategoryBiz(CrmProductCategoryBiz crmProductCategoryBiz) {
		this.crmProductCategoryBiz = crmProductCategoryBiz;
	}
	
	public String execute() {
		List<CrmProductCategory> categories=crmProductCategoryBiz.findAll();
		Scopes.getRequestMap().put("cates",categories);
		return SUCCESS;
	}
	
	public String delCate(){
		if (crmProductCategoryBiz.deleteCate(id)) {
			Scopes.getRequestMap().put("data","success");
		}else{
			Scopes.getRequestMap().put("data","failed");
		}
		return "ajax";
	}
	//&productCategory="+jqInputs[0].value+"&parentid="+jqInputs[1].value+"&productIcon="+jqInputs[2].value;
	private String productCategory,productIcon;
	private Integer parentid;
	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	
	public void setProductIcon(String productIcon) {
		this.productIcon = productIcon;
	}

	public String saveCate(){
		CrmProductCategory category=new CrmProductCategory();
		category.setParentid(parentid);
		category.setProductCategory(productCategory);
		category.setProductIcon(productIcon);
		category.setIsdelete(1);
		if (crmProductCategoryBiz.saveCate(category)) {
			Scopes.getRequestMap().put("data","success");
		}else{
			Scopes.getRequestMap().put("data","failed");
		}
		return "ajax";
	}
	
	public String updateCate(){
		CrmProductCategory category=new CrmProductCategory();
		category.setParentid(parentid);
		category.setProductCategory(productCategory);
		category.setProductIcon(productIcon);
		category.setId(id);
		//System.out.println(category.getParentid()+"--"+category.getProductIcon()+"--"+category.getProductCategory());
		if (crmProductCategoryBiz.updateCate(category)) {
			Scopes.getRequestMap().put("data","success");
		}else{
			Scopes.getRequestMap().put("data","failed");
		}
		return "ajax";
	}
	
	public String getMaxId(){
		int id=crmProductCategoryBiz.getMaxId()+1;
		Scopes.getRequestMap().put("data",+id);
		return "ajax";
	}

	public String ajaxGetCate() {
		List<CrmProductCategory> categories = crmProductCategoryBiz.findCate();
		WebTools.jsonClearCategories(categories);
		String data = WebTools.convertJson(categories);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}

	public String ajaxGetChildCate() {
		List<CrmProductCategory> categories =crmProductCategoryBiz.findChildCate(parentid);
		WebTools.jsonClearCategories(categories);
		String data = WebTools.convertJson(categories);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}

	public String ajaxGetAllChildCate() {
		List<CrmProductCategory> categories = crmProductCategoryBiz.findAllChildCate();
		WebTools.jsonClearCategories(categories);
		String data = WebTools.convertJson(categories);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
	public String trashAll(){
		Scopes.getRequestMap().put("cates",crmProductCategoryBiz.findTrashAll());
		return "trash";
	}
	public String trashDel(){
		crmProductCategoryBiz.deleteById(id);
		return trashAll();
	}
	public String trashAdd(){
		crmProductCategoryBiz.doTrashAdd(id);
		return trashAll();
	}
}