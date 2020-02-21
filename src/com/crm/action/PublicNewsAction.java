package com.crm.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.PublicNewsBiz;
import com.crm.info.PublicNews;
import com.crm.tools.Scopes;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Scope("prototype")
@Controller("publicNewsAction")
public class PublicNewsAction extends ActionSupport {

	private PublicNewsBiz publicNewsBiz;
	public PublicNewsBiz getPublicNewsBiz() {
		return publicNewsBiz;
	}
	public void setPublicNewsBiz(PublicNewsBiz publicNewsBiz) {
		this.publicNewsBiz = publicNewsBiz;
	}
	//全查
	public String execute() {
		ActionContext a=ActionContext.getContext();
		a.put("listx", publicNewsBiz.findAll());
		return SUCCESS;
	}
	//删除
	private PublicNews news;
	public PublicNews getNews() {
		return news;
	}
	public void setNews(PublicNews news) {
		this.news = news;
	}
	public String del() {
		publicNewsBiz.deleteFalse(news.getId());
		return "up_ok";
	}
	//修改单查
	public String findOne() {
		ActionContext a=ActionContext.getContext();
		a.put("one", publicNewsBiz.findOne(news.getId()));
		return "ones";
	}
	//修改
	public String update() {
		publicNewsBiz.update(news);
		return "up_ok";
	}
	//添加
	public String addNews(){
		publicNewsBiz.addNews(news);
		return "up_ok";
	}
	public String showNews(){
		List<PublicNews> todayNews=publicNewsBiz.findTodayNew();
		Scopes.getRequestMap().put("todayNews", todayNews);
		List<PublicNews> yesterdayNews=publicNewsBiz.findYesterdayNew();
		Scopes.getRequestMap().put("yesterdayNews", yesterdayNews);
		return "show";
	}
}