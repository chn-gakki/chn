package com.crm.biz;

import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.CrmFollowDao;
import com.crm.info.CrmFollow;
import com.crm.info.HrEmployee;
import com.crm.tools.Scopes;
import com.crm.vobj.CrmFollowVobj;
@Transactional
@Service("crmFollowBiz")
public class CrmFollowBiz {
	private CrmFollowDao crmFollowDao;

	public void setCrmFollowDao(CrmFollowDao crmFollowDao) {
		this.crmFollowDao = crmFollowDao;
	}
	
	public List<CrmFollow> findAllByCusId(int id){
		return crmFollowDao.findAllByCusId(id);
	}

	public boolean addFollow(CrmFollow follow) {
		try {
			follow.setIsdelete(1);
			HrEmployee employee=(HrEmployee) Scopes.getSessionMap().get("emp");
			follow.setHrDepartment(employee.getHrDepartment());
			follow.setHrEmployee(employee);
			crmFollowDao.save(follow);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateFollow(CrmFollow follow) {
		try {
			CrmFollow oldFollow=crmFollowDao.get(follow.getId());
			oldFollow.setFollow(follow.getFollow());
			oldFollow.setParamSysparam(follow.getParamSysparam());
			oldFollow.setFollowDate(follow.getFollowDate());
			crmFollowDao.save(oldFollow);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<CrmFollow> findAllByWhere(CrmFollowVobj followvobj) {
		return crmFollowDao.findAllByWhere(followvobj);
	}
	public List<CrmFollow> findTrashAll(){
		return crmFollowDao.findTrashAll();
	}

	public boolean deleteById(int id) {
		try {
			crmFollowDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean doTrashAdd(int id) {
		CrmFollow  old = crmFollowDao.get(id);
		old.setDeleteTime(null);
		old.setIsdelete(1);
		try {
			crmFollowDao.save(old);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	public boolean deleteFalse(int id) {
		CrmFollow  old = crmFollowDao.get(id);
		old.setDeleteTime(new Date());
		old.setIsdelete(0);
		try {
			crmFollowDao.save(old);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
