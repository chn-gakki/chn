package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.PersonalEventBiz;
import com.crm.info.HrEmployee;
import com.crm.info.PersonalEvent;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("personalEventAction")
public class PersonalEventAction extends ActionSupport {
	
	private PersonalEventBiz personalEventBiz;

	public void setPersonalEventBiz(PersonalEventBiz personalEventBiz) {
		this.personalEventBiz = personalEventBiz;
	}

	public String execute() {
		
		return SUCCESS;
	}
	
	public String ajaxGetEventByEmpId(){
		int empid=((HrEmployee)Scopes.getSessionMap().get("emp")).getId();
		List<PersonalEvent> events = personalEventBiz.findByEmpId(empid);
		WebTools.jsonClearPersonalEvent(events);
		String data = WebTools.convertJson(events);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
}