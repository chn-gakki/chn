package com.crm.biz;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.time.DateUtils;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.PublicNewsDao;
import com.crm.info.PublicNews;
import com.haha.hibernate.HibernateDao;

/**
 * 公共新闻表
 * @author 凯
 *
 */
@Transactional
@Service("publicNewsBiz")
public class PublicNewsBiz {
	PublicNewsDao publicNewsDao;
	
	public PublicNewsDao getPublicNewsDao() {
		return publicNewsDao;
	}
	public void setPublicNewsDao(PublicNewsDao publicNewsDao) {
		this.publicNewsDao = publicNewsDao;
	}
	public List<PublicNews> findAll(){
		return publicNewsDao.findAll();
	}
	public boolean deleteFalse(int id){
		PublicNews c = publicNewsDao.get(id);
		c.setIsdelete(0);//0就是已删除
		c.setDeleteTime(new Date());	
		try {
			publicNewsDao.save(c);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	//单查
	public PublicNews findOne(int id) {
		return publicNewsDao.get(id);
	}
	//修改
	public boolean update(PublicNews news) {
		PublicNews c=publicNewsDao.get(news.getId());
		c.setNewsTitle(news.getNewsTitle());
		c.setNewsContent(news.getNewsContent());
		c.setViewNum(news.getViewNum());
		c.setHrDepartment(news.getHrDepartment());
		c.setHrEmployee(news.getHrEmployee());
		try {
			publicNewsDao.save(c);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	//添加
	public boolean addNews(PublicNews publicNews){
		publicNews.setIsdelete(1);
		publicNews.setViewNum(0);
		publicNews.setNewsTime(new Timestamp(new Date().getTime()));
		try {
			publicNewsDao.save(publicNews);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public List<PublicNews> findTodayNew() {
		return publicNewsDao.findTodayNews(new Date());
	}
	public List<PublicNews> findYesterdayNew(){
		Date yesterday=DateUtils.addDays(new Date(), -1);
		return publicNewsDao.findTodayNews(yesterday);
	}
	
}
