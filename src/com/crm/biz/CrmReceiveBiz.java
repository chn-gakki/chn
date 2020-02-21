package com.crm.biz;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.CrmReceiveDao;
import com.crm.info.CrmReceive;
import com.crm.info.HrEmployee;
import com.crm.tools.Scopes;
import com.crm.vobj.CrmReceiveVobj;

@Transactional
@Service("crmReceiveBiz")
public class CrmReceiveBiz {
	private CrmReceiveDao crmReceiveDao;

	public void setCrmReceiveDao(CrmReceiveDao crmReceiveDao) {
		this.crmReceiveDao = crmReceiveDao;
	}
	
	public List<CrmReceive> findAllByOrderId(int ordid){
		return crmReceiveDao.findAllByOrderId(ordid);
	}

	public boolean add(CrmReceive receive) {
		try {
			receive.setIsdelete(1);
			receive.setCreateDate(new Date());
			receive.setHrEmployeeByCreateId((HrEmployee)Scopes.getSessionMap().get("emp"));
			crmReceiveDao.save(receive);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean update(CrmReceive receive) {
		try {
			CrmReceive rec=crmReceiveDao.get(receive.getId());
			rec.setReceiveAmount(receive.getReceiveAmount());
			rec.setParamSysparamByReceiveDirectionId(receive.getParamSysparamByReceiveDirectionId());
			rec.setParamSysparamByReceiveTypeId(receive.getParamSysparamByReceiveTypeId());
			rec.setReceiveNum(receive.getReceiveNum());
			rec.setReceiveDate(receive.getReceiveDate());
			rec.setHrDepartment(receive.getHrDepartment());
			rec.setHrEmployeeByCEmpid(receive.getHrEmployeeByCEmpid());
			rec.setRemarks(receive.getRemarks());
			crmReceiveDao.save(rec);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public CrmReceive findOne(int receiveid) {
		return crmReceiveDao.get(receiveid);
	}

	public boolean deleteFlase(int receiveid) {
		try{
			CrmReceive crmre = crmReceiveDao.get(receiveid);
			crmre.setIsdelete(0);
			crmre.setDeleteTime(new Date());
			crmReceiveDao.save(crmre);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<CrmReceive> findAllByWhere(CrmReceiveVobj receivevobj) {
		return crmReceiveDao.findAllByWhere(receivevobj);
	}
	
	public List<CrmReceive> findTrashAll(){
		return crmReceiveDao.findTrashAll();
	}

	public boolean doTrashAdd(int receiveid) {
		try{
			CrmReceive crmre = crmReceiveDao.get(receiveid);
			crmre.setIsdelete(1);
			crmre.setDeleteTime(null);
			crmReceiveDao.save(crmre);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteById(int receiveid) {
		try {
			crmReceiveDao.delete(receiveid);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
