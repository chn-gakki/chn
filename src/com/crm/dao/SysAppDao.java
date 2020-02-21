package com.crm.dao;

import org.springframework.stereotype.Repository;

import com.crm.info.SysApp;
import com.haha.hibernate.HibernateDao;
/**
 * 系统应用模块
 * @author 凯
 *
 */
@Repository("sysAppDao")
public class SysAppDao extends HibernateDao<SysApp, Integer> {
	
}
