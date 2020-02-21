<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>trash_contract_list.jsp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<jsp:include page="/media/ui_css.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/DT_bootstrap.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/search.css" />
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
						<h3 class="page-title"> 合同回收<small>合同回收页</small></h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">数据回收站</a> <i
								class="icon-angle-right"></i> <a href="#">CRM数据回收</a> <i
								class="icon-angle-right"></i> <a href="#">合同回收</a>
							</li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- BEGIN EXAMPLE TABLE PORTLET-->
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-globe"></i>合同回收列表
						</div>
						<div class="actions">
							<div class="btn-group">
								<a class="btn green" href="#" data-toggle="dropdown"> 改变显示列 <i class="icon-angle-down"></i> </a>
								<div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
									<label><input type="checkbox" checked data-column="1">合同编号</label>
									<label><input type="checkbox" checked data-column="2">合同名称</label>
									<label><input type="checkbox" checked data-column="3">客户名称</label>
									<label><input type="checkbox" checked data-column="4">合同金额</label>
									<label><input type="checkbox" checked data-column="5">合同归属</label>
									<label><input type="checkbox" checked data-column="6">签订日期</label>
								</div>
							</div>
						</div>
					</div>
					<div class="portlet-body">
						<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
							<thead>
								<tr>
									<th>序号</th>
									<th>合同编号</th>
									<th>合同名称</th>
									<th>客户名称</th>
									<th>合同金额(￥)</th>
									<th>合同归属</th>
									<th>签订日期</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="a" var="m">
									<tr>
										<th><s:property value="#m.id" />
										</th>
										<th><s:property value="#m.serialnumber" />
										</th>
										<th><s:property value="#m.contractName" />
										</th>
										<th><s:property value="#m.CrmCustomer.customer" />
										</th>
										<th><s:property value="#m.contractAmount" />
										</th>
										<th><s:property value="#m.hrDepartmentByOurContractorDepid.DName" />-<s:property value="#m.hrEmployeeByOurContractorId.name" />
										</th>
										<th><s:date name="#m.signDate" format="yyyy-MM-dd" />
										</th>
										<td>
										<!-- begin操作按钮 -->
										<div class="btn-group" style="margin-bottom: 0px !important;">
											<a class="btn mini green" href="#" data-toggle="dropdown">
												<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
											</a>
											<ul class="dropdown-menu">
												<li><a href="ma_contr!trashAdd?id=<s:property value="#m.id"/>">
												<i class="icon-edit"></i>恢复数据</a></li>
												<li><a href="ma_contr!trashDel?id=<s:property value="#m.id"/>">
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
	<script type="text/javascript" src="<%=basePath%>media/js/bootstrap-datepicker.js"></script>
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