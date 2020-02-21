<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>param_type_lists.jsp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<jsp:include page="/media/ui_css.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/DT_bootstrap.css" />	
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/bootstrap-tree.css" />
<!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<jsp:include page="/main_pages/top.jsp"></jsp:include>
	<!-- BEGIN 容器 -->
	<div class="page-container">
		<jsp:include page="/main_pages/left.jsp"></jsp:include>
		<!-- BEGIN 开始页面 -->
		<div class="page-content">
			<!-- ---------------------------------------------- -->
			<!-- BEGIN 页面容器-->
			<div class="container-fluid">
				<!-- BEGIN 页面标题-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN 风格定制 -->
						<jsp:include page="/main_pages/styleset.jsp"></jsp:include>
						<!-- END 风格定制 -->
						<!-- BEGIN 网页的标题和面包屑-->
						<h3 class="page-title">
							系统参数管理 <small>系统参数管理页</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="index.html">系统参数管理</a>
								<i class="icon-angle-right"></i> <a href="index.html">系统参数管理</a> <i
								class="icon-angle-right"></i> <a href="index.html">系统参数列表</a></li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<!-- BEGIN 树状图 -->
					<div class="span3">
						<div class="row-fluid">
							<div class="portlet box blue">
								<div class="portlet-title">
									<div class="caption"><i class="icon-comments"></i>系统参数类别</div>
									<div class="tools">
										<a href="javascript:;" class="collapse"></a>
										<a href="javascript:;" class="reload"></a>
									</div>
								</div>
	
								<div class="portlet-body ">
									<ul class="tree" id="tree_1">
										<s:iterator value="#ptype" id="ca" status="x">
										<li class="dd-item" data-id="1">
										<div style="text-align: center; margin-bottom: 5px;">
											<a class="btn purple-stripe gray"  href="param_systype?sysid=<s:property value="#ca.id"/>">
												<i class=" icon-star-empty"></i><s:property value="#ca.paramsName"/>
											</a>
										</div>
										</li>
										</s:iterator>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- END 树状图 -->
					<!-- BEGIN 表格列表-->
					<div class="span9">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-globe"></i>参数列表
								</div>
								<div class="actions">
									<a href="param_type_add.jsp" class="btn red">
										新建 <i class="icon-plus"></i>
									</a>
									<div class="btn-group">
											 <a class="btn green" href="#"
											data-toggle="dropdown"> 改变显示列 <i class="icon-angle-down"></i>
										</a>
										<div id="sample_2_column_toggler"
											class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
											<label><input type="checkbox" checked data-column="0">序号</label>
											<label><input type="checkbox" checked data-column="1">名称</label>
											<label><input type="checkbox" checked data-column="2">次序</label>
											<label><input type="checkbox" checked data-column="3">操作</label>
										</div>
									</div>
								</div>
							</div>
							<div class="portlet-body">
								<table
									class="table table-striped table-bordered table-hover table-full-width"
									id="sample_2">
									<thead>
										<tr>
											<th>序号</th>
											<th>名称</th>
											<th>次序</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="#sysparamType" id="p">
											<tr>
												<td><s:property value="#p.id" />
												</td>
												<td><s:property value="#p.paramsName" />
												</td>
												<td><s:property value="#p.paramsOrder" />
												</td>
												<td><a class="edit btn mini blue" href="param_sys!findSysParam?sysid=<s:property value="#p.id" />"><i class="icon-edit"></i>编辑</a>
												<!-- <a class="delete btn mini green" href="javascript:;" id="<s:property value="#p.id" />"><i class="icon-trash"></i>删除</a> -->
												</td>
											</tr>
										</s:iterator>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- END 表格列表-->
				</div>
				<!-- END PAGE CONTENT-->
			</div>
			<!-- END PAGE CONTENT-->
			<!-- --------------------------------------------------------- -->
		</div>
		<!-- END 页面 -->
	</div>
	<!-- END 容器 -->
	<jsp:include page="/main_pages/foot.jsp"></jsp:include>
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript" src="<%=basePath%>media/js/select2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/DT_bootstrap.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->	
	<script src="<%=basePath%>media/js/bootstrap-tree.js"></script>
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/table-advanced.js"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			App.init();
			TableAdvanced.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>