package com.crm.biz;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.CrmProductCategoryDao;
import com.crm.info.CrmProductCategory;
import com.crm.info.HrEmployee;
import com.crm.tools.Scopes;
import com.crm.vobj.ProductCategory;
@Transactional
@Service("crmProductCategoryBiz")
public class CrmProductCategoryBiz {
	
	private CrmProductCategoryDao crmProductCategoryDao;
	
	public void setCrmProductCategoryDao(CrmProductCategoryDao crmProductCategoryDao) {
		this.crmProductCategoryDao = crmProductCategoryDao;
	}

	public List<ProductCategory> getProductCategories() {
		return crmProductCategoryDao.getProductCategories();
	}
	
	public List<CrmProductCategory> findAll(){
		return crmProductCategoryDao.findBy("isdelete", 1);
	}
	

	public boolean deleteCate(int id){
		try {
			CrmProductCategory category=crmProductCategoryDao.get(id);
			category.setIsdelete(0);
			category.setDeleteTime(new Timestamp(new Date().getTime()));
			category.setHrEmployee((HrEmployee)Scopes.getSessionMap().get("emp"));
			crmProductCategoryDao.save(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean saveCate(CrmProductCategory category) {
		try {
			crmProductCategoryDao.save(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateCate(CrmProductCategory category) {
			CrmProductCategory old=crmProductCategoryDao.get(category.getId());
			old.setParentid(category.getParentid());
			old.setProductCategory(category.getProductCategory());
			old.setProductIcon(category.getProductIcon());
		try {
			crmProductCategoryDao.save(old);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public int getMaxId() {
		return crmProductCategoryDao.getMaxId();
	}

	public List<CrmProductCategory> findCate() {
		return crmProductCategoryDao.findAll();
	}

	public List<CrmProductCategory> findChildCate(Integer parentid) {
		return crmProductCategoryDao.findChildCate(parentid);
	}

	public List<CrmProductCategory> findAllChildCate() {
		return crmProductCategoryDao.findAllChildCate();
	}
	
	public List<CrmProductCategory> findTrashAll(){
		return crmProductCategoryDao.findTrashAll();
	}

	public boolean deleteById(int id) {
		try {
			crmProductCategoryDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean doTrashAdd(int id) {
		try {
			CrmProductCategory category=crmProductCategoryDao.get(id);
			category.setIsdelete(1);
			category.setDeleteTime(null);
			crmProductCategoryDao.save(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
