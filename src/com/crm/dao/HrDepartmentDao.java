package com.crm.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.HrDepartment;
import com.haha.hibernate.HibernateDao;
/**
 * ≤ø√≈±Ì
 * @author ø≠
 *
 */
@Repository("hrDepartmentDao")
public class HrDepartmentDao extends HibernateDao<HrDepartment, Integer>{
	
	public List<HrDepartment> findTrashAll(){
		return getSession().createCriteria(HrDepartment.class).add(Restrictions.eq("isdelete", 0)).list();
	}

	public Object doTrashAdd(int id) {
		// TODO Auto-generated method stub
		return null;
	}
}
