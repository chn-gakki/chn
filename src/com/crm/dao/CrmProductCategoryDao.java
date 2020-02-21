package com.crm.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.CrmProductCategory;
import com.crm.vobj.ProductCategory;
import com.haha.hibernate.HibernateDao;

/**
 * 客户产品分类表
 * 
 * @author 凯
 * 
 */
@Repository("crmProductCategoryDao")
public class CrmProductCategoryDao extends
		HibernateDao<CrmProductCategory, Integer> {
	/**
	 * 获取 产品树状节点
	 * 
	 * @return
	 */
	public List<ProductCategory> getProductCategories() {
		List<CrmProductCategory> list = this.getSession()
				.createCriteria(CrmProductCategory.class)
				.add(Restrictions.eq("isdelete", 1))
				.add(Restrictions.eq("parentid", 0)).list();
		List<ProductCategory> categories = new ArrayList<ProductCategory>();
		for (CrmProductCategory cpc : list) {
			ProductCategory category = new ProductCategory();
			category.setDeleteTime(cpc.getDeleteTime());
			category.setHrEmployee(cpc.getHrEmployee());
			category.setId(cpc.getId());
			category.setProductCategory(cpc.getProductCategory());
			category.setProductIcon(cpc.getProductIcon());
			category.setParentid(cpc.getParentid());
			category.setCrmProducts(cpc.getCrmProducts());
			category.setIsdelete(cpc.getIsdelete());
			category.categories = this.getSession()
					.createCriteria(CrmProductCategory.class)
					.add(Restrictions.eq("isdelete", 1))
					.add(Restrictions.eq("parentid", cpc.getId())).list();
			categories.add(category);
		}
		return categories;
	}

	/**
	 * ajax 查询子类别
	 * 
	 * @param padid
	 * @return
	 */
	public List<CrmProductCategory> findChildCate(int padid) {
		List<CrmProductCategory> list = this.getSession()
				.createCriteria(CrmProductCategory.class)
				.add(Restrictions.eq("isdelete", 1))
				.add(Restrictions.eq("parentid", padid)).list();
		return list;
	}

	/**
	 * ajax查询全部父类别
	 * 
	 * @return
	 */
	public List<CrmProductCategory> findAll() {
		return this.getSession().createCriteria(CrmProductCategory.class)
				.add(Restrictions.eq("isdelete", 1))
				.add(Restrictions.eq("parentid", 0)).list();
	}

	/**
	 * ajax 获取最大的ID
	 * 
	 * @return
	 */
	public int getMaxId() {
		try {
			int id = (Integer) getSession()
					.createCriteria(CrmProductCategory.class)
					.setProjection(Projections.max("id")).uniqueResult();
			return id;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}

	}

	/**
	 * ajax 查询全部的子节点
	 * 
	 * @return
	 */
	public List<CrmProductCategory> findAllChildCate() {
		return this.getSession().createCriteria(CrmProductCategory.class)
				.add(Restrictions.eq("isdelete", 1))
				.add(Restrictions.ne("parentid", 0)).list();
	}
	
	public List<CrmProductCategory> findTrashAll() {
		return this.getSession().createCriteria(CrmProductCategory.class)
				.add(Restrictions.eq("isdelete", 0)).list();
	}

}
