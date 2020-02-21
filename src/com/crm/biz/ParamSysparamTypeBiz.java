package com.crm.biz;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.ParamSysparamTypeDao;
import com.crm.info.ParamSysparamType;

@Transactional
@Service("paramSysparamTypeBiz")
public class ParamSysparamTypeBiz {
	
	private ParamSysparamTypeDao paramSysparamTypeDao;
	
	public ParamSysparamTypeDao getParamSysparamTypeDao() {
		return paramSysparamTypeDao;
	}
	
	public void setParamSysparamTypeDao(ParamSysparamTypeDao paramSysparamTypeDao) {
		this.paramSysparamTypeDao = paramSysparamTypeDao;
	}
	/**
	 * 全查出全部的类型
	 * @return
	 */
	public List<ParamSysparamType> findAllType(){
		return paramSysparamTypeDao.findAllType();
	}
}
