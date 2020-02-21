package com.crm.action;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.ParamCityBiz;
import com.crm.info.ParamCity;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("paramCityAction")
public class ParamCityAction extends ActionSupport {
	
	private ParamCityBiz paramCityBiz;

	public void setParamCityBiz(ParamCityBiz paramCityBiz) {
		this.paramCityBiz = paramCityBiz;
	}
	//
	private int vinceid;
	
	public void setVinceid(int vinceid) {
		this.vinceid = vinceid;
	}

	public String execute() {
		return SUCCESS;
	}
	
	public String ajaxGetProvince(){
		List<ParamCity> cities=paramCityBiz.findProvince();
		WebTools.jsonClearCitys(cities);
		String data=WebTools.convertJson(cities);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	public String ajaxGetByProvinceId(){
		List<ParamCity> cities=paramCityBiz.findCityByProvinceId(vinceid);
		WebTools.jsonClearCitys(cities);
		String data=WebTools.convertJson(cities);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
}