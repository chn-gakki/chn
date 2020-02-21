package com.crm.info;

/**
 * SysApp entity. @author MyEclipse Persistence Tools
 */

public class SysApp implements java.io.Serializable {

	// Fields

	private Integer id;
	private String appName;
	private Integer appOrder;
	private String appUrl;
	private String appMethod;
	private String appIcon;
	private String appId;

	// Constructors

	/** default constructor */
	public SysApp() {
	}

	/** minimal constructor */
	public SysApp(String appName, String appIcon, String appId) {
		this.appName = appName;
		this.appIcon = appIcon;
		this.appId = appId;
	}

	/** full constructor */
	public SysApp(String appName, Integer appOrder, String appUrl,
			String appMethod, String appIcon, String appId) {
		this.appName = appName;
		this.appOrder = appOrder;
		this.appUrl = appUrl;
		this.appMethod = appMethod;
		this.appIcon = appIcon;
		this.appId = appId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAppName() {
		return this.appName;
	}

	public void setAppName(String appName) {
		this.appName = appName;
	}

	public Integer getAppOrder() {
		return this.appOrder;
	}

	public void setAppOrder(Integer appOrder) {
		this.appOrder = appOrder;
	}

	public String getAppUrl() {
		return this.appUrl;
	}

	public void setAppUrl(String appUrl) {
		this.appUrl = appUrl;
	}

	public String getAppMethod() {
		return this.appMethod;
	}

	public void setAppMethod(String appMethod) {
		this.appMethod = appMethod;
	}

	public String getAppIcon() {
		return this.appIcon;
	}

	public void setAppIcon(String appIcon) {
		this.appIcon = appIcon;
	}

	public String getAppId() {
		return this.appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}

}