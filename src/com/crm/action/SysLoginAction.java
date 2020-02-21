package com.crm.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("sysLoginAction")
public class SysLoginAction extends ActionSupport {
	
	public String execute() {
		
		return SUCCESS;
	}
}