package com.crm.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.PersonalEvent;
import com.haha.hibernate.HibernateDao;

@Repository("personalEventDao")
public class PersonalEventDao extends HibernateDao<PersonalEvent, Integer> {
	
	public List<PersonalEvent> findByEmpId(int empid){
		return getSession().createCriteria(PersonalEvent.class).add(Restrictions.eq("hrEmployee.id", empid)).list();
	}
	
}
