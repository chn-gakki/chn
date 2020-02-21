package com.crm.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.HrPosition;
import com.haha.hibernate.HibernateDao;
/**
 * Ö°Î»±í
 * @author ¿­
 *
 */
@Repository("hrPositionDao")
public class HrPositionDao extends HibernateDao<HrPosition, Integer> {
	
	public List<HrPosition> findAll(){
		List<HrPosition> list=this.getSession().createCriteria(HrPosition.class).add(Restrictions.eq("isdelete",1)).list();
		return list;
	}
	public List<HrPosition> findTrashAll(){
		List<HrPosition> list=this.getSession().createCriteria(HrPosition.class).add(Restrictions.eq("isdelete",0)).list();
		return list;
	}
}
