package com.crm.dao;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crm.info.ParamSysparam;
import com.haha.hibernate.HibernateDao;

/**
 * 系统参数子分类表
 * @author 凯
 *
 */
@Repository("paramSysparamDao")
public class ParamSysparamDao extends HibernateDao<ParamSysparam, Integer>{
	
}
