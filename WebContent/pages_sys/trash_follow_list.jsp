<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>crm_follow_list.jsp</title>
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
						<h3 class="page-title">CRM客户跟进查询<small>客户跟进查询页</small></h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">CRM客户管理</a>
								<i class="icon-angle-right"></i> <a href="#">客户管理</a> 
								<i class="icon-angle-right"></i> <a href="#">跟进管理</a> 
								<i class="icon-angle-right"></i> <a href="#">客户跟进列表</a>
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
							<i class="icon-globe"></i>客户跟进查询列表
						</div>
						<div class="actions">
							<div class="btn-group">
								<a class="btn green" href="#" data-toggle="dropdown">改变显示列<i class="icon-angle-down"></i> </a>
								<div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
									<label><input type="checkbox" checked data-column="1">客户名</label>
									<label><input type="checkbox" checked data-column="2">跟进内容</label>
									<label><input type="checkbox" checked data-column="3">跟进时间</label>
									<label><input type="checkbox" checked data-column="4">跟进方式</label>
									<label><input type="checkbox" checked data-column="5">跟进部门人员</label>
								</div>
							</div>
						</div>
					</div>
					<div class="portlet-body">
						<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
							<thead>
								<tr>
									<th>序号</th>
									<th>客户名</th>
									<th>跟进内容</th>
									<th>跟进时间</th>
									<th>跟进方式</th>
									<th>跟进部门人员</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
							<s:iterator var="m" value="#follows" >
								<tr>
									<td><s:property value="#m.id" /></td>
									<td><s:property value="#m.crmCustomer.customer" /></td>
									<td>
									<s:if test="#m.follow.length() > 25">
										<a class="tooltips" data-placement="bottom" data-original-title="<s:property value="#m.follow"/>">
										<s:property value="#m.follow.substring(0,25)"/>...</a>
									</s:if>   
									<s:else>
									     <s:property value="#m.follow"/>
									</s:else>
									</td>
									<td><s:date name="#m.followDate" format="yyyy-MM-dd" /></td>
									<td><s:property value="#m.paramSysparam.paramsName"/></td>
									<td><s:property value="#m.hrDepartment.DName"/>-<s:property value="#m.hrEmployee.name"/></td>
									<td>
									<div class="btn-group" style="margin-bottom: 0px !important;" >
										<a class="btn mini green" href="#" data-toggle="dropdown">
										<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
										</a>
										<ul class="dropdown-menu">
											<li><a href="crm_follow!trashAdd?id=<s:property value="#m.id"/>"><i class="icon-edit"></i>恢复数据</a></li>
											<li><a href="crm_follow!trashDel?id=<s:property value="#m.id"/>"><i class="icon-trash"></i>彻底删除</a></li>
										</ul>
									</div>
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