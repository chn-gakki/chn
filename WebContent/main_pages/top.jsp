<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!-- BEGIN HEADER -->
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="navbar-inner">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				<a class="brand" href="/CrmSystem/index.jsp" style="width:250px;">
					CRM管理系统
				</a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
				<img src="<%=basePath%>media/image/menu-toggler.png" alt="" />
				</a>          
				<!-- END RESPONSIVE MENU TOGGLER -->            
				<!-- BEGIN TOP NAVIGATION MENU -->              
				<ul class="nav pull-right">
					<!-- BEGIN 用户登录下拉菜单 -->
					<li class="dropdown user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img alt="" src="<%=basePath%><s:property value="#session.emp.portal"/>" 
						onerror="this.src='<%=basePath%>media/image/default-head.png'" style="max-height:30px; max-height: 30px;"/>
						<span class="username">用户名</span>
						<i class="icon-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="<%=basePath%>pages_hr/emp.jsp"><i class="icon-user"></i> 我的资料</a></li>
							<li><a href="<%=basePath%>pages_mail/mail_flow.jsp"><i class="icon-envelope"></i> 我的站内信</a></li>
							<li class="divider"></li>
							<li><a href="<%=basePath%>lock.jsp"><i class="icon-lock"></i> 锁屏</a></li>
							<li><a href="<%=basePath%>hr_emp!loginOut"><i class="icon-key"></i> 注销</a></li>
						</ul>
					</li>
					<!-- END 用户登录下拉菜单 -->
				</ul>
				<!-- END TOP NAVIGATION MENU --> 
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
