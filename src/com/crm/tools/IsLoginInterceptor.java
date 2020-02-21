package com.crm.tools;

import java.util.Map;

import com.crm.info.HrEmployee;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
/**
 * ¼ì²éÊÇ·ñµÇÂ¼À¹½ØÆ÷
 * @author ¿­
 *
 */
public class IsLoginInterceptor extends AbstractInterceptor {
	
	private static final long serialVersionUID = 1L;

	/**
	 * À¹½Ø·½·¨
	 */
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map session=invocation.getInvocationContext().getSession();
		HrEmployee employee=(HrEmployee) session.get("emp");
		if (employee==null) {
			return Action.ERROR;
		}
		return invocation.invoke();
	}

}
