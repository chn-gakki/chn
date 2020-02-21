<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
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
	<title>crm_follow_list.jsp</title>
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
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN SAMPLE TABLE PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-search"></i>智能搜索</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									<a href="javascript:;" class="remove"></a>
								</div>
							</div>
							<div class="portlet-body" id="mysearch">
								<div id="tab_2_2" class="tab-pane active">
									<div class="row-fluid">
										<div class="span12">
											<form action="crm_follow!findAll" method="post">
												<div class="row-fluid">
													<div class="span4">
														<div class="control-group">
															<label class="control-label" for="firstName">客户名称:</label>
															<div class="controls">
																<select class="span12 " name="followvobj.customerId" id="select2_sample_customer"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">业务员部门</label>
															<div class="controls">
																<select class="span12 " name="followvobj.departmentId" id="select2_sample_deps"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label" for="lastName">业务员工</label>
															<div class="controls">
																<select class="span12"  name="followvobj.employeeId"  id="select2_sample_emps"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->
												<div class="row-fluid">
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label">跟进时间开始:</label>
															<div class="controls">
																<div class="input-append date date-picker" data-date="2014-12-12" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
																	<input name="followvobj.startfollowdate" readonly="readonly" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="<s:date name="#vobj.startSigndate" format="yyyy-MM-dd" />" placeholder="请选择"/>
																	<span class="add-on"><i class="icon-calendar"></i> </span>
																</div>
															</div>
														</div>
													</div>

													<div class="span3 ">
														<div class="control-group">
															<label class="control-label">跟进时间结束:</label>
															<div class="controls">
																<div class="input-append date date-picker" data-date="2014-12-12" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
																	<input name="followvobj.endfollowdate" readonly="readonly" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="<s:date name="#vobj.startSigndate" format="yyyy-MM-dd" />" placeholder="请选择"/>
																	<span class="add-on"><i class="icon-calendar"></i> </span>
																</div>
															</div>
														</div>
													</div>
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" for="phone">跟进方式:</label>
															<div class="controls">
																<select class="span12"  name="followvobj.followtype"  id="gjtype"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" for="phone">关键字匹配:</label>
															<div class="controls">
																<input name="followvobj.followcontent" type="text" id="phone" class="m-wrap span12" placeholder="关键字模糊匹配">
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
	<script src="<%=basePath%>main_pages/selectparam.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Search.init();
			TableAdvanced.init();
			FormSamples.init();
			$(".collapse").click();
			var selectgj=$("#gjtype");
			ajaxLoadParam(selectgj,4);
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcustomer.js?v=<%=Math.random()%>"></script>
	<script src="<%=basePath%>main_pages/selectdepsemps.js?v=<%=Math.random()%>"></script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>