<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="cn">
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>public_notice_list.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<link href="<%=basePath%>media/css/news.css" rel="stylesheet" type="text/css" /> 
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<jsp:include page="/main_pages/top.jsp"></jsp:include>
	<!-- BEGIN 容器 -->
	<div class="page-container row-fluid">
		<jsp:include page="/main_pages/left.jsp"></jsp:include>
		<!-- BEGIN 开始页面 -->
		<div class="page-content">
			<!-- BEGIN 页面容器-->
			<div class="container-fluid">
				<!-- BEGIN 页面标题-->
				<div class="row-fluid"> 
			      <div class="span12"> 
			       <jsp:include page="/main_pages/styleset.jsp"></jsp:include> 
			       <!-- BEGIN 网页的标题和面包屑--> 
			       <h3 class="page-title"> CRM公告查看 <small>公告查看页</small> </h3> 
			       <ul class="breadcrumb"> 
			        <li>
			        	<i class="icon-list"></i> <a href="pub_notice">公告列表</a> 
			        	<i class="icon-plus"></i> <a href="public_notice_add.jsp">添加公告</a>
			        </li>
			       </ul> 
			       <!-- END 网页的标题和面包屑--> 
			      </div> 
			     </div> 
				<!-- END 页面标题-->
				<!-- page begin --> 
				<s:iterator value="#notices" var="n" status="x">
			      <div class="span6 " style="margin-left:0px !important; margin-right: 5px;">
						<!-- BEGIN Portlet PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-reorder"></i>标题：<s:property value="#n.noticeTitle" /></div>
								<div class="actions">
									
								</div>
							</div>
							<div class="portlet-body">
								<div class="scroller" style="min-height:200px ">
									<strong><s:date name="#n.noticeTime" format="yyyy-MM-dd"/> 浏览<s:property value="#n.viewNum"/>次</strong><br />
									<s:property value="#n.noticeContent"/>
								</div>
							</div>
						</div>
					</div>
				</s:iterator>
				<!-- page end -->
			</div>
			<!-- END 页面容器 -->
		</div>
		<!-- END 页面 -->
	</div>
	<!-- END 容器 -->
	<jsp:include page="/main_pages/foot.jsp"></jsp:include>
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<script src="<%=basePath%>media/js/app.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>