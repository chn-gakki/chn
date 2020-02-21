package com.crm.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.CrmContact;
import com.crm.vobj.CrmContactVobj;
import com.haha.hibernate.HibernateDao;

/**
 * 联系人表
 * 
 * @author 凯
 * 
 */
@Repository("crmContactDao")
public class CrmContactDao extends HibernateDao<CrmContact, Integer>  {
	
	public List<CrmContact> findAllByWhere(CrmContactVobj cy){
		Session s=this.getSession();
		if(cy==null){
			return s.createCriteria(CrmContact.class).add(Restrictions.eq("isdelete", 1)).list();
		}else{
			return createCriter(s,cy).add(Restrictions.eq("isdelete", 1)).list();
		}
	}

	private Criteria createCriter(Session s, CrmContactVobj cy) {
		Criteria c=s.createCriteria(CrmContact.class);
		if(cy.getCustomerId() != null && cy.getCustomerId() > 0){
			//公司不为空
			c.add(Restrictions.eq("crmCustomer.id",cy.getCustomerId()));
		}
		if(cy.getCname()!=null && cy.getCname().length()>0){
			//联系人不为空
			c.add(Restrictions.ilike("CName",cy.getCname(),MatchMode.ANYWHERE));
		}
		if(cy.getCqq()!=null && cy.getCqq().length()>0){
			//QQ不为空
			c.add(Restrictions.ilike("CQq",cy.getCqq(),MatchMode.ANYWHERE));
		}
		if(cy.getcCreatedateStart()!=null){
			c.add(Restrictions.ge("CCreatedate", cy.getcCreatedateStart()));
		}
		if(cy.getcCreatedateEnd()!=null){
			c.add(Restrictions.le("CCreatedate", cy.getcCreatedateEnd()));
		}
		if(cy.getCmob()!=null && cy.getCmob().length()>0){
			//手机不为空
			c.add(Restrictions.ilike("CMob",cy.getCmob(),MatchMode.ANYWHERE));
		}
		return c;
	}
	
	public List<CrmContact> findTrashAll(){
		return getSession().createCriteria(CrmContact.class).add(Restrictions.eq("isdelete", 0)).list();
	}
}
