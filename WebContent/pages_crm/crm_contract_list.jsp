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
<title>crm_contract_list.jsp</title>
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
						<h3 class="page-title"> CRM合同管理 <small>合同管理页</small></h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">CRM客户管理</a> <i
								class="icon-angle-right"></i> <a href="#">合同订单</a> <i
								class="icon-angle-right"></i> <a href="#">合同管理</a> <i
								class="icon-angle-right"></i> <a href="#">合同列表</a>
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
								<div class="caption"> <i class="icon-search"></i>智能搜索 </div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									<a href="javascript:;" class="remove"></a>
								</div>
							</div>
							<div class="portlet-body" id="mysearch">
								<div id="tab_2_2" class="tab-pane active">
									<div class="row-fluid">
										<div class="span12">
											<form action="ma_contr" method="post">
												<div class="row-fluid">
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">客户公司名称</label>
															<div class="controls">
																<select class="span12 " name="contractvobj.customerId" id="select2_sample_customer"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">业务部门</label>
															<div class="controls">
																<select class="span12 " name="contractvobj.departmentId" id="select2_sample_deps"  tabindex="1">
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
																<select class="span12"  name="contractvobj.employeeId"  id="select2_sample_emps"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<!--/span-->
												</div>
												<!--/row-->

												<div class="row-fluid">
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">签订日期开始:</label>
															<div class="controls">
																<div class="input-append date date-picker" data-date="2014-12-12" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
																	<input name="contractvobj.startSigndate" readonly="readonly" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="<s:date name="#vobj.startSigndate" format="yyyy-MM-dd" />" placeholder="请选择"/>
																	<span class="add-on"><i class="icon-calendar"></i> </span>
																</div>
															</div>
														</div>
													</div>

													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">签订日期结束:</label>
															<div class="controls">
																<div class="input-append date date-picker" data-date="2014-12-12" data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
																	<input name="contractvobj.endSigndate" readonly="readonly" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="<s:date name='#vobj.endSigndate' format='yyyy-MM-dd'/>" placeholder="请选择"/>
																	<span class="add-on"><i class="icon-calendar"></i> </span>
																</div>
															</div>
														</div>
													</div>

													<div class="span4 ">
														<div class="control-group">
															<label class="control-label" for="phone">合同名:</label>
															<div class="controls">
																<input name="contractvobj.contractName" value="<s:property value="#vobj.contractName" />" type="text" id="phone" class="m-wrap span12" placeholder="请填写合同名">
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->
												<div class="row-fluid">
													<button class="btn green span6" type="submit">
														搜索 <i class="m-icon-swapright m-icon-white"></i>
													</button>
													<button class="btn blue span6 " type="reset">
														重置 <i class="m-icon-swapright icon-refresh"></i>
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
							<i class="icon-globe"></i>联系人列表
						</div>
						<div class="actions">
							<a class="btn red" href="crm_contract_add.jsp"> 添加 <i class="icon-plus"></i> </a>
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
													<li><a data-toggle="modal" href="#static<s:property value="#m.id"/>" href="#">
													<i class="icon-eye-open"></i>查看条款</a></li>
													<li><a href="ma_contr!findOne?id=<s:property value="#m.id"/>">
													<i class="icon-edit"></i>编辑</a></li>
													<li><a href="ma_contr!del?id=<s:property value="#m.id"/>">
													<i class="icon-trash"></i>删除</a></li>
												</ul>
											</div> <!-- end操作按钮 --> <!-- begin详细按钮dialog -->
											<div id="static<s:property value="#m.id"/>" class="modal hide fade" tabindex="-1"
												data-backdrop="static" data-keyboard="false"
												data-width="760">
												<div class="modal-body">
													<table class="table table-striped table-bordered table-hover table-full-width">
														<tr>
															<th>编号</th>
															<td><s:property value="#m.id" /></td>
														</tr>
														<tr>
															<th>签约人</th>
															<td><s:property value="#m.hrEmployeeByOurContractorId.name" /></td>
														</tr>
														<tr>
															<th>我方签约</th>
															<td><s:property value="#m.hrDepartmentByOurContractorDepid.DName" /></td>
														</tr>
														<tr>
															<th>促进员工</th>
															<td><s:property value="#m.hrEmployeeByCEmpid.name" /></td>
														</tr>
														<tr>
															<th>促进部门</th>
															<td><s:property value="#m.hrDepartmentByCDepid.DName" /></td>
														</tr>
														<tr>
															<th>开始时间</th>
															<td><s:date name="#m.startDate" format="yyyy-MM-dd" /></td>
														</tr>
														<tr>
															<th>结束时间</th>
															<td><s:date name="#m.endDate" format="yyyy-MM-dd" /></td>
														</tr>
														<tr height="100px;">
															<th>主要条款</th>
															<td><textarea style="width:380px; height: 100px;"><s:property value="#m.mainContent" /></textarea></td>
														</tr>
														<tr height="100px;">
															<th>备注</th>
															<td><textarea style="width:380px; height: 100px;"><s:property value="#m.remarks" /></textarea></td>
														</tr>
													</table>
												</div>
												<div class="modal-footer">
													<button type="button" data-dismiss="modal" class="btn green">关闭窗体</button>
												</div>
											</div> <!-- end详细按钮dialog -->
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
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcustomer.js?v=<%=Math.random()%>"></script>
	<script src="<%=basePath%>main_pages/selectdepsemps.js?v=<%=Math.random()%>"></script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>