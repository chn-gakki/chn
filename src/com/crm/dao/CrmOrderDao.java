package com.crm.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.CrmOrder;
import com.crm.vobj.CrmOrderVobj;
import com.haha.hibernate.HibernateDao;

/**
 * 客户订单表
 * 
 * @author 凯
 * 
 */
@Repository("crmOrderDao")
public class CrmOrderDao extends HibernateDao<CrmOrder, Integer> {

	public List<CrmOrder> findAll() {
		return this.getSession().createCriteria(CrmOrder.class)
				.add(Restrictions.eq("isdelete", 1)).list();
	}

	public List<CrmOrder> findAllByWhere(CrmOrderVobj cy) {
		Session s = this.getSession();
		if (cy == null) {
			return s.createCriteria(CrmOrder.class)
					.add(Restrictions.eq("isdelete", 1)).list();
		} else {
			Criteria c = createCriter(s, cy);
			return c.add(Restrictions.eq("isdelete", 1)).list();
		}
	}

	private Criteria createCriter(Session s, CrmOrderVobj cy) {
		Criteria c = s.createCriteria(CrmOrder.class);
		if (cy.getCustomerId() != null && cy.getCustomerId() > 0) {
			c.add(Restrictions.eq("crmCustomer.id", cy.getCustomerId()));
		}
		if (cy.getFDepId() != null && cy.getFDepId() > 0) {
			c.add(Restrictions.eq("hrDepartmentByFDepId.id", cy.getFDepId()));
		}
		if (cy.getFEmpId() != null && cy.getFEmpId() > 0) {
			c.add(Restrictions.eq("hrEmployeeByFEmpId.id", cy.getFEmpId()));
		}
		if (cy.getStartOrderdate() != null) {
			c.add(Restrictions.ge("orderDate", cy.getStartOrderdate()));
		}
		if (cy.getEndOrderdate() != null) {
			c.add(Restrictions.le("orderDate", cy.getEndOrderdate()));
		}
		if (cy.getOrderStatus() != null && cy.getOrderStatus() > 0) {
			c.add(Restrictions.eq("paramSysparamByOrderStatusId.id", cy.getOrderStatus()));
		}
		return c;
	}
	
	public List<CrmOrder> findTrashAll() {
		return this.getSession().createCriteria(CrmOrder.class)
				.add(Restrictions.eq("isdelete", 0)).list();
	}
}
