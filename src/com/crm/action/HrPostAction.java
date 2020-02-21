package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.HrPostBiz;
import com.crm.info.HrPost;
import com.crm.tools.Scopes;
import com.crm.tools.WebTools;
import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller("hrPostAction")
public class HrPostAction extends ActionSupport {
	
	private HrPostBiz hrPostBiz;
	public void setHrPostBiz(HrPostBiz hrPostBiz) {
		this.hrPostBiz = hrPostBiz;
	}
	/**
	 * 默认全查
	 */
	public String execute() {
		List<HrPost> list=hrPostBiz.findAll();
		Scopes.getRequestMap().put("listdata", list);
		return SUCCESS;
	}
	/**
	 * 传值
	 */
	private HrPost post;
	public HrPost getPost() {
		return post;
	}
	public void setPost(HrPost post) {
		this.post = post;
	}
	/**
	 * 添加
	 * @return
	 */
	public String add(){
		post.setIsdelete(1);
		hrPostBiz.addPost(post);
		return "add";
	}
	/**
	 * ID
	 */
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * 假删除
	 * @return
	 */
	public String deleteById(){
		hrPostBiz.deleteFalse(id);
		return "delete";
	}
	/**
	 * 单查
	 * @return
	 */
	public String findOne(){
		Scopes.getRequestMap().put("listdata", hrPostBiz.findOneHrpost(id));
		return "findone";
	}
	
	public String update(){
		hrPostBiz.update(post);
		return "update";
	}
	
	public String ajaxLoadPostByPositionId(){
		List<HrPost> list = hrPostBiz.findAllByPositionId(id);
		WebTools.jsonClearPost(list);
		String data=WebTools.convertJson(list);
		Scopes.getRequestMap().put("data", data);
		return "ajax";
	}
	public String trashAll(){
		Scopes.getRequestMap().put("listdata", hrPostBiz.findTrashAll());
		return "trash";
	}
	public String trashDel(){
		hrPostBiz.deleteById(id);
		return trashAll();
	}
	public String trashAdd(){
		hrPostBiz.doTrashAdd(id);
		return trashAll();
	}
}