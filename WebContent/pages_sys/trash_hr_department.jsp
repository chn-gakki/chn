<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>trash_hr_department.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
	<link rel="stylesheet" href="<%=basePath%>media/css/DT_bootstrap.css" />
	<!-- END PAGE LEVEL STYLES -->
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
						<!-- BEGIN 风格定制 -->
						<jsp:include page="/main_pages/styleset.jsp"></jsp:include>
						<!-- END 风格定制 --> 
						<!-- BEGIN 网页的标题和面包屑-->
						<h3 class="page-title">
							部门回收<small>部门回收页</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="#">人事回收站</a> 
								<i class="icon-angle-right"></i>
								<a href="#">部门回收</a> 
							</li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- ---------------------------------------------- -->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-edit"></i>部门回收列表</div>
								<div class="actions">
								</div>
							</div>
							<div class="portlet-body">
								
								<table class="table table-striped table-hover table-bordered" id="sample_2">
									<thead>
										<tr>
											<th>序号</th>
											<th>部门名称</th>
											<th>负责人</th>
											<th>联系电话</th>
											<th>联系地址</th>
											<th>邮箱</th>
											<th>描述</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>									
										<s:iterator value="#listdata" var="p">
										<tr class="">
											<td><s:property value="#p.id" /></td>
											<td><s:property value="#p.DName" /></td>
											<td><s:property value="#p.DEmployee" /></td>
											<td><s:property value="#p.DTelephone" /></td>
											<td><s:property value="#p.DAddress"/></td>
											<td><s:property value="#p.DEmail"/></td>
											<td><s:property value="#p.DDescription"/></td>
											<td>
												<!-- begin操作按钮 -->
												<div class="btn-group" style="margin-bottom: 0px !important;">
													<a class="btn mini green" href="#" data-toggle="dropdown">
														<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
													</a>
													<ul class="dropdown-menu">
														<!-- editRow(传入当前行ID 0开始)  -->
														<li><a href="hr_dep!trashAdd?id=<s:property value="#p.id" />">
															<i class="icon-edit"></i>数据恢复</a></li>
														<li><a href="hr_dep!trashDel?id=<s:property value="#p.id" />">
															<i class="icon-trash"></i>彻底删除</a></li>
													</ul>
												</div>
												<!-- end操作按钮 -->
											</td>
										</tr>
										</s:iterator>
									</tbody>
								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
					</div>
				</div>
				<!-- ---------------------------------------------- -->
			</div>
			<!-- END 页面容器-->
		</div>
		<!-- END 页面 -->
	</div>
	<!-- END 容器 -->
	<jsp:include page="/main_pages/foot.jsp"></jsp:include>
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/DT_bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/select2.min.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/table-advanced.js"></script>
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