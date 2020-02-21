package com.crm.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.ParamCity;
import com.haha.hibernate.HibernateDao;

/**
 * 省市参数选项表
 * @author 凯
 *
 */
@Repository("paramCityDao")
public class ParamCityDao extends HibernateDao<ParamCity, Integer> {
	public List<ParamCity> findProvince(){
		return this.getSession().createCriteria(ParamCity.class).add(Restrictions.eq("parentid",0)).list();
	}
	
	public List<ParamCity> findCityByProvinceId(int id){
		return this.getSession().createCriteria(ParamCity.class).add(Restrictions.eq("parentid",id)).list();
	}
	
}
