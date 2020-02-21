package com.crm.biz;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.SysMenuDao;
import com.crm.info.SysMenu;
import com.crm.info.SysRole;
import com.crm.vobj.SysMenuVobj;

@Transactional
@Service("sysMenuBiz")
public class SysMenuBiz {
	private SysMenuDao sysMenuDao;
	
	public void setSysMenuDao(SysMenuDao sysMenuDao) {
		this.sysMenuDao = sysMenuDao;
	}

	public List<SysMenuVobj> findShowMenusByRole(SysRole sysRole) {
		//接收当前权限下菜单项
		List<SysMenuVobj> list=new ArrayList<SysMenuVobj>();
		//获取权限项Id数组
		String[] sysid = sysRole.getChildmenus().split(",");
		
		for (String id : sysid) {
			try {
				SysMenu menu = sysMenuDao.get(Integer.parseInt(id));
				if (menu!=null) {
					list.add(convertVobj(menu));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		SysMenuVobj vobj=null;
		List<SysMenuVobj> vobjs=new ArrayList<SysMenuVobj>();
		for (SysMenuVobj me : list) {
			//父id等于0的都是根节点
			if (me.getParentid().equals(0)) {
				
				vobj= me;
				int pkid = me.getMenuId();//获取到父节点的主键id
				
				for (SysMenuVobj chime : list) {
					//如果二级节点的parent id 等于 上级的 主键PK id
					if (chime.getParentid().equals(pkid)) {
						SysMenuVobj two = chime;
						int pkthree = chime.getMenuId(); //获取到二级节点的 PK
						
						for (SysMenuVobj threeme : list) {
							//如果三级节点parent id 等于 二级 节点 PK　id
							if (threeme.getParentid().equals(pkthree)) {
								two.sysMenus.add(threeme);
							}
						}
						vobj.sysMenus.add(two);
					}
				}
				vobjs.add(vobj);
			}
		}
		return vobjs;
	}
	
	private SysMenuVobj convertVobj(SysMenu menu){
		SysMenuVobj vobj=new SysMenuVobj();
		if (menu!=null) {
			vobj.setMenuIcon(menu.getMenuIcon());
			vobj.setMenuId(menu.getMenuId());
			vobj.setMenuName(menu.getMenuName());
			vobj.setMenuUrl(menu.getMenuUrl());
			vobj.setParentid(menu.getParentid());
		}
		return vobj;
	}
	
	public List<SysMenuVobj> findAllTree(){
		//接收当前权限下菜单项
		List<SysMenuVobj> list=new ArrayList<SysMenuVobj>();
		List<SysMenu> menus=sysMenuDao.getAll();
		for (SysMenu menu : menus) {
			list.add(convertVobj(menu));
		}
		SysMenuVobj vobj=null;
		List<SysMenuVobj> vobjs=new ArrayList<SysMenuVobj>();
		
		for (SysMenuVobj me : list) {
			//父id等于0的都是根节点
			if (me.getParentid().equals(0)) {
				
				vobj= me;
				int pkid = me.getMenuId();//获取到父节点的主键id
				
				for (SysMenuVobj chime : list) {
					//如果二级节点的parent id 等于 上级的 主键PK id
					if (chime.getParentid().equals(pkid)) {
						SysMenuVobj two = chime;
						int pkthree = chime.getMenuId(); //获取到二级节点的 PK
						
						for (SysMenuVobj threeme : list) {
							//如果三级节点parent id 等于 二级 节点 PK　id
							if (threeme.getParentid().equals(pkthree)) {
								two.sysMenus.add(threeme);
							}
						}
						vobj.sysMenus.add(two);
					}
				}
				vobjs.add(vobj);
			}
		}
		return vobjs;
	}
}
