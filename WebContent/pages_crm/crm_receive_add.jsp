<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
	<title>crm_receive_add.jsp</title>
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
							CRM客户管理 <small>添加收款</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">CRM客户管理</a>
								<i class="icon-angle-right"></i> <a href="#">财务管理</a> 
								<i class="icon-angle-right"></i> <a href="#">收款管理</a> 
								<i class="icon-angle-right"></i> <a href="#">添加收款</a>
							</li>
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
									<i class="icon-reorder"></i>添加收款
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form action="crm_receive!add" method="post" class="form-horizontal">
									<h3 class="form-section">订单信息</h3>
									<input name="receive.crmOrder.id" value='<s:property value="#orderid"/>' type="hidden">
									<div class="row-fluid">
										<div class="span6">
											<div class="control-group">
												<label class="control-label">客户：</label>
												<div class="controls">
												<input name="receive.crmCustomer.id" value='<s:property value="#order.crmCustomer.id"/>' type="hidden">
												<input class="span8 m-wrap" readonly="readonly" value='<s:property value="#order.crmCustomer.customer" />' type="text" />
												</div>
											</div>
										</div>
										<div class="span6">
											<div class="control-group">
												<label class="control-label">订单日期</label>
												<div class="controls">
													<input class="span8 m-wrap" readonly="readonly" value='<s:date name="#order.orderDate" format="yyyy-MM-dd" />' type="text" />
												</div>
											</div>
										</div>
									</div>
									<!--/span-->
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">应收金额(￥)</label>
												<div class="controls">
													<input readonly="readonly" type="text" class="m-wrap span8" value="<s:property value="#order.orderAmount" />">
												</div>
											</div>
										</div>
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">已开票额(￥)</label>
												<div class="controls">
													<input readonly="readonly" value="<s:property value="#order.invoiceMoney" />" type="text" class="m-wrap span8" >
												</div>
											</div>
										</div>
									</div>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">已收金额(￥)</label>
												<div class="controls">
													<input readonly="readonly" value="<s:property value="#order.receiveMoney" />" type="text" class="m-wrap span8">
												</div>
											</div>
										</div>
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">未开票额(￥)</label>
												<div class="controls">
													<input readonly="readonly" value="<s:property value="#order.arrearsInvoice" />" type="text" class="m-wrap span8" >
												</div>
											</div>
										</div>
									</div>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">未收金额(￥)</label>
												<div class="controls">
													<input readonly="readonly" value="<s:property value="#order.arrearsMoney" />" type="text" class="m-wrap span8" >
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">订单归属：</label>
												<div class="controls">
													<input type="text" class="m-wrap span8" readonly="readonly"
													 value="<s:property value="#order.hrDepartmentByFDepId.DName" />-<s:property value="#order.hrEmployeeByFEmpId.name" />">
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<h3 class="form-section">添加收款信息</h3>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">收款金额(￥)</label>
												<div class="controls">
													<input name="receive.receiveAmount" type="text" class="m-wrap span8" >
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">收款类别：</label>
												<div class="controls">
													<select name="receive.paramSysparamByReceiveDirectionId.id" id="receive" class="m-wrap span8">
														<option value="-1" >请选择</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">付款方式：</label>
												<div class="controls">
													<select name="receive.paramSysparamByReceiveTypeId.id" id="paytype" class="m-wrap span8">
														<option value="-1" >请选择</option>
													</select>
												</div>
											</div>
										</div>
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">凭证号码：</label>
												<div class="controls">
													<input name="receive.receiveNum" type="text" class="m-wrap span8" >
												</div>
											</div>
										</div>
									</div>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">收款时间：</label>
												<div class="controls">
													<div class="input-append date date-picker" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
														<input name="receive.receiveDate" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" />
														<span class="add-on"><i class="icon-calendar"></i></span>
													</div>
												</div>
											</div>
										</div>
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">收款人：</label>
												<div class="controls">
													<select name="receive.hrDepartment.id" id="select2_sample_deps"  class="m-wrap span6">
														<option value="-1">请选择</option>
													</select>
													<select name="receive.hrEmployeeByCEmpid.id" id="select2_sample_emps"  class="m-wrap span6">
														<option value="-1">请选择</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="row-fluid">
										<div class="span12 ">
											<div class="control-group">
												<label class="control-label">收款内容：</label>
												<div class="controls">
													<textarea name="receive.remarks" class="m-wrap span8" ></textarea>
												</div>
											</div>
										</div>
									</div>
									<!--/span-->
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
	<script src="<%=basePath%>main_pages/selectdepsemps.js"></script>
	<script src="<%=basePath%>main_pages/selectparam.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Search.init();
			FormSamples.init();
			var paytype=$('#paytype');
			var receive=$('#receive');
			ajaxLoadParam(paytype,5);
			ajaxLoadParam(receive,13);
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
