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
<title>crm_order_add.jsp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<jsp:include page="/media/ui_css.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/datepicker.css" />
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
							CRM订单新增 <small>我的订单新增页</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">CRM客户管理</a>
								<i class="icon-angle-right"></i> <a href="#">合同订单</a> <i
								class="icon-angle-right"></i> <a href="#">订单管理</a> <i
								class="icon-angle-right"></i> <a href="#">订单新增页</a></li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN SAMPLE FORM PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-reorder"></i>订单新增
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a> <a
										href="#portlet-config" data-toggle="modal" class="config"></a>
									<a href="javascript:;" class="reload"></a> <a
										href="javascript:;" class="remove"></a>
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form action="ma_order!add" method="post" class="form-horizontal">
									<h3 class="form-section">订单基本信息</h3>
									<div class="alert">
									<button class="close" data-dismiss="alert"></button>
									<strong>提醒:</strong> 请添加完订单后 去添加订单产品
									</div>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">客户</label>
												<div class="controls">
													<select class="span12 " name="orderobj.crmCustomer.id" id="select2_sample_customer"  tabindex="1">
														<option value="-1">请选择</option>
													</select>
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">订单状态</label>
												<div class="controls">
													<select class="span9"  name="orderobj.paramSysparamByOrderStatusId.id"  id="select2_sample_orderstate"  tabindex="1">
														<option value="-1">请选择</option>
													</select>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!-- /row -->
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">所属</label>
												<div class="controls">
													<select class="span6 " name="orderobj.hrDepartmentByFDepId.id" id="select2_sample_deps"  tabindex="1">
														<option value="-1">请选择</option>
													</select>&nbsp;
													<select class="span6"  name="orderobj.hrEmployeeByFEmpId.id"  id="select2_sample_emps"  tabindex="1">
														<option value="-1">请选择</option>
													</select>
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">成交时间</label>
												<div class="controls">
													<div class="input-append date date-picker"
														data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
														<input name="orderobj.orderDate" class="m-ctrl-medium date-picker" placeholder="必填" size="16" type="text" value='' />
														<span class="add-on"> <i class="icon-calendar"></i></span>
													</div>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="row-fluid">
										<div class="span12 ">
											<div class="control-group">
												<label class="control-label">订单详情</label>
												<div class="controls">
													<textarea class="span11" name="orderobj.orderDetails" rows="4" placeholder="可填"></textarea>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">支付方式</label>
												<div class="controls">
													<select name="orderobj.paramSysparamByPayTypeId.id"  id="select2_sample_paytype"  tabindex="1">
														<option value="-1">请选择</option>
													</select>
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">订单编号</label>
												<div class="controls">
													<input type="text" class="span9" name="orderobj.serialnumber" placeholder="必填"/>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">促成部门人员</label>
												<div class="controls">
													<select class="span6 " name="orderobj.hrDepartmentByCDepId.id" id="select2_sample_cdeps"  tabindex="1">
														<option value="-1">请选择</option>
													</select>&nbsp;
													<select class="span6"  name="orderobj.hrEmployeeByCEmpId.id"  id="select2_sample_cemps"  tabindex="1">
														<option value="-1">请选择</option>
													</select>
												</div>
											</div>`
										</div>
										<!--/span-->
									</div>
									<div class="form-actions">
										<button type="submit" id="submit-button" class="btn green"><i class="icon-ok"></i>保存</button>
										<button type="reset" class="btn">重置</button>
										<button type="button" onclick="history.back()" class="btn blue">返回</button>
									</div>
								</form>
								<!-- END FORM-->
							</div>
						</div>
						<!-- END SAMPLE FORM PORTLET-->
					</div>
				</div>
				<!-- END PAGE CONTENT-->
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
	<script type="text/javascript" src="<%=basePath%>media/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/search.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/form-samples.js"></script>
	<script src="<%=basePath%>main_pages/selectparam.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Search.init();
			FormSamples.init();
		});
		
		$(function() {
			$("#searchbtn").toggle(function() {
				$("#mysearch").fadeIn();
			}, function() {
				$("#mysearch").fadeOut();
			});
			$("#mysearch").fadeOut();
			var orderstate = $("#select2_sample_orderstate");//订单状态下拉
			ajaxLoadParam(orderstate,6);
			var paytype = $("#select2_sample_paytype");//付款类型 下拉
			ajaxLoadParam(paytype,5);
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcustomer.js?v=<%=Math.random()%>"></script>
	<script src="<%=basePath%>main_pages/selectdepsemps.js?v=<%=Math.random()%>"></script>
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