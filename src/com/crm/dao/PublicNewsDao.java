package com.crm.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.PublicNews;
import com.haha.hibernate.HibernateDao;

/**
 * 公共新闻表
 * @author 凯
 *
 */
@Repository("publicNewsDao")
public class PublicNewsDao extends HibernateDao<PublicNews, Integer>{
	public List<PublicNews> findAll(){
		Session s=this.getSession();
		return s.createCriteria(PublicNews.class).add(Restrictions.eq("isdelete", 1)).list();
	}

	public List<PublicNews> findTodayNews(Date date) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String now=sdf.format(date);
		date=java.sql.Date.valueOf(now);
		return getSession().createCriteria(PublicNews.class).add(Restrictions.eq("isdelete", 1))
		.add(Restrictions.eq("newsTime",date)).list();
		
	}
}
