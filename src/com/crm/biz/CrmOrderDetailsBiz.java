package com.crm.biz;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.CrmOrderDao;
import com.crm.dao.CrmOrderDetailsDao;
import com.crm.info.CrmOrder;
import com.crm.info.CrmOrderDetails;
import com.crm.info.CrmProduct;

@Transactional
@Service("crmOrderDetailsBiz")
public class CrmOrderDetailsBiz {
	
	private CrmOrderDetailsDao crmOrderDetailsDao;
	
	public void setCrmOrderDetailsDao(CrmOrderDetailsDao crmOrderDetailsDao) {
		this.crmOrderDetailsDao = crmOrderDetailsDao;
	}
	private CrmOrderDao crmOrderDao;
	
	public void setCrmOrderDao(CrmOrderDao crmOrderDao) {
		this.crmOrderDao = crmOrderDao;
	}
	public boolean delete(int id){
		try {
			CrmOrderDetails details= crmOrderDetailsDao.get(id);
			CrmOrder order = crmOrderDao.get(details.getCrmOrder().getId());
			if (order.getOrderAmount()==null) order.setOrderAmount(0.0);
			order.setOrderAmount(order.getOrderAmount()-details.getAmount());
			crmOrderDao.save(order);
			crmOrderDetailsDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public boolean save(CrmOrderDetails details){
		try {
			crmOrderDetailsDao.save(details);
			int orderid = details.getCrmOrder().getId();
			CrmOrder order = crmOrderDao.get(orderid);
			if (order.getOrderAmount() == null) {
				order.setOrderAmount(0.0);
			}
			order.setOrderAmount(order.getOrderAmount()+details.getAmount());
			crmOrderDao.save(order);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public CrmProduct findProduct(int id) {
		try {		
			return crmOrderDetailsDao.getProductByCateId(id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
