package com.crm.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.crm.info.SysMenu;
import com.haha.hibernate.HibernateDao;
/**
 * 系统菜单表
 * @author 凯
 *
 */
@Repository("sysMenuDao")
public class SysMenuDao extends HibernateDao<SysMenu, Integer> {

	/**
	 * 获取当前用户对应角色权限下所有菜单
	 * @param menuids
	 * @return
	 */
	public List<SysMenu> getMenuListByIds(String[] menuids) {
		List<SysMenu> sysMenus=new ArrayList<SysMenu>();
		SysMenu menu=new SysMenu();
		for (int i = 0; i < menuids.length; i++) {
			int id=Integer.parseInt(menuids[i]);
			menu=get(id);
			sysMenus.add(menu);
		}
		return sysMenus;
	}
}
