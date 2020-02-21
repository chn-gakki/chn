package com.crm.info;

/**
 * SysMenu entity. @author MyEclipse Persistence Tools
 */

public class SysMenu implements java.io.Serializable {

	// Fields

	private Integer menuId;
	private String menuName;
	private Integer parentid;
	private String parentname;
	private String menuUrl;
	private String menuIcon;
	private String menuHandler;
	private Integer menuOrder;
	private String menuType;

	// Constructors

	/** default constructor */
	public SysMenu() {
	}

	/** full constructor */
	public SysMenu(String menuName, Integer parentid, String parentname,
			String menuUrl, String menuIcon, String menuHandler,
			Integer menuOrder, String menuType) {
		this.menuName = menuName;
		this.parentid = parentid;
		this.parentname = parentname;
		this.menuUrl = menuUrl;
		this.menuIcon = menuIcon;
		this.menuHandler = menuHandler;
		this.menuOrder = menuOrder;
		this.menuType = menuType;
	}

	// Property accessors

	public Integer getMenuId() {
		return this.menuId;
	}

	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}

	public String getMenuName() {
		return this.menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public Integer getParentid() {
		return this.parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public String getParentname() {
		return this.parentname;
	}

	public void setParentname(String parentname) {
		this.parentname = parentname;
	}

	public String getMenuUrl() {
		return this.menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	public String getMenuIcon() {
		return this.menuIcon;
	}

	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon;
	}

	public String getMenuHandler() {
		return this.menuHandler;
	}

	public void setMenuHandler(String menuHandler) {
		this.menuHandler = menuHandler;
	}

	public Integer getMenuOrder() {
		return this.menuOrder;
	}

	public void setMenuOrder(Integer menuOrder) {
		this.menuOrder = menuOrder;
	}

	public String getMenuType() {
		return this.menuType;
	}

	public void setMenuType(String menuType) {
		this.menuType = menuType;
	}

}