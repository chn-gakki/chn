package com.crm.biz;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.ParamSysparamDao;
import com.crm.info.HrEmployee;
import com.crm.info.ParamSysparam;
import com.crm.tools.Scopes;

@Transactional
@Service("paramSysparamBiz")
public class ParamSysparamBiz {

	private ParamSysparamDao paramSysparamDao;

	public void setParamSysparamDao(ParamSysparamDao paramSysparamDao) {
		this.paramSysparamDao = paramSysparamDao;
	}
	
	public List<ParamSysparam> findSysParamByParentId(int sysid) {
		return paramSysparamDao.findBy("paramSysparamType.id", sysid);
	}

	public List<ParamSysparam> findAll() {
		return paramSysparamDao.getAll();
	}

	public boolean add(ParamSysparam sysparam) {
		try {
			sysparam.setCreateDate(new Date());
			sysparam.setHrEmployeeByCreateId((HrEmployee)Scopes.getSessionMap().get("emp"));
			paramSysparamDao.save(sysparam);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean update(ParamSysparam sysparam){
		ParamSysparam old=paramSysparamDao.get(sysparam.getId());
		old.setHrEmployeeByUpdateId((HrEmployee)Scopes.getSessionMap().get("emp"));
		old.setUpdateDate(new Date());
		old.setParamsName(sysparam.getParamsName());
		old.setParamsOrder(sysparam.getParamsOrder());
		old.setParamSysparamType(sysparam.getParamSysparamType());
		try {
			paramSysparamDao.save(old);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public ParamSysparam findOne(int sysid) {
		return paramSysparamDao.get(sysid);
	}
}
