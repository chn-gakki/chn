package com.crm.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.ParamSysparamType;
import com.haha.hibernate.HibernateDao;
/**
 * 系统参数一级分类表
 * @author 凯
 *
 */
@Repository("paramSysparamTypeDao")
public class ParamSysparamTypeDao  extends HibernateDao<ParamSysparamType, Integer>{
	
	public List<ParamSysparamType> findAllType(){
		return this.getSession().createCriteria(ParamSysparamType.class).add(Restrictions.eq("isdelete", 1)).list();
	}
	
}
