package com.crm.biz;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.SysRoleDao;
import com.crm.info.HrEmployee;
import com.crm.info.SysRole;
import com.crm.tools.Scopes;

@Transactional
@Service("sysRoleBiz")
public class SysRoleBiz {
	
	private SysRoleDao sysRoleDao;
	

	public void setSysRoleDao(SysRoleDao sysRoleDao) {
		this.sysRoleDao = sysRoleDao;
	}


	public List<SysRole> findAll() {
		return sysRoleDao.getAll();
	}


	public boolean add(SysRole role) {
		role.setCreatedate(new Date());
		role.setHrEmployeeByCreateid((HrEmployee)Scopes.getSessionMap().get("emp"));
		try {
			sysRoleDao.save(role);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}


	public SysRole findOne(int id) {
		return sysRoleDao.get(id);
	}


	public boolean update(SysRole role) {
		SysRole r=sysRoleDao.get(role.getRoleid());
		r.setChildmenus(role.getChildmenus());
		r.setHrEmployeeByUpdateid((HrEmployee)Scopes.getSessionMap().get("emp"));
		r.setUpdatedate(role.getCreatedate());
		r.setRoledscript(role.getRoledscript());
		r.setRolename(role.getRolename());
		try {
			sysRoleDao.save(r);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
