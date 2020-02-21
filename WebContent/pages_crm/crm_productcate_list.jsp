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
	<title>crm_productcate_list.jsp</title>
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
							CRM产品类别管理 <small>产品类别管理页</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="">CRM客户管理</a> 
								<i class="icon-angle-right"></i>
								<a href="">产品管理</a> 
								<i class="icon-angle-right"></i>
								<a href="">产品类别列表</a> 
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
								<div class="caption"><i class="icon-edit"></i>产品类别管理</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									<a href="#portlet-config" data-toggle="modal" class="config"></a>
									<a href="javascript:;" class="reload"></a>
									<a href="javascript:;" class="remove"></a>
								</div>
							</div>
							<div class="portlet-body">
								<div class="clearfix">
									<div class="btn-group">
										<button id="sample_editable_1_new" class="btn green">
										新建 <i class="icon-plus"></i>
										</button>
									</div>
								</div>
								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">
									<thead>
										<tr>
											<th>序号</th>
											<th>类别名</th>
											<th>父类别</th>
											<th>类别图标</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>									
										<s:iterator value="#cates" var="p">
										<tr class="">
											<td><s:property value="#p.id" /></td>
											<td><s:property value="#p.productCategory" /></td>
											<td><s:property value="#p.parentid" /></td>
											<td class="center"><s:property value="#p.productIcon" /></td>
											<td><a class="edit btn mini blue" href="javascript:;"><i class="icon-edit"></i>编辑</a>
												<a class="delete btn mini green" href="javascript:;" id="<s:property value="#p.id" />"><i class="icon-trash"></i>删除</a>
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
	<script src="<%=basePath%>main_pages/crm_table_editable.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			TableEditable.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
	<!-- begin 消息提示框 -->
	<div style="display:none;"><a href="#myModal2" role="button" id="btnerr" class="btn btn-danger" data-toggle="modal"></a></div>
	<div id="myModal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
			<h3 id="myModalLabel2" style="color:black;">提示信息</h3>
		</div>
		<div class="modal-body" >
			<p id="errmsg" style="color:black;"></p>
		</div>
		<div class="modal-footer">
			<button data-dismiss="modal" class="btn green">关闭</button>
		</div>
	</div>
	<!-- end 消息提示框 -->
</body>
<!-- END BODY -->
</html>