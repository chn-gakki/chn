package com.crm.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.CrmProduct;
import com.haha.hibernate.HibernateDao;

/**
 * 客户产品表
 * 
 * @author 凯
 * 
 */
@Repository("crmProductDao")
public class CrmProductDao extends HibernateDao<CrmProduct, Integer> {

	public List<CrmProduct> findAll(int id) {
		if (id < 1) {
			return getSession().createCriteria(CrmProduct.class).add(Restrictions.eq("isdelete", 1)).list();
		} else {
			return getSession().createCriteria(CrmProduct.class).add(Restrictions.eq("crmProductCategory.id", id)).add(Restrictions.eq("isdelete", 1)).list();
		}
		
	}
	public List<CrmProduct> findTrashAll(){
		return getSession().createCriteria(CrmProduct.class).add(Restrictions.eq("isdelete", 0)).list();
	}
}
