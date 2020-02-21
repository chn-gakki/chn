<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!-- BEGIN 从侧边栏 -->
		<div class="page-sidebar nav-collapse collapse">
			<!-- BEGIN 开始工具条菜单 -->        
			<ul class="page-sidebar-menu">
				<li style="margin-bottom:10px;">
					<!-- BEGIN 侧边栏显示开关按钮 -->
					<div class="sidebar-toggler hidden-phone"></div>
					<!-- END 侧边栏显示开关按钮 -->
				</li>
				<li style="display:none;">
					<!-- BEGIN 响应快速搜索表单 -->
					<form class="sidebar-search">
						<div class="input-box">
							<a href="javascript:;" class="remove"></a>
							<input type="text" placeholder="Search...." />
							<input type="button" class="submit" value=" " />
						</div>
					</form>
					<!-- END 响应快速搜索表单 -->
				</li>
			    <li class="active ">
					<a href="<%=basePath%>index.jsp">
					<i class="icon-home"></i> 
					<span class="title">我的桌面</span>
					</a>
				</li>
				<s:iterator value="#session.menus" var="m">
				<li class="">
					<a class="active" href="#"><i class='<s:property value="#m.menuIcon"/>'></i>
					<span class="title"><s:property value="#m.menuName"/></span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<s:iterator value="#m.sysMenus" var="two">
						<s:if test="#two.sysMenus.size() > 0">
							<li>
								<a href="<%=basePath%><s:property value="#two.menuUrl"/>"><i class="<s:property value="#two.menuIcon"/>"></i>
								<s:property value="#two.menuName"/><span class="arrow"></span></a>
								<ul class="sub-menu">
									<s:iterator value="#two.sysMenus" var="three">
									<li><a href="<%=basePath%><s:property value="#three.menuUrl"/>"><i class="<s:property value="#three.menuIcon"/>"></i>
									<s:property value="#three.menuName"/></a></li>
									</s:iterator>
								</ul>
							</li>
						</s:if>
						<s:else>
							<li>
								<a href="<%=basePath%><s:property value="#two.menuUrl"/>"><i class="<s:property value="#two.menuIcon"/>"></i>
								<s:property value="#two.menuName"/></a>
							</li>
						</s:else>
						</s:iterator>
					</ul>
				</li>
				</s:iterator>
			</ul>
			<!-- END 结束工具条菜单 -->
		</div>
		<!-- END 结束侧边栏 -->