package com.crm.action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.MailFlowBiz;
import com.crm.info.HrEmployee;
import com.crm.info.MailFlow;
import com.crm.info.ParamSysparam;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.crm.vobj.PageInfo;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("mailFlowAction")
public class MailFlowAction extends ActionSupport {
	
	private MailFlowBiz mailFlowBiz;

	public void setMailFlowBiz(MailFlowBiz mailFlowBiz) {
		this.mailFlowBiz = mailFlowBiz;
	}

	public String execute() {
		
		return SUCCESS;
	}
	private String emps;
	public String getEmps() {
		return emps;
	}

	public void setEmps(String emps) {
		this.emps = emps;
	}
	private MailFlow mailflow;
	private int index;//Ò³Âë
	
	public void setIndex(int index) {
		this.index = index;
	}

	public MailFlow getMailflow() {
		return mailflow;
	}

	public void setMailflow(MailFlow mailflow) {
		this.mailflow = mailflow;
	}

	public String ajaxSendMail(){
		int[] mailIdEs = mailFlowBiz.addMail(mailflow,emps);
		if (mailIdEs!=null) {
			WebTools.mailIdes=mailIdEs;
			Scopes.getRequestMap().put("data", "success");
		}else{
			Scopes.getRequestMap().put("data", "failed");
		}
		return "ajax";
	}
	
	public String ajaxLoadNewMail(){
		PageInfo info=new PageInfo(8, index);
		List<MailFlow> mailFlows=mailFlowBiz.loadNewMail(info);
		Map<String, Object> jobj=new HashMap<String, Object>();
		jobj.put("pi", info);
		WebTools.jsonClearMailFlows(mailFlows);
		jobj.put("fs", mailFlows);
		String data=WebTools.convertJson(jobj);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
	public String ajaxLoadNewCount(){
		Scopes.getRequestMap().put("data", mailFlowBiz.getNewMail());
		return "ajax";
	}
	
	public String ajaxLoadAllMail(){
		PageInfo info=new PageInfo(8, index);
		List<MailFlow> mailFlows=mailFlowBiz.loadAllMail(info);
		Map<String, Object> jobj=new HashMap<String, Object>();
		jobj.put("pi", info);
		WebTools.jsonClearMailFlows(mailFlows);
		jobj.put("fs", mailFlows);
		String data=WebTools.convertJson(jobj);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	public String ajaxLoadSendMail(){
		PageInfo info=new PageInfo(8, index);
		List<MailFlow> mailFlows=mailFlowBiz.loadSendMail(info);
		Map<String, Object> jobj=new HashMap<String, Object>();
		jobj.put("pi", info);
		WebTools.jsonClearMailFlows(mailFlows);
		jobj.put("fs", mailFlows);
		String data=WebTools.convertJson(jobj);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	public String ajaxLoadStarMail(){
		PageInfo info=new PageInfo(8, index);
		List<MailFlow> mailFlows=mailFlowBiz.loadStarMail(info);
		Map<String, Object> jobj=new HashMap<String, Object>();
		jobj.put("pi", info);
		WebTools.jsonClearMailFlows(mailFlows);
		jobj.put("fs", mailFlows);
		String data=WebTools.convertJson(jobj);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	public String ajaxLoadTrashMail(){
		PageInfo info=new PageInfo(8, index);
		List<MailFlow> mailFlows=mailFlowBiz.loadTrashMail(info);
		Map<String, Object> jobj=new HashMap<String, Object>();
		jobj.put("pi", info);
		WebTools.jsonClearMailFlows(mailFlows);
		jobj.put("fs", mailFlows);
		String data=WebTools.convertJson(jobj);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	private int id;
	public void setId(int id) {
		this.id = id;
	}
	private String ids;
	public void setIds(String ids){
		this.ids = ids;
	}
	public String ajaxLoadOneById(){
		MailFlow mailFlow=mailFlowBiz.findOne(id);
		mailFlowBiz.setIsView(id);
		int currentemp=((HrEmployee)Scopes.getSessionMap().get("emp")).getId();
		ParamSysparam p=new ParamSysparam();
		p.setId(currentemp);
		mailFlow.setParamSysparamByReciveTypeId(p);
		WebTools.clearEmployee(mailFlow.getHrEmployeeByReceiveId());
		WebTools.clearEmployee(mailFlow.getHrEmployeeBySenderId());
		if (mailFlow.getParamSysparamByImportant()!=null) {
			WebTools.clearSysParams(mailFlow.getParamSysparamByImportant());
		}
		if (mailFlow.getParamSysparamByReciveTypeId()!=null) {
			WebTools.clearSysParams(mailFlow.getParamSysparamByReciveTypeId());
		}
		String data=WebTools.convertJson(mailFlow);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	private String searchname;

	public void setSearchname(String searchname) {
		this.searchname = searchname;
	}

	public String ajaxSearchMailByName() throws UnsupportedEncodingException{
		searchname=new String(searchname.getBytes("iso-8859-1"),"UTF-8");
		PageInfo info=new PageInfo(8, index);
		List<MailFlow> flows = mailFlowBiz.findBymailTitle(searchname,info);
		Map<String, Object> jobj=new HashMap<String, Object>();
		jobj.put("pi", info);
		WebTools.jsonClearMailFlows(flows);
		jobj.put("fs", flows);
		String data=WebTools.convertJson(jobj);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	
	public String del(){
		String data="É¾³ýÊ§°Ü";
		if(ids != null && !"".equals(ids)){
			ids = ids.substring(0,ids.length()-1);
			String[] split = ids.split(",");
			for(String id:split){
				if(mailFlowBiz.delFalse(Integer.parseInt(id))){
					data="success";
				}
			}
		}
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	public String delete(){
		mailFlowBiz.delete(id);
		return "del";
	}
	public String setStar(){
		String data="";
		if (mailFlowBiz.setStar(id)) {
			data="success";
		}else{
			data="failed";
		}
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
}