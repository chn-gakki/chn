<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="cn">
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>trash_cus_list.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/DT_bootstrap.css" />
	<link href="<%=basePath%>media/css/jquery.fancybox.css" rel="stylesheet" />
	<!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<jsp:include page="/main_pages/top.jsp"></jsp:include>
	<!-- BEGIN 容器 -->
	<div class="page-container row-fluid">
		<jsp:include page="/main_pages/left.jsp"></jsp:include>
		<!-- BEGIN 开始页面-->
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
							客户回收 <small>客户回收页</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i> <a href="#">数据回收站</a> <i
								class="icon-angle-right"></i> <a href="#">CRM数据回收</a>
								<i class="icon-angle-right"></i>
								<a href="#">客户回收</a>
							</li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- BEGIN 示例表portlet-->
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-globe"></i>客户回收列表
						</div>
						<div class="actions">
							<div class="btn-group">
								<a class="btn green" href="#" data-toggle="dropdown"> 改变显示列 <i class="icon-angle-down"></i> </a>
								<div id="sample_2_column_toggler"
									class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
									<label><input type="checkbox" checked data-column="1">公司名称</label>
									<label><input type="checkbox" checked data-column="2">客户类型-来源-级别</label>
									<label><input type="checkbox" checked data-column="3">所属省市</label>
									<label><input type="checkbox" checked data-column="4">录入时间</label>
									<label><input type="checkbox" checked data-column="5">跟进时间</label>
									<label><input type="checkbox" checked data-column="6">电话</label>
									<label><input type="checkbox" checked data-column="7">部门员工</label>
									<label><input type="checkbox" checked data-column="8">客源状态</label>
								</div>
							</div>
						</div>
					</div>
					<div class="portlet-body">
						<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
							<thead>
								<tr>
									<th>序号</th>
									<th>公司名称</th>
									<th>客户类型-来源-级别</th>
									<th>所属省市</th>
									<th>录入时间</th>
									<th>跟进时间</th>
									<th>电话</th>
									<th>部门员工</th>
									<th>客源状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							<s:iterator var="m" value="bywhere" >
								<tr>
									<td><s:property value="#m.id"/></td>
									<td><s:property value="#m.customer"/></td>
									<td><s:property value="#m.paramSysparamByCustomertypeId.paramsName"/>—<s:property value="#m.paramSysparamByCustomersourceId.paramsName"/>—<s:property value="#m.paramSysparamByCustomerlevelId.paramsName"/></td>
									<td><s:property value="#m.paramCityByProvincesId.city"/>—<s:property value="#m.paramCityByCityId.city"/></td>
									<td><s:date name="#m.createDate" format="yyyy-MM-dd"/></td>
									<td><s:date name="#m.lastfollow" format="yyyy-MM-dd"/></td>
									<td><s:property value="#m.tel"/></td>
									<td><s:property value="#m.hrDepartment.DName"/>—<s:property value="#m.hrEmployeeByEmployeeId.name"/></td>
									<td><s:property value="#m.privatecustomer"/></td>
									<td>
									<!-- begin操作按钮 -->
									<div class="btn-group" style="margin-bottom: 0px !important;" >
										<a class="btn mini green" href="#" data-toggle="dropdown">
										<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
										</a>
										<ul class="dropdown-menu">
											<li><a href="crm_cust!trashAdd?id=<s:property value="#m.id"/>"><i class="icon-edit"></i>恢复数据</a></li>
											<li><a href="crm_cust!trashDel?id=<s:property value="#m.id"/>"><i class="icon-trash"></i>彻底删除</a></li>
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
				<!-- END 示例表portlet-->
			</div>
			<!-- END 页面容器-->
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
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.fancybox.pack.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="<%=basePath%>media/js/app.js"></script>
 	<script src="<%=basePath%>media/js/form-samples.js"></script> 
	<script src="<%=basePath%>media/js/table-advanced.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			TableAdvanced.init();
			FormSamples.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
