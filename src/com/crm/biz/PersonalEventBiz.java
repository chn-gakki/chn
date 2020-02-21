package com.crm.biz;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.PersonalEventDao;
import com.crm.info.PersonalEvent;
@Transactional
@Service("personalEventBiz")
public class PersonalEventBiz {
	
	private PersonalEventDao personalEventDao;

	public void setPersonalEventDao(PersonalEventDao personalEventDao) {
		this.personalEventDao = personalEventDao;
	}
	public List<PersonalEvent> findByEmpId(int empid){
		return personalEventDao.findByEmpId(empid);
	}
}
