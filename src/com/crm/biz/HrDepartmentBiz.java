package com.crm.biz;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.HrDepartmentDao;
import com.crm.info.HrDepartment;

@Transactional
@Service("hrDepartmentBiz")
public class HrDepartmentBiz {
	private HrDepartmentDao hrDepartmentDao;

	public void setHrDepartmentDao(HrDepartmentDao hrDepartmentDao) {
		this.hrDepartmentDao = hrDepartmentDao;
	}
	
	public List<HrDepartment> findAll(){
		return hrDepartmentDao.findBy("isdelete", 1);
	}
	
	public HrDepartment findOneHrDepartment(int id) {
		return hrDepartmentDao.get(id);
	}
	public boolean addDepartment(HrDepartment department){
		try {
			department.setIsdelete(1);
			hrDepartmentDao.save(department);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean update(HrDepartment department){
		HrDepartment hrDepartment = hrDepartmentDao.get(department.getId());
		hrDepartment.setDName(department.getDName());
		hrDepartment.setDEmployee(department.getDEmployee());
		hrDepartment.setDAddress(department.getDAddress());
		hrDepartment.setDEmail(department.getDEmail());
		hrDepartment.setDDescription(department.getDDescription());
		try {
			hrDepartmentDao.save(hrDepartment);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	
	public boolean deleteFalse(int id){
		HrDepartment hrDepartment = hrDepartmentDao.get(id);
		hrDepartment.setIsdelete(0);//0就是已删除
		hrDepartment.setDeleteTime(new Date());
		try {
			hrDepartmentDao.save(hrDepartment);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	private int id;
	
	public void setId(int id) {
		this.id = id;
	}

	public List<HrDepartment> findTrashAll(){
		return hrDepartmentDao.findTrashAll();
	}

	public boolean doTrashAdd(int id) {
		HrDepartment hrDepartment = hrDepartmentDao.get(id);
		hrDepartment.setIsdelete(1);//0就是已删除
		hrDepartment.setDeleteTime(null);
		try {
			hrDepartmentDao.save(hrDepartment);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteById(int id){
		try {
			hrDepartmentDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
