package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.CrmProductBiz;
import com.crm.biz.CrmProductCategoryBiz;
import com.crm.info.CrmProduct;
import com.crm.info.CrmProductCategory;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("crmProductAction")
public class CrmProductAction extends ActionSupport {

	private CrmProductBiz crmProductBiz;

	private CrmProductCategoryBiz crmProductCategoryBiz;
	
	public void setCrmProductBiz(CrmProductBiz crmProductBiz) {
		this.crmProductBiz = crmProductBiz;
	}
	public void setCrmProductCategoryBiz(CrmProductCategoryBiz crmProductCategoryBiz) {
		this.crmProductCategoryBiz = crmProductCategoryBiz;
	}
	private int id;
	
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return
	 */
	public String execute() {
		Scopes.getRequestMap().put("categories", crmProductCategoryBiz.getProductCategories());
		Scopes.getRequestMap().put("prodlist",crmProductBiz.findByCateId(id));
		return SUCCESS;
	}
	
	public String findOne(){
		List<CrmProductCategory> findAllCategList = crmProductBiz.findAllCategList();
		Scopes.getRequestMap().put("categs", findAllCategList);
		if (id > 0) {//ÐÞ¸Ä
			CrmProduct findOne = crmProductBiz.findOne(id);
			Scopes.getRequestMap().put("onepro", findOne);
			String parentNameString = findOne.getCrmProductCategory().getParentid()+"";
			for(CrmProductCategory crmProductCategory:findAllCategList){
				Integer id2 = crmProductCategory.getId();
				Integer parentid = findOne.getCrmProductCategory().getParentid();
				System.out.println(crmProductCategory.getId()+"--"+parentid);
				if(parentid.intValue() == id2.intValue()){
					parentNameString = crmProductCategory.getProductCategory();
				}
			}
			Scopes.getRequestMap().put("parentNameString", parentNameString);
			return "findone";
		}
		return "toadd";
	}
	
	public String deleteOne(){
		crmProductBiz.deleteOne(id);
		id = 0;
		return "delete";
	}
	public String advanceDel(){
		crmProductBiz.advanceDel(id);
		id = 0;
		return "delfalse";
	}
	private CrmProduct crmProduct;
	
	public CrmProduct getCrmProduct() {
		return crmProduct;
	}
	public void setCrmProduct(CrmProduct crmProduct) {
		this.crmProduct = crmProduct;
	}
	public String updateOne(){
		crmProductBiz.update(crmProduct);
		return "update";
	}
	
	private String productName,specifications,unit,remarks;
	private double price;
	private int cateid;
	public void setCateid(int cateid) {
		this.cateid = cateid;
	}
	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String addOne(){
		CrmProduct prod=new CrmProduct();
		CrmProductCategory catego=new CrmProductCategory();
		catego.setId(cateid);
		prod.setProductName(productName);
		prod.setCrmProductCategory(catego);
		prod.setSpecifications(specifications);
		prod.setRemarks(remarks);
		prod.setUnit(unit);
		prod.setPrice(price);
		prod.setIsdelete(1);
		crmProductBiz.addOne(prod);
		return "add";
	}
	
	public String ajaxGetProduct(){
		List<CrmProduct> products = crmProductBiz.findByCateId(cateid);
		WebTools.jsonClearProduct(products);
		String data = WebTools.convertJson(products);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
	public String trashAll(){
		Scopes.getRequestMap().put("prodlist", crmProductBiz.findTrashAll());
		return "trash";
	}
	public String trashAdd(){
		crmProductBiz.doTrashAdd(id);
		return trashAll();
	}
	public String trashDel(){
		crmProductBiz.deleteOne(id);
		return trashAll();
	}
}