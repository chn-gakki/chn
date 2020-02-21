package com.crm.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.HrEmployee;
import com.haha.hibernate.HibernateDao;
/**
 * Ô±¹¤±í
 * @author ¿­
 *
 */
@Repository("hrEmployeeDao")
public class HrEmployeeDao extends HibernateDao<HrEmployee, Integer> {

	public HrEmployee login(String name, String pwd) {
		return (HrEmployee) this.getSession().createCriteria(HrEmployee.class).add(Restrictions.eq("uid", name))
		.add(Restrictions.eq("pwd", pwd)).uniqueResult();
	}
	
	public List<HrEmployee> findEmpsByDepId(int depid){
		return this.getSession().createCriteria(HrEmployee.class).add(Restrictions.eq("hrDepartment.id", depid)).add(Restrictions.eq("isdelete", 1)).list();
	}

	public List<HrEmployee> findAll() {
		return this.getSession().createCriteria(HrEmployee.class).add(Restrictions.eq("isdelete", 1)).list();
	}
	
	public List<HrEmployee> findTrashAll(){
		return getSession().createCriteria(HrEmployee.class).add(Restrictions.eq("isdelete", 0)).list();
	}

}
