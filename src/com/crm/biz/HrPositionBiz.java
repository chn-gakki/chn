package com.crm.biz;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.HrPositionDao;
import com.crm.info.HrEmployee;
import com.crm.info.HrPosition;
import com.crm.info.PublicNotice;
import com.crm.tools.Scopes;
import com.crm.vobj.PageInfo;

@Transactional
@Service("hrPositionBiz")
public class HrPositionBiz  {
	
	private HrPositionDao hrPositionDao;
	
	public void setHrPositionDao(HrPositionDao hrPositionDao) {
		this.hrPositionDao = hrPositionDao;
	}

	public List<HrPosition> findAll(){
		return hrPositionDao.findAll();
	}
	public HrPosition findOneHrposition(int id) {
		return hrPositionDao.get(id);
	}
	public boolean addPosition(HrPosition position){
		try {

			position.setIsdelete(1);
			//position.setHrEmployee(null);
			position.setCreateDate(new Timestamp(new Date().getTime()));
			position.setHrEmployee((HrEmployee)Scopes.getSessionMap().get("emp"));
			hrPositionDao.save(position);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean update(HrPosition position){
		HrPosition hrPosition = hrPositionDao.get(position.getId());
		hrPosition.setPositionOrder(position.getPositionOrder());
		hrPosition.setPositionName(position.getPositionName());
		hrPosition.setParamSysparam(position.getParamSysparam());
		hrPosition.setCreateDate(position.getCreateDate());
		hrPosition.setDeleteTime(position.getDeleteTime());
		try {
			hrPositionDao.save(hrPosition);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	
	public boolean deleteFalse(int id){
		HrPosition hrPosition = hrPositionDao.get(id);
		hrPosition.setIsdelete(0);//0就是已删除
		hrPosition.setDeleteTime(new Timestamp(new Date().getTime()));
		
		try {
			hrPositionDao.save(hrPosition);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public List<HrPosition> findTrashAll(){
		return hrPositionDao.findTrashAll();
	}

	public boolean doTrashAdd(int id) {
		HrPosition hrPosition = hrPositionDao.get(id);
		hrPosition.setIsdelete(1);//0就是已删除
		hrPosition.setDeleteTime(null);
		try {
			hrPositionDao.save(hrPosition);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	public boolean deleteById(int id) {
		try {
			hrPositionDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
