package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.PublicNoticeBiz;
import com.crm.info.PublicNotice;
import com.crm.tools.Scopes;
import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller("publicNoticeAction")
public class PublicNoticeAction extends ActionSupport {

	/**
	 * publicNotice
	 */
	private PublicNotice publicNotice;
	public PublicNotice getPublicNotice() {
		return publicNotice;
	}
	
	public void setPublicNotice(PublicNotice publicNotice) {
		this.publicNotice = publicNotice;
	}
	/**
	 * publicNoticeBiz
	 */
	private PublicNoticeBiz publicNoticeBiz;
	public void setPublicNoticeBiz(PublicNoticeBiz publicNoticeBiz) {
		this.publicNoticeBiz = publicNoticeBiz;
	}
	/**
	 * execute()
	 */
	public String execute() {
		List<PublicNotice> list=publicNoticeBiz.findAllNotice();
		Scopes.getRequestMap().put("listNotice", list);
		return SUCCESS;
	}
	/**
	 * addNotice()
	 * @return
	 */
	public String addNotice(){
		publicNoticeBiz.addNotice(publicNotice);
		return "add";
	}
	/**
	 * id set get
	 */
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * toNoticeEdit()
	 * @return
	 */
	public String toNoticeEdit(){
		publicNotice= publicNoticeBiz.findOneNotice(id);
		Scopes.getRequestMap().put("listNotice", publicNotice);
		return "toNoticeEdit";
	}
	/**
	 * noticeEdit()
	 * @return
	 */
	public String noticeEdit(){
		publicNoticeBiz.updateNotice(publicNotice);
		return "update";
	}
	/**
	 * toDelNotice()
	 * @return
	 */
	public String toDelNotice(){
		publicNoticeBiz.delNotice(id);
		return "del";
	}
	/**
	 * showNotice()
	 * @return
	 */
	public String showNotice(){
		List<PublicNotice> notices=publicNoticeBiz.findAllNotice();
		Scopes.getRequestMap().put("notices", notices);
		return "show";
	}
}