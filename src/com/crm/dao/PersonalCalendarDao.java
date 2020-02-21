package com.crm.dao;

import org.springframework.stereotype.Repository;

import com.crm.info.PersonalCalendar;
import com.haha.hibernate.HibernateDao;

/**
 * 个人日程表
 * @author 凯
 *
 */
@Repository("PersonalCalendarDao")
public class PersonalCalendarDao extends HibernateDao<PersonalCalendar, Integer>{
	
}
