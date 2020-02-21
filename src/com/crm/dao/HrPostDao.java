package com.crm.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.HrPost;
import com.haha.hibernate.HibernateDao;
/**
 * ¸ÚÎ»±í
 * @author ¿­
 *
 */
@Repository("hrPostDao")
public class HrPostDao extends HibernateDao<HrPost, Integer> {
	
	public List<HrPost> findAll(){
		List<HrPost> list=this.getSession().createCriteria(HrPost.class).add(Restrictions.eq("isdelete",1)).list();
		return list;
	}

	public List<HrPost> findAllByPositionId(int id) {
		return getSession().createCriteria(HrPost.class).add(Restrictions.eq("isdelete", 1)).add(Restrictions.eq("hrPosition.id", id)).list();
	}
	public List<HrPost> findTrashAll() {
		return getSession().createCriteria(HrPost.class).add(Restrictions.eq("isdelete", 0)).list();
	}
}
