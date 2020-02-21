package com.crm.tools;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class Scopes {
	/**
	 * 返回Session对象
	 * @return
	 */
	public static Map<String,Object> getSessionMap(){
		return ActionContext.getContext().getSession();
	}
	/**
	 * 返回Application对象
	 * @return
	 */
	public static Map<String,Object> getApplicationMap(){
		return ActionContext.getContext().getApplication();
	}
	/**
	 * 返回request对象
	 * @return
	 */
	public static ActionContext getRequestMap(){
		return ActionContext.getContext();
	}
}
