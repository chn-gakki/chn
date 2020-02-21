package com.crm.biz;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.SysLoginDao;
import com.crm.info.HrEmployee;
import com.crm.info.SysLogin;
import com.crm.tools.Scopes;

@Transactional
@Service("sysLoginBiz")
public class SysLoginBiz {
	private SysLoginDao sysLoginDao;

	public void setSysLoginDao(SysLoginDao sysLoginDao) {
		this.sysLoginDao = sysLoginDao;
	}
	
	public boolean add(SysLogin login){
		try {
			HrEmployee employee = (HrEmployee) Scopes.getSessionMap().get("emp");
			login.setLogintime(new Timestamp(new Date().getTime()));
			login.setTitle("");
			login.setHrEmployee(employee);
			login.setEmpName(employee.getName());
			sysLoginDao.save(login);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
