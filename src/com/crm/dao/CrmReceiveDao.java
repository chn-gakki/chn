package com.crm.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.CrmReceive;
import com.crm.vobj.CrmReceiveVobj;
import com.haha.hibernate.HibernateDao;

/**
 * 客户收款表
 * @author 凯
 *
 */
@Repository("crmReceiveDao")
public class CrmReceiveDao extends HibernateDao<CrmReceive, Integer> {

	public List<CrmReceive> findAllByOrderId(int ordid) {
		return getSession().createCriteria(CrmReceive.class).add(Restrictions.eq("isdelete", 1)).add(Restrictions.eq("crmOrder.id", ordid)).list();
	}

	public List<CrmReceive> findAllByWhere(CrmReceiveVobj receivevobj) {
		if (receivevobj==null) {
			return getSession().createCriteria(CrmReceive.class).add(Restrictions.eq("isdelete", 1)).list();
		}
		return createCriter(getSession(),receivevobj).add(Restrictions.eq("isdelete", 1)).list();
	}

	private Criteria createCriter(Session s, CrmReceiveVobj cy) {
		Criteria c = s.createCriteria(CrmReceive.class);
		if (cy.getCustomerId() != null && cy.getCustomerId() > 0) {
			// 公司不为空
			c.add(Restrictions.eq("crmCustomer.id", cy.getCustomerId()));
		}
		if (cy.getDepartmentId() != null && cy.getDepartmentId() > 0) {
			// 业务部门不为空
			c.add(Restrictions.eq("hrDepartment.id", cy.getDepartmentId()));
		}
		if (cy.getEmployeeId() != null && cy.getEmployeeId() > 0) {
			// 业务员不为空
			c.add(Restrictions.eq("hrEmployeeByCEmpid.id", cy.getEmployeeId()));
		}
		if (cy.getStartdate() != null) {
			//签订时间开始
			c.add(Restrictions.ge("receiveDate", cy.getStartdate()));
		}
		if (cy.getEnddate() != null) {
			//签订时间结束
			c.add(Restrictions.le("receiveDate", cy.getEnddate()));
		}
		if (cy.getNum() != null && cy.getNum().length() > 0) {
			// 根进内容不为空
			c.add(Restrictions.ilike("receiveNum", cy.getNum(), MatchMode.ANYWHERE));
		}
		if (cy.getPaytype()!=null && cy.getPaytype() > 0) {
			c.add(Restrictions.eq("paramSysparamByReceiveTypeId.id", cy.getPaytype()));
		}
		return c;
	}
	
	public List<CrmReceive> findTrashAll() {
		return getSession().createCriteria(CrmReceive.class).add(Restrictions.eq("isdelete", 0)).list();
	}
	
}
