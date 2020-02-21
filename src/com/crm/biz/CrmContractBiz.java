package com.crm.biz;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.CrmContractDao;
import com.crm.info.CrmContract;
import com.crm.info.HrEmployee;
import com.crm.tools.Scopes;
import com.crm.vobj.CrmContractVobj;
@Transactional
@Service("crmContractBiz")
public class CrmContractBiz {
	
	private CrmContractDao crmContractDao;
	
	public void setCrmContractDao(CrmContractDao crmContractDao) {
		this.crmContractDao = crmContractDao;
	}

	public List<CrmContract> findAll() {	
		return crmContractDao.getAll();
	}

	public boolean deleteById(int id) {
		try {
			crmContractDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	public boolean add(CrmContract crmContract) {
		crmContract.setCreateTime(new Date());
		crmContract.setIsdelete(1);
		//crmContract.setHrEmployeeByCreaterId((HrEmployee)Scopes.getSessionMap().get("emp"));
		try {
			crmContractDao.save(crmContract);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean update(CrmContract crmContract) {
		CrmContract c = crmContractDao.get(crmContract.getId());
		c.setCrmCustomer(crmContract.getCrmCustomer());
		c.setSerialnumber(crmContract.getSerialnumber());
		c.setContractAmount(crmContract.getContractAmount());
		c.setContractName(crmContract.getContractName());
		c.setPayCycle(crmContract.getPayCycle());
		c.setStartDate(crmContract.getStartDate());
		c.setEndDate(crmContract.getEndDate());
		c.setSignDate(crmContract.getSignDate());
		c.setCustomerContractor(crmContract.getCustomerContractor());
		c.setHrDepartmentByOurContractorDepid(crmContract.getHrDepartmentByOurContractorDepid());
		c.setHrEmployeeByOurContractorId(crmContract.getHrEmployeeByOurContractorId());
		c.setRemarks(crmContract.getRemarks());
		c.setMainContent(crmContract.getMainContent());
		//Scope.
		try {
			crmContractDao.save(c);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public CrmContract findOne(int id){
		return crmContractDao.get(id);
		
	}
	
	public List<CrmContract> findAllByWhere(CrmContractVobj contractVobj){
		return crmContractDao.findAllByWhere(contractVobj);
	}
	
	public boolean deleteFalse(int id) {
		CrmContract contract = crmContractDao.get(id);
		if(contract==null) return false;
		contract.setIsdelete(0);//0就是已删除
		contract.setDeleteTime(new Timestamp(new Date().getTime()));
		try {
			crmContractDao.save(contract);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public List<CrmContract> findTrashAll(){
		return crmContractDao.findTrashAll();
	}

	public boolean doTrashAll(int id) {
		CrmContract contract = crmContractDao.get(id);
		if(contract==null) return false;
		contract.setIsdelete(1);//0就是已删除
		contract.setDeleteTime(null);
		try {
			crmContractDao.save(contract);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
