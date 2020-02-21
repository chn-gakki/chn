<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
	<title>crm_contact_list.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/DT_bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/datepicker.css" />
	<link href="<%=basePath%>media/css/jquery.fancybox.css" rel="stylesheet" />
	<link href="<%=basePath%>media/css/search.css" rel="stylesheet" type="text/css" />
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
						<h3 class="page-title">
							CRM联系人管理 <small>我的联系人管理页</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">CRM客户管理</a>
								<i class="icon-angle-right"></i> <a href="#">客户管理</a> 
								<i class="icon-angle-right"></i> <a href="#">联系人管理</a>
								<i class="icon-angle-right"></i> <a href="#">联系人列表</a></li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN SAMPLE TABLE PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-search"></i>智能搜索
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									<a href="javascript:;" class="remove"></a>
								</div>
							</div>
							<div class="portlet-body" id="mysearch">
								<div id="tab_2_2" class="tab-pane active">
									<div class="row-fluid">
										<div class="span12">
											<form action="crm_cont"  method="post">
												<div class="row-fluid">
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label" for="firstName">公司名称:</label>
															<select class="span12 " name="contactvobj.customerId" id="select2_sample_customer"  tabindex="1">
																<option></option>
															</select>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label" for="man">联系人:</label>
															<div class="controls">
																<input type="text" name="contactvobj.cname" id="man" class="m-wrap span12" placeholder="模糊匹配联系人">
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label" for="qq">QQ:</label>
															<div class="controls">
																<input type="text" id="qq" name="contactvobj.cqq" class="m-wrap span12" placeholder="模糊匹配QQ">
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->
												<div class="row-fluid">
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">录入时间开始:</label>
															<div class="controls">
																<div class="input-append date date-picker" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
																	<input class="m-wrap m-ctrl-medium date-picker" name="contactvobj.createdateStart" size="16" type="text" />
																	<span class="add-on"><i class="icon-calendar"></i></span>
																</div>
															</div>
														</div>
													</div>

													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">录入时间结束:</label>
															<div class="controls">
																<div class="input-append date date-picker" data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
																	<input class="m-wrap m-ctrl-medium date-picker" name="contactvobj.createdateEnd" size="16" type="text" value="" />
																	<span class="add-on"><i class="icon-calendar"></i></span>
																</div>
															</div>
														</div>
													</div>

													<div class="span4 ">
														<div class="control-group">
															<label class="control-label" for="phone">手机:</label>
															<div class="controls">
																<input type="text" name="contactvobj.cmob" id="phone" class="m-wrap span12" placeholder="模糊匹配手机号">
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->
												<div class="row-fluid">
													<button class="btn green span6" type="submit"> 搜索 <i class="m-icon-swapright m-icon-white"></i>
													</button>
													<button class="btn blue span6 " type="reset"> 重置 <i class="m-icon-swapright icon-refresh"></i>
													</button>
												</div>
											</form>
										</div>
										<!--end booking-search-->
									</div>
									<!--end row-fluid-->
								</div>
							</div>
							<!-- END SAMPLE TABLE PORTLET-->
						</div>
					</div>
				</div>
				<!-- BEGIN EXAMPLE TABLE PORTLET-->
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption"> <i class="icon-globe"></i>联系人列表</div>
						<div class="actions">
							<a class="btn red" href="crm_contact_add.jsp" >添加 <i class="icon-plus"></i> </a>
							<div class="btn-group">
								<a class="btn green" href="#" data-toggle="dropdown"> 改变显示列 <i class="icon-angle-down"></i> </a>
								<div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
									<label><input type="checkbox" checked data-column="1">联系人[职务]</label>
									<label><input type="checkbox" checked data-column="2">录入时间</label>
									<label><input type="checkbox" checked data-column="3">性别</label>
									<label><input type="checkbox" checked data-column="4">所属公司</label>
									<label><input type="checkbox" checked data-column="5">手机</label>
									<label><input type="checkbox" checked data-column="6">QQ</label>
									<label><input type="checkbox" checked data-column="7">Email</label>
									<label><input type="checkbox" checked data-column="8">电话</label>
								</div>
							</div>
						</div>
					</div>
					<div class="portlet-body">
						<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
							<thead>
								<tr>
									<th>序号</th>
									<th>联系人[职务]</th>
									<th>录入时间</th>
									<th>性别</th>
									<th>所属公司</th>
									<th>手机</th>
									<th>QQ</th>
									<th>Email</th>
									<th>电话</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator var="m" value="listx" >
									<tr>
										<td><s:property value="#m.id"/> </td>
										<td><s:property value="#m.CName"/>[<s:property value="#m.CPosition"/>] </td>
										<td><s:date name="#m.CCreatedate" format="yyyy-MM-dd"/> </td>
										<td><s:property value="#m.CSex"/> </td>
										<td><s:property value="#m.crmCustomer.customer"/> </td>
										<td><s:property value="#m.CMob"/> </td>
										<td><s:property value="#m.CQq"/> </td>
										<td><s:property value="#m.CEmail"/> </td>
										<td><s:property value="#m.CTel"/> </td>
										<td>
										<!-- begin操作按钮 -->
										<div class="btn-group" style="margin-bottom: 0px !important;">
											<a class="btn mini green" href="#" data-toggle="dropdown">
												<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
											</a>
											<ul class="dropdown-menu">
												<li><a href="crm_cont!findOne?id=<s:property value="#m.id"/>">
												<i class="icon-edit"></i>编辑</a>
												</li>
												<li><a href="crm_cont!del?id=<s:property value="#m.id"/>">
												<i class="icon-trash"></i>删除</a>
												</li>
											</ul>
										</div> <!-- end操作按钮 -->
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
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/search.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/form-samples.js"></script>
	<script src="<%=basePath%>media/js/table-advanced.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Search.init();
			TableAdvanced.init();
			FormSamples.init();
			$(".collapse").click();
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcustomer.js"></script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>