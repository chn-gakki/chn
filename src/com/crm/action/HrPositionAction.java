package com.crm.action;

import java.util.List;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.HrPositionBiz;
import com.crm.info.HrPosition;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller("hrPositionAction")
public class HrPositionAction extends ActionSupport {
	
	private HrPositionBiz hrPositionBiz;
	
	public void setHrPositionBiz(HrPositionBiz hrPositionBiz) {
		this.hrPositionBiz = hrPositionBiz;
	}
	/**
	 * @return
	 */
	public String execute() {
		List<HrPosition> list=hrPositionBiz.findAll();
		Scopes.getRequestMap().put("listdata", list);
		return SUCCESS;
	}
	private int id;
	
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * Ô¤É¾³ý  
	 * @return
	 */
	public String deleteById(){
		hrPositionBiz.deleteFalse(id);
		return "delete";
	}
	private HrPosition position;
	
	public void setPosition(HrPosition position) {
		this.position = position;
	}
	public HrPosition getPosition() {
		return position;
	}
	/**
	 * ÐÞ¸Ä  
	 * @return
	 */
	public String update(){
		hrPositionBiz.update(position);
		return "update";
	}
	public String findOne(){
		HrPosition hrPosition=hrPositionBiz.findOneHrposition(id);
		Scopes.getRequestMap().put("listdata", hrPosition);
		return "findOne";
	}
	/**
	 * Ôö¼Ó  
	 * @return
	 */
	public String add(){
		hrPositionBiz.addPosition(position);
		return "add";
	}
	
	public String ajaxLoadPosition(){
		List<HrPosition> positions=hrPositionBiz.findAll();
		WebTools.jsonClearPosition(positions);
		String data = WebTools.convertJson(positions);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	public String trashAll(){
		Scopes.getRequestMap().put("listdata", hrPositionBiz.findTrashAll());
		return "trash";
	}
	
	public String trashAdd(){
		hrPositionBiz.doTrashAdd(id);
		return trashAll();
	}
	public String trashDel(){
		hrPositionBiz.deleteById(id);
		return trashAll();
	}
	
}