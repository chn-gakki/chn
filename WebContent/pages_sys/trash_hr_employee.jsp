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
	<title>trash_hr_employee.jsp</title>
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
							员工回收<small>员工回收页</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">数据回收站</a> 
								<i class="icon-angle-right"></i>
								<a href="index.html">人事回收站</a> 
								<i class="icon-angle-right"></i>
								员工回收
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
								<div class="caption"><i class="icon-edit"></i>员工回收列表</div>
								<div class="actions">
									<button onclick="location.href='public_hr_employee_add.jsp'" class="btn red">
									新建 <i class="icon-plus"></i>
									</button>
								</div>
							</div>
							<div class="portlet-body">
								<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
									<thead>
										<tr>
											<th>序号</th>
											<th>名称[姓名]性别</th>
											<th>邮箱</th>
											<th>部门[岗位]等级</th>
											<th>生日</th>
											<th>电话</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>									
										<s:iterator value="#emps" var="p">
										<tr>
											<td><s:property value="#p.id" /></td>
											<td><s:property value="#p.uid" />[<s:property value="#p.name" />]<s:property value="#p.sex" /></td>
											<td><s:property value="#p.email" /></td>
											<td><s:property value="#p.hrDepartment.DName" />[<s:property value="#p.hrPost.postName" />]<s:property value="#p.paramSysparam.paramsName" /></td>
											<td><s:date name="#p.birthday" format="yyyy-MM-dd"/></td>
											<td><s:property value="#p.telephone" /></td>
											<td>
												<!-- begin操作按钮 -->
												<div class="btn-group" style="margin-bottom: 0px !important;">
													<a class="btn mini green" href="#" data-toggle="dropdown">
														<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
													</a>
													<ul class="dropdown-menu">
														<!-- editRow(传入当前行ID 0开始)  -->
														<li><a data-toggle="modal"
															href="hr_emp!trashAdd?id=<s:property value="#p.id" />">
															<i class="icon-edit"></i>数据恢复</a></li>
														<li><a href="hr_emp!trashDel?id=<s:property value="#p.id" />">
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