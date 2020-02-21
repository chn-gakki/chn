package com.crm.biz;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.CrmProductCategoryDao;
import com.crm.dao.CrmProductDao;
import com.crm.info.CrmProduct;
import com.crm.info.CrmProductCategory;

@Transactional
@Service("crmProductBiz")
public class CrmProductBiz {
	private CrmProductDao crmProductDao;
	public void setCrmProductDao(CrmProductDao crmProductDao) {
		this.crmProductDao = crmProductDao;
	}

	private CrmProductCategoryDao crmProductCategoryDao;
	public void setCrmProductCategoryDao(CrmProductCategoryDao crmProductCategoryDao) {
		this.crmProductCategoryDao = crmProductCategoryDao;
	}
	/**
	 * 按分类查询产品
	 * @param id
	 * @return
	 */
	public List<CrmProduct> findByCateId(int id){
		return crmProductDao.findAll(id);
	}
	public CrmProduct findOne(int id){
		return crmProductDao.get(id);
	}
	
	public boolean update(CrmProduct crmProduct){
		try {
			CrmProduct old=crmProductDao.get(crmProduct.getProductId());
			old.setCrmProductCategory(crmProduct.getCrmProductCategory());
			old.setProductName(crmProduct.getProductName());
			old.setPrice(crmProduct.getPrice());
			old.setRemarks(crmProduct.getRemarks());
			old.setSpecifications(crmProduct.getSpecifications());
			old.setUnit(crmProduct.getUnit());
			crmProductDao.save(old);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteOne(int id){
		try {
			crmProductDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public List<CrmProductCategory> findAllCategList(){
		return crmProductCategoryDao.findAll();
	}
	public void advanceDel(int id) {
		CrmProduct product=crmProductDao.get(id);
		product.setIsdelete(0);
		product.setDeleteTime(new Date());
		try {
			crmProductDao.save(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void addOne(CrmProduct crmProduct){
		try {
			crmProductDao.save(crmProduct);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<CrmProduct> findTrashAll(){
		return crmProductDao.findTrashAll();
	}
	public void doTrashAdd(int id) {
		CrmProduct product=crmProductDao.get(id);
		product.setIsdelete(1);
		product.setDeleteTime(null);
		try {
			crmProductDao.save(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
