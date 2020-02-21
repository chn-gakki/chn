package com.crm.vobj;

import java.util.ArrayList;
import java.util.List;

public class SysMenuVobj {
	public List<SysMenuVobj> sysMenus=new ArrayList<SysMenuVobj>();
	
	private Integer menuId;
	private String menuName;
	private Integer parentid;
	private String menuUrl;
	private String menuIcon;
	public List<SysMenuVobj> getSysMenus() {
		return sysMenus;
	}
	public void setSysMenus(List<SysMenuVobj> sysMenus) {
		this.sysMenus = sysMenus;
	}
	public Integer getMenuId() {
		return menuId;
	}
	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public Integer getParentid() {
		return parentid;
	}
	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public String getMenuIcon() {
		return menuIcon;
	}
	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon;
	}
}
