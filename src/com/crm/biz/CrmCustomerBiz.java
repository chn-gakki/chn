package com.crm.biz;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.CrmCustomerDao;
import com.crm.info.CrmCustomer;
import com.crm.info.HrEmployee;
import com.crm.tools.Scopes;
import com.crm.vobj.CrmCustomeVobj;

@Transactional
@Service("crmCustomerBiz")
public class CrmCustomerBiz {

	private CrmCustomerDao crmCustomerDao;

	public void setCrmCustomerDao(CrmCustomerDao crmCustomerDao) {
		this.crmCustomerDao = crmCustomerDao;
	}
	/**
	 * 新增对象
	 * @param customer
	 * @return
	 */
	public CrmCustomer addCustomer(CrmCustomer customer) {
		customer.setIsdelete(1);
		//customer.setHrEmployeeByCreateId((HrEmployee) Scopes.getSessionMap().get("emp"));
		customer.setCreateDate(new Date());
		// contact.setHrEmployee((HrEmployee)Scopes.getSessionMap().get("emp"));
		try {
			crmCustomerDao.save(customer);
			return customer;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 真删除
	 * @param id
	 * @return
	 */
	public boolean deleteById(int id) {
		try {
			crmCustomerDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	/**
	 * 修改对象
	 * @param customer
	 * @return
	 */
	public boolean update(CrmCustomer customer) {
		CrmCustomer c = crmCustomerDao.get(customer.getId());
		c.setCustomer(customer.getCustomer());
		c.setSite(customer.getSite());
		c.setTel(customer.getTel());
		c.setAddress(customer.getAddress());
		c.setParamCityByProvincesId(customer.getParamCityByProvincesId());
		c.setParamCityByCityId(customer.getParamCityByCityId());
		c.setParamSysparamByCustomertypeId(customer.getParamSysparamByCustomertypeId());
		c.setParamSysparamByCustomersourceId(customer.getParamSysparamByCustomersourceId());
		c.setParamSysparamByCustomerlevelId(customer.getParamSysparamByCustomerlevelId());
		c.setDescripe(customer.getDescripe());
		c.setRemarks(customer.getRemarks());
		c.setPrivatecustomer(customer.getPrivatecustomer());
		c.setHrDepartment(customer.getHrDepartment());
		c.setHrEmployeeByEmployeeId(customer.getHrEmployeeByEmployeeId());
		//c.setHrEmployeeByCreateId((HrEmployee) Scopes.getSessionMap().get("emp"));
		try {
			crmCustomerDao.save(c);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * 预删除
	 * @param id
	 * @return
	 */
	public boolean deleteFalse(int id) {
		CrmCustomer customer = crmCustomerDao.get(id);
		customer.setIsdelete(0);// 0就是已删除
		customer.setDeleteTime(new Timestamp(new Date().getTime()));
		try {
			crmCustomerDao.save(customer);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	/**
	 * 全查  isdelete=1 有效数据
	 * @return
	 */
	public List<CrmCustomer> findAll(){
		return crmCustomerDao.findAll();
	}
	/**
	 * 加条件查询
	 * @param bw
	 * @return
	 */
	public List<CrmCustomer> findAllByWhere(CrmCustomeVobj bw) {
		return crmCustomerDao.findAllByWhere(bw);
	}
	/**
	 * 根据id 单查
	 * @param id
	 * @return
	 */
	public CrmCustomer findOne(int id){
		return crmCustomerDao.get(id);
	}
	public List<CrmCustomer> findTrashAll(){
		return crmCustomerDao.findTrashAll();
	}
	public boolean doTrashAdd(int id) {
		CrmCustomer customer = crmCustomerDao.get(id);
		customer.setIsdelete(1);	//0就是已删除
		customer.setDeleteTime(null);
		try {
			crmCustomerDao.save(customer);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
