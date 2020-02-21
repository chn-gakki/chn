package com.crm.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.CrmInvoice;
import com.crm.vobj.CrmInvoiceVobj;
import com.haha.hibernate.HibernateDao;
/**
 * 客户发票表
 * @author 凯
 *
 */
@Repository("crmInvoiceDao")
public class CrmInvoiceDao  extends HibernateDao<CrmInvoice, Integer>{

	public List<CrmInvoice> findAllByWhere(CrmInvoiceVobj invoiceVobj) {
		if (invoiceVobj==null) {
			return getSession().createCriteria(CrmInvoice.class).add(Restrictions.eq("isdelete", 1)).list();
		}
		return createCriteria(getSession(),invoiceVobj).add(Restrictions.eq("isdelete", 1)).list();
	}

	private Criteria createCriteria(Session s, CrmInvoiceVobj cy) {
		Criteria c = s.createCriteria(CrmInvoice.class);
		if (cy.getCustomerId() != null && cy.getCustomerId() > 0) {
			c.add(Restrictions.eq("crmCustomer.id", cy.getCustomerId()));
		}
		if (cy.getDepartmentId() != null && cy.getDepartmentId() > 0) {
			c.add(Restrictions.eq("hrDepartment.id", cy.getDepartmentId()));
		}
		if (cy.getEmployeeId() != null && cy.getEmployeeId() > 0) {
			c.add(Restrictions.eq("hrEmployeeByCEmpid.id", cy.getEmployeeId()));
		}
		if (cy.getStartdate() != null) {
			c.add(Restrictions.ge("invoiceDate", cy.getStartdate()));
		}
		if (cy.getEnddate() != null) {
			c.add(Restrictions.le("invoiceDate", cy.getEnddate()));
		}
		if (cy.getNum() != null && cy.getNum().length() > 0) {
			c.add(Restrictions.ilike("invoiceNum", cy.getNum(), MatchMode.ANYWHERE));
		}
		if (cy.getInvoicetype()!=null && cy.getInvoicetype() > 0) {
			c.add(Restrictions.eq("paramSysparam.id", cy.getInvoicetype()));
		}
		return c;
	}

	public List<CrmInvoice> findByOrderId(int orderid) {
		return getSession().createCriteria(CrmInvoice.class).add(Restrictions.eq("isdelete", 1)).add(Restrictions.eq("crmOrder.id", orderid)).list();
	}
	
	public List<CrmInvoice> findTrashAll() {
		return getSession().createCriteria(CrmInvoice.class).add(Restrictions.eq("isdelete", 0)).list();
	}


}
