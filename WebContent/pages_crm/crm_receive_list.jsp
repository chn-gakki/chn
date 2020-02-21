<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
	<title>crm_receive_list.jsp</title>
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
						CRM客户管理 <small>收款管理</small>
					</h3>
					<ul class="breadcrumb">
						<li><i class="icon-home"></i> <a href="#">CRM客户管理</a>
							<i class="icon-angle-right"></i> <a href="#">财务管理</a>
							<i class="icon-angle-right"></i> <a href="#">收款管理</a> 
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
											<form action="crm_receive!findAll" method="post">
												<div class="row-fluid">
													<div class="span4">
														<div class="control-group">
															<label class="control-label" for="firstName">公司名称:</label>
															<div class="controls">
																<select class="span12 " name="receivevobj.customerId" id="select2_sample_customer"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">收款部门</label>
															<div class="controls">
																<select class="span12 " name="receivevobj.departmentId" id="select2_sample_deps"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">收款员工</label>
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
															<label class="control-label">收款时间开始:</label>
															<div class="controls">
																<div class="input-append date date-picker" data-date="2014-12-12" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
																	<input name="receivevobj.startdate" readonly="readonly" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="<s:date name="#vobj.startSigndate" format="yyyy-MM-dd" />" placeholder="请选择"/>
																	<span class="add-on"><i class="icon-calendar"></i> </span>
																</div>
															</div>
														</div>
													</div>

													<div class="span3 ">
														<div class="control-group">
															<label class="control-label">收款时间结束:</label>
															<div class="controls">
																<div class="input-append date date-picker" data-date="2014-12-12" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
																	<input name="receivevobj.enddate" readonly="readonly" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="<s:date name="#vobj.startSigndate" format="yyyy-MM-dd" />" placeholder="请选择"/>
																	<span class="add-on"><i class="icon-calendar"></i> </span>
																</div>
															</div>
														</div>
													</div>
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" for="phone">收款方式:</label>
															<div class="controls">
																<select class="span12"  name="receivevobj.paytype"  id="receivetype"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" for="phone">凭证号码:</label>
															<div class="controls">
																<input name="receivevobj.num" type="text" id="phone" class="m-wrap span12" placeholder="号码模糊匹配">
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
						<i class="icon-globe"></i>收款信息
					</div>
					<div class="actions">
						<button type="button" onclick="history.back()" class="btn purple">返回</button>
						<div class="btn-group">
							<a class="btn green" href="#" data-toggle="dropdown"> 改变显示列
								<i class="icon-angle-down"></i> </a>
							<div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
								<label><input type="checkbox" checked data-column="1">凭证号码</label>
								<label><input type="checkbox" checked data-column="2">付款方式</label>
								<label><input type="checkbox" checked data-column="3">收款金额(￥)</label>
								<label><input type="checkbox" checked data-column="4">收款人</label>
								<label><input type="checkbox" checked data-column="5">收款日期</label>
								<label><input type="checkbox" checked data-column="6">录入人</label>
							</div>
						</div>
					</div>
				</div>
				<div class="portlet-body">
					<table class="table table-striped table-bordered table-hover table-full-width"
						id="sample_2">
						<thead>
							<tr>
								<th>序号</th>
								<th>公司名</th>
								<th>凭证号码</th>
								<th>付款方式</th>
								<th>收款金额(￥)</th>
								<th>收款人</th>
								<th>收款日期</th>
								<th>录入人</th>
							</tr>
						</thead>
						<tbody id="tablecusfollow">
							<s:iterator value="#receives" id="listdata" status="i">
								<tr>
									<td><s:property value="#listdata.id" />
									</td>
									<td><s:property value="#listdata.crmCustomer.customer" />
									</td>
									<td><s:property value="#listdata.receiveNum" />
									</td>
									<td><s:property value="#listdata.paramSysparamByReceiveTypeId.paramsName" />
									</td>
									<td><s:property value="#listdata.receiveAmount" />
									</td>
									<td><s:property value="#listdata.hrDepartment.DName" />[<s:property value="#listdata.hrEmployeeByCEmpid.name" />]
									</td>
									<td><s:date name="#listdata.receiveDate" format="yyyy-MM-dd" />
									</td>
									<td><s:property value="#listdata.hrEmployeeByCreateId.name" />
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- END 页面 -->
	</div>
	<!-- END 容器 -->
</div>
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
		TableAdvanced.init();
		Search.init();
		FormSamples.init();
		$(".collapse").click();
		var receivetype=$("#receivetype");
		ajaxLoadParam(receivetype,5);
	});
</script>
<script type="text/javascript" src="<%=basePath%>main_pages/selectcustomer.js?v=<%=Math.random()%>"></script>
<script src="<%=basePath%>main_pages/selectdepsemps.js?v=<%=Math.random()%>"></script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>