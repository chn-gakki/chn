package com.crm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crm.info.PublicNotice;
import com.haha.hibernate.HibernateDao;

/**
 * 公共公告表
 * @author 凯
 *
 */
@Repository("publicNoticeDao")
public class PublicNoticeDao  extends HibernateDao<PublicNotice, Integer>{

	public List<PublicNotice> findAllNotice() {
		List<PublicNotice> list = this.getSession().createCriteria(PublicNotice.class).list();
		return list;
	}
}
