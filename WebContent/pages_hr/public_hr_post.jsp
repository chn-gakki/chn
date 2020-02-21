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
	<title>public_hr_post.jsp</title>
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
							岗位<small>查看岗位</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">CRM岗位管理</a> 
								<i class="icon-angle-right"></i>
								<a href="index.html">岗位管理</a> 
								<i class="icon-angle-right"></i>
								岗位列表
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
								<div class="caption"><i class="icon-edit"></i>岗位管理</div>
								<div class="actions">
									<button id="sample_editable_1_new" onclick="location.href='public_hr_post_add.jsp'" class="btn red">
									新建 <i class="icon-plus"></i>
									</button>
								</div>
							</div>
							<div class="portlet-body">
								<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
									<thead>
										<tr>
											<th>序号</th>
											<th>岗位名称</th>
											<th>岗位次序</th>
											<th>所属职务</th>
											<th>岗位描述</th>
											<th>创建部门[员工]</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>									
										<s:iterator value="#listdata" var="p">
										<tr class="">
											<td><s:property value="#p.postId" /></td>
											<td><s:property value="#p.postName" /></td>
											<td><s:property value="#p.positionOrder" /></td>
											<td><s:property value="#p.hrPosition.positionName" /></td>
											<td>
											<s:if test="#p.postDescript.length() > 25">
											<a class="tooltips" data-placement="bottom" data-original-title="<s:property value="#p.postDescript"/>">
												<s:property value="#p.postDescript.substring(0,25)"/>...</a>
											</s:if>
											<s:else>
												<s:property value="#p.postDescript"/>
											</s:else>
											</td>
											<td><s:property value="#p.hrDepartment.DName"/>[<s:property value="#p.hrEmployee.name" />]</td>
											<td>
												<!-- begin操作按钮 -->
												<div class="btn-group" style="margin-bottom: 0px !important;">
													<a class="btn mini green" href="#" data-toggle="dropdown">
														<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
													</a>
													<ul class="dropdown-menu">
														<!-- editRow(传入当前行ID 0开始)  -->
														<li><a data-toggle="modal"
															href="hr_post!findOne?id=<s:property value="#p.postId" />">
															<i class="icon-edit"></i>编辑</a></li>
														<li><a href="hr_post!deleteById?id=<s:property value="#p.postId" />">
															<i class="icon-trash"></i>删除</a></li>
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