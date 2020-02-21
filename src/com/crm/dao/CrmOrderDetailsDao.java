package com.crm.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.CrmOrderDetails;
import com.crm.info.CrmProduct;
import com.haha.hibernate.HibernateDao;

/**
 * 客户订单详细表
 * @author 凯
 *
 */
@Repository("crmOrderDetailsDao")
public class CrmOrderDetailsDao extends HibernateDao<CrmOrderDetails, Integer> {

	public CrmProduct getProductByCateId(int id) {
		return (CrmProduct) getSession().createCriteria(CrmProduct.class).add(Restrictions.eq("productId", id)).uniqueResult();
	}
	
}
