package com.crm.biz;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.CrmInvoiceDao;
import com.crm.info.CrmInvoice;
import com.crm.info.HrEmployee;
import com.crm.tools.Scopes;
import com.crm.vobj.CrmInvoiceVobj;

@Transactional
@Service("crmInvoiceBiz")
public class CrmInvoiceBiz {
	private CrmInvoiceDao crmInvoiceDao;
	
	public void setCrmInvoiceDao(CrmInvoiceDao crmInvoiceDao) {
		this.crmInvoiceDao = crmInvoiceDao;
	}
	
	public List<CrmInvoice> findAllByWhere(CrmInvoiceVobj invoiceVobj){
		return crmInvoiceDao.findAllByWhere(invoiceVobj);
	}

	public List<CrmInvoice> findByOrderId(int orderid) {
		return crmInvoiceDao.findByOrderId(orderid);
	}

	public boolean add(CrmInvoice invoice) {
		try {
			invoice.setIsdelete(1);
			invoice.setCreateDate(new Date());
			invoice.setHrEmployeeByCreateId((HrEmployee)Scopes.getSessionMap().get("emp"));
			crmInvoiceDao.save(invoice);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean update(CrmInvoice invoice) {
		CrmInvoice crmInvoice = crmInvoiceDao.get(invoice.getId());
		crmInvoice.setHrDepartment(invoice.getHrDepartment());
		crmInvoice.setHrEmployeeByCEmpid(invoice.getHrEmployeeByCEmpid());
		crmInvoice.setInvoiceAmount(invoice.getInvoiceAmount());
		crmInvoice.setInvoiceContent(invoice.getInvoiceContent());
		crmInvoice.setInvoiceDate(invoice.getInvoiceDate());
		crmInvoice.setInvoiceNum(invoice.getInvoiceNum());
		crmInvoice.setParamSysparam(invoice.getParamSysparam());
		try {
			crmInvoiceDao.save(crmInvoice);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public CrmInvoice findOne(int invoiceid) {
		return crmInvoiceDao.get(invoiceid);
	}

	public boolean deleteFlase(int invoiceid) {
		CrmInvoice invoi = crmInvoiceDao.get(invoiceid);
		invoi.setDeleteTime(new Date());
		invoi.setIsdelete(0);
		try {
			crmInvoiceDao.save(invoi);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public List<CrmInvoice> findTrashAll(){
		return crmInvoiceDao.findTrashAll();
	}

	public boolean doTrashAdd(int invoiceid) {
		CrmInvoice invoi = crmInvoiceDao.get(invoiceid);
		invoi.setDeleteTime(null);
		invoi.setIsdelete(1);
		try {
			crmInvoiceDao.save(invoi);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteById(int invoiceid) {
		try {
			crmInvoiceDao.delete(invoiceid);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
