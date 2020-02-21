package com.crm.biz;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.ParamCityDao;
import com.crm.info.ParamCity;

@Transactional
@Service("paramCityBiz")
public class ParamCityBiz {
	private ParamCityDao paramCityDao;

	public void setParamCityDao(ParamCityDao paramCityDao) {
		this.paramCityDao = paramCityDao;
	}
	
	public List<ParamCity> findProvince(){
		return paramCityDao.findProvince();
	}
	
	public List<ParamCity> findCityByProvinceId(int vinceid){
		return paramCityDao.findCityByProvinceId(vinceid);
	}
	
}
