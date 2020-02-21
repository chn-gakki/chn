package com.crm.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.CrmCustomer;
import com.crm.info.CrmFollow;
import com.crm.vobj.CrmCustomeVobj;
import com.haha.hibernate.HibernateDao;

/**
 * 客户表
 * 
 * @author 
 * 
 */
@Repository("crmCustomerDao")
public class CrmCustomerDao extends HibernateDao<CrmCustomer, Integer> {

	public List<CrmCustomer> findAllByWhere(CrmCustomeVobj cy) {
		if (cy == null) {
			return findAll();
		}
		Criteria c = createCriter(this.getSession(), cy);
		return c.add(Restrictions.eq("isdelete", 1)).list();
	}

	public List<CrmCustomer> findAll() {
		return getSession().createCriteria(CrmCustomer.class)
				.add(Restrictions.eq("isdelete", 1)).list();
	}

	private Criteria createCriter(Session s, CrmCustomeVobj cy) {
		Criteria c = s.createCriteria(CrmCustomer.class);
		if (cy.getCustomer() != null && cy.getCustomer().length() > 0) {
			// 公司不为空
			c.add(Restrictions.ilike("customer", cy.getCustomer(),
					MatchMode.ANYWHERE));
		}
		if (cy.getDepartmentId() != null && cy.getDepartmentId() > 0) {
			// 部门不为空
			c.add(Restrictions.eq("hrDepartment.id", cy.getDepartmentId()));
		}
		if (cy.getEmployeeId() != null && cy.getEmployeeId() > 0) {
			// 部门不为空
			c.add(Restrictions.eq("hrEmployeeByEmployeeId.id",
					cy.getEmployeeId()));
		}
		if (cy.getTel() != null && cy.getTel().length() > 0) {
			// 电话不为空
			c.add(Restrictions.ilike("tel", cy.getTel(), MatchMode.ANYWHERE));
		}
		if (cy.getCreateDateStart() != null) {
			// 创建时间起始不为空
			c.add(Restrictions.ge("createDate", cy.getCreateDateStart()));
		}
		if (cy.getCreateDateEnd() != null) {
			// 创建时间末尾不为空
			c.add(Restrictions.le("createDate", cy.getCreateDateEnd()));
		}
		if (cy.getProvincesId() != null && cy.getProvincesId() > 0) {
			// 省份不为空
			c.add(Restrictions.eq("paramCityByProvincesId.id",
					cy.getProvincesId()));
		}
		if (cy.getCityId() != null && cy.getCityId() > 0) {
			// 城市不为空
			c.add(Restrictions.eq("paramCityByCityId.id", cy.getCityId()));
		}
		if (cy.getLastfollowStart() != null) {
			// 创建时间起始不为空
			c.add(Restrictions.ge("lastfollow", cy.getLastfollowStart()));
		}
		if (cy.getLastfollowEnd() != null) {
			// 创建时间末尾不为空
			c.add(Restrictions.le("lastfollow", cy.getLastfollowEnd()));
		}
		if (cy.getCustomertypeId() != null && cy.getCustomertypeId() > 0) {
			// 员工类型不为空
			c.add(Restrictions.eq("paramSysparamByCustomertypeId.id",
					cy.getCustomertypeId()));
		}
		if (cy.getCustomerlevelId() != null && cy.getCustomerlevelId() > 0) {
			// 员工级别不为空
			c.add(Restrictions.eq("paramSysparamByCustomerlevelId.id",
					cy.getCustomerlevelId()));
		}
		return c;
	}

	/**
	 * 查看某客户的跟进 数据
	 * 
	 * @param id
	 * @return
	 */
	public List<CrmFollow> findOne(int id) {
		return this.getSession().createCriteria(CrmFollow.class)
				.add(Restrictions.eq("crmCustomer.id", id))
				.add(Restrictions.eq("isdelete", 1)).list();

	}
	
	public List<CrmCustomer> findTrashAll(){
		return getSession().createCriteria(CrmCustomer.class).add(Restrictions.eq("isdelete", 0)).list();
	}
}
