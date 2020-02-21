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
	<title>trash_invoice_list.jsp</title>
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
					<h3 class="page-title">
						发票回收 <small>发票回收页面</small>
					</h3>
					<ul class="breadcrumb">
						<li><i class="icon-home"></i> <a href="#">数据回收站</a> <i
								class="icon-angle-right"></i> <a href="#">CRM数据回收</a>
								<i class="icon-angle-right"></i><a href="#">发票回收列表</a> 
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
						<i class="icon-globe"></i>发票回收信息
					</div>
					<div class="actions">
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
								<th>发票号码</th>
								<th>发票类型</th>
								<th>发票金额(￥)</th>
								<th>开票人</th>
								<th>开票日期</th>
								<th></th>
							</tr>
						</thead>
						<tbody id="tablecusfollow">
							<s:iterator value="#invoices" id="listdata" status="i">
								<tr>
									<td><s:property value="#listdata.id" />
									</td>
									<td><s:property value="#listdata.crmCustomer.customer" />
									</td>
									<td><s:property value="#listdata.invoiceNum" />
									</td>
									<td><s:property value="#listdata.paramSysparam.paramsName" />
									</td>
									<td><s:property value="#listdata.invoiceAmount" />
									</td>
									<td><s:property value="#listdata.hrDepartment.DName" />[<s:property value="#listdata.hrEmployeeByCEmpid.name" />]
									</td>
									<td><s:date name="#listdata.invoiceDate" format="yyyy-MM-dd" />
									</td>
									<td>
									<div class="btn-group" style="margin-bottom: 0px !important;">
										<a class="btn mini green" href="#" data-toggle="dropdown">
											<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
										</a>
										<ul class="dropdown-menu">
											<li><a href="crm_invoice!trashAdd?invoiceid=<s:property value="#listdata.id"/>">
											<i class="icon-edit"></i>数据恢复</a></li>
											<li><a href="crm_invoice!trashDel?invoiceid=<s:property value="#listdata.id"/>">
											<i class="icon-trash"></i>彻底删除</a></li>
										</ul>
									</div>
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