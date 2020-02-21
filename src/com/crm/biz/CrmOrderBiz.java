package com.crm.biz;

import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.biz.CrmOrderBiz;
import com.crm.dao.CrmOrderDao;
import com.crm.info.CrmInvoice;
import com.crm.info.CrmOrder;
import com.crm.info.CrmReceive;
import com.crm.vobj.CrmOrderVobj;
@Transactional
@Service("crmOrderBiz")
public class CrmOrderBiz {
	
	private CrmOrderDao crmOrderDao;
	public void setCrmOrderDao(CrmOrderDao crmOrderDao) {
		this.crmOrderDao = crmOrderDao;
	}

	public List<CrmOrder> findAll() {	
		return crmOrderDao.findAll();
	}

	public boolean deleteById(int id) {
		try {
			crmOrderDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public List<CrmOrder> findTrashAll(){
		return crmOrderDao.findTrashAll();
	}

	public boolean add(CrmOrder crmOrder) {
		try {
			crmOrder.setCreateDate(new Date());
			crmOrder.setIsdelete(null);
			crmOrder.setArrearsInvoice(0.0);
			crmOrder.setArrearsMoney(0.0);
			crmOrder.setInvoiceMoney(0.0);
			crmOrder.setReceiveMoney(0.0);
			crmOrder.setIsdelete(1);
			//crmOrder.setHrEmployeeByCreateId((HrEmployee)Scopes.getSessionMap().get("emp"));
			crmOrderDao.save(crmOrder);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean update(CrmOrder crmOrder) {
		CrmOrder order=crmOrderDao.get(crmOrder.getId());
		order.setCrmCustomer(crmOrder.getCrmCustomer());
		order.setParamSysparamByOrderStatusId(crmOrder.getParamSysparamByOrderStatusId());
		order.setParamSysparamByPayTypeId(crmOrder.getParamSysparamByPayTypeId());
		order.setHrDepartmentByFDepId(crmOrder.getHrDepartmentByFDepId());
		order.setHrEmployeeByFEmpId(crmOrder.getHrEmployeeByFEmpId());
		order.setOrderDate(crmOrder.getOrderDate());
		order.setOrderDetails(crmOrder.getOrderDetails());
		try {
			crmOrderDao.save(order);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public CrmOrder findOne(int id){
		return crmOrderDao.get(id);
	}
	
	public List<CrmOrder> findAllByWhere(CrmOrderVobj by){
		return crmOrderDao.findAllByWhere(by);
	}
	
	public boolean deleteFalse(int id) {
		CrmOrder crmOrder = crmOrderDao.get(id);
		if(crmOrder==null) return false;
		crmOrder.setIsdelete(0);//0就是已删除
		crmOrder.setDeleteTime(new Date());
		try {
			crmOrderDao.save(crmOrder);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public void saveCalculate(CrmReceive receive) {
		try {
			CrmOrder order = crmOrderDao.get(receive.getCrmOrder().getId());
			if (order.getReceiveMoney()==null) {
				order.setReceiveMoney(0.0);
			}
			order.setReceiveMoney(order.getReceiveMoney()+receive.getReceiveAmount());
			if (order.getArrearsMoney()==null) {
				order.setArrearsMoney(0.0);
			}
			if (order.getOrderAmount() ==null) {
				order.setOrderAmount(0.0);
			}
			order.setArrearsMoney( order.getOrderAmount()-order.getReceiveMoney() );
			crmOrderDao.save(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void saveCalculate(CrmInvoice invoice){
		try {
			CrmOrder order = crmOrderDao.get(invoice.getCrmOrder().getId());
			if (order.getInvoiceMoney()==null) {
				order.setInvoiceMoney(0.0);
			}
			order.setInvoiceMoney(order.getInvoiceMoney()+invoice.getInvoiceAmount());
			if (order.getOrderAmount()==null) {
				order.setOrderAmount(0.0);
			}
			if (order.getArrearsInvoice()==null) {
				order.setArrearsInvoice(0.0);
			}
			order.setArrearsInvoice(order.getOrderAmount()-order.getInvoiceMoney());
			crmOrderDao.save(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean doTrashAdd(Integer id) {
		CrmOrder crmOrder = crmOrderDao.get(id);
		if(crmOrder==null) return false;
		crmOrder.setIsdelete(1);//0就是已删除
		crmOrder.setDeleteTime(null);
		try {
			crmOrderDao.save(crmOrder);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
