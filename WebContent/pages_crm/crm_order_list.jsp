<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="cn">
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>crm_order_list.jsp</title>
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
							CRM订单管理 <small>订单管理页</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">CRM客户管理</a>
								<i class="icon-angle-right"></i> <a href="#">合同订单</a> <i
								class="icon-angle-right"></i> <a href="#">订单管理</a> <i
								class="icon-angle-right"></i> <a href="#">订单列表</a>
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
											<form action="ma_order" method="post">
												<div class="row-fluid">
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label" for="firstName">客户名</label>
															<div class="controls">
																<select class="span12 " name="bw.customerId" id="select2_sample_customer"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">成交部门</label>
															<div class="controls">
																<select class="span12 " name="bw.FDepId" id="select2_sample_deps"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label" for="lastName">成交员工</label>
															<div class="controls">
																<select class="span12"  name="bw.FEmpId"  id="select2_sample_emps"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->
												<div class="row-fluid">
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">成交时间开始:</label>
															<div class="controls">
																<div class="input-append date date-picker" data-date=""  data-date-format="yyyy-mm-dd" data-date-viewmode="years">
																	<input class="m-wrap m-ctrl-medium date-picker" placeholder="请选择" size="16" readonly="readonly" type="text" value="" name="bw.startOrderdate" /><span class="add-on">
																	<i class="icon-calendar"></i> </span>
																</div>
															</div>
														</div>
													</div>
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">成交时间结束:</label>
															<div class="controls">
																<div class="input-append date date-picker" data-date="" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
																	<input class="m-wrap m-ctrl-medium date-picker" placeholder="请选择" size="16" type="text" readonly="readonly" value="" name="bw.endOrderdate" /><span class="add-on">
																	<i class="icon-calendar"></i> </span>
																</div>
															</div>
														</div>
													</div>
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label" for="phone">订单状态:</label>
															<div class="controls">
																<select class="span12"  name="bw.orderStatus" id="select2_sample_orderstate"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
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
							<i class="icon-globe"></i>客户订单列表
						</div>
						<div class="actions">
							<a class="btn red" href="crm_order_add.jsp"> 添加 <i class="icon-plus"></i> </a> 
							<div class="btn-group">
								<a class="btn green" href="#" data-toggle="dropdown"> 改变显示列
									<i class="icon-angle-down"></i> </a>
								<div id="sample_2_column_toggler"
									class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
									<label><input type="checkbox" checked data-column="1">客户名</label>
									<label><input type="checkbox" checked data-column="2">成交部门-人员</label>
									<label><input type="checkbox" checked data-column="3">成交时间</label>
									<label><input type="checkbox" checked data-column="4">订单状态</label>
									<label><input type="checkbox" checked data-column="5">订单金额</label>
									<label><input type="checkbox" checked data-column="6">已收总额</label>
									<label><input type="checkbox" checked data-column="7">未收余额</label>
									<label><input type="checkbox" checked data-column="8">已开票额</label>
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
									<th>成交部门-人员</th>
									<th>成交时间</th>
									<th>订单状态</th>
									<th>订单金额(￥)</th>
									<th>已收总额(￥)</th>
									<th>未收余额(￥)</th>
									<th>已开票额(￥)</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="a" var="m" status="i">
									<tr>
										<th><s:property value="#m.id" />
										</th>
										<th><s:property value="#m.crmCustomer.customer" />
										</th>
										<th><s:property value="#m.hrDepartmentByFDepId.dName" />—<s:property value="#m.hrEmployeeByFEmpId.name" />
										</th>
										<th><s:date name="#m.orderDate" format="yyyy-MM-dd"/>
										</th>
										<th><s:property value="#m.paramSysparamByOrderStatusId.paramsName" />
										</th>
										<th><s:property value="#m.orderAmount == null?'请去添加产品':''" /><s:property value="#m.orderAmount" />
										</th>
										<th><s:property value="#m.receiveMoney" />
										</th>
										<th><s:property value="#m.arrearsMoney" />
										</th>
										<th><s:property value="#m.invoiceMoney" />
										</th>
										<td>
											<!-- begin操作按钮 -->
											<div class="btn-group" style="margin-bottom: 0px !important;">
												<a class="btn mini green" href="#" data-toggle="dropdown">
													<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
												</a>
												<ul class="dropdown-menu">
													<li><a data-toggle="modal" href="#static<s:property value="#m.id" />">
													<i class="icon-eye-open"></i>详情</a></li>
													<li><a href="crm_receive!findOne?orderid=<s:property value="#m.id" />">
													<i class="icon-plus"></i>增加收款</a></li>
													<s:if test="#v eq 0">
														
													<li><a href="ma_order!findOne?orderobj.id=<s:property value="#m.id"/>">
													<i class="icon-edit"></i>编辑</a></li>
													<li><a href="ma_order!del?orderobj.id=<s:property value="#m.id"/>">
													<i class="icon-trash"></i>删除</a></li>
													
													</s:if>
													<s:if test="#v eq 1">
													
													<li><a href="crm_receive?orderid=<s:property value="#m.id"/>">
													<i class="icon-trash"></i>收款详情</a></li>
													
													</s:if>
													<s:if test="#v eq 2">
													
													<li><a href="crm_invoice?orderid=<s:property value="#m.id"/>">
													<i class="icon-trash"></i>开票详情</a></li>
													
													</s:if>
													<li><a data-toggle="modal" href="#prostatic<s:property value="#m.id" />">
													<i class="icon-eye-open"></i>产品详情</a></li>
												</ul>
											</div> 
											<!-- end操作按钮 -->
											 <!-- begin详细按钮dialog -->
											<div id="static<s:property value="#m.id" />" class="modal hide fade" tabindex="-1" data-backdrop="static"
												data-keyboard="false" data-width="760">
												<div class="modal-body">
													<table class="table table-striped table-bordered table-hover table-full-width">
														<tr>
															<td>序号—[订单编号]</td>
															<td><s:property value="#m.id" />—[<s:property value="#m.serialnumber" />]</td>
														</tr>
														<tr>
															<td>客户名</td>
															<td><s:property value="#m.crmCustomer.customer" />
															</td>
														</tr>
														<tr>
															<td>成交部门—人员</td>
															<td><s:property value="#m.hrDepartmentByFDepId.dName" />—<s:property value="#m.hrEmployeeByFEmpId.name" /></td>
														</tr>
														<tr>
															<td>促成部门—人员</td>
															<td><s:property value="#m.hrDepartmentByCDepId.dName" />—<s:property value="#m.hrEmployeeByCEmpId.name" /> </td>
														</tr>
														<tr>
															<td>订单详细</td>
															<td><s:property value="#m.orderDetails" /></td>
														</tr>
														<tr>
															<td>创建人员</td>
															<td><s:property value="#m.hrEmployeeByCreateId.name" /> </td>
														</tr>
														<tr>
															<td>订单状态</td>
															<td><s:property value="#m.paramSysparamByOrderStatusId.paramsName" />
															</td>
														</tr>
														<tr>
															<td>订单金额(￥)</td>
															<td><s:property value="#m.orderAmount" /></td>
														</tr>
														<tr>
															<td>已收总额(￥)</td>
															<td><s:property value="#m.receiveMoney" /></td>
														</tr>
														<tr>
															<td>未收余额(￥)</td>
															<td><s:property value="#m.arrearsMoney" /></td>
														</tr>
														<tr>
															<td>已开票额(￥)</td>
															<td><s:property value="#m.invoiceMoney" /></td>
														</tr>
														<tr>
															<td>成交时间</td>
															<td><s:date name="#m.orderDate" format="yyyy-MM-dd"/></td>
														</tr>
													</table>
												</div>
												<div class="modal-footer"> 
												<button type="button" data-dismiss="modal" class="btn green">关闭窗体</button>
												</div>
											</div>
											 <!-- end详细按钮dialog -->
											 <!-- begin详细按钮dialog -->
											<div id="prostatic<s:property value="#m.id" />" class="modal hide fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="760">
												<div class="modal-body">
													<table class="table table-striped table-bordered table-hover table-full-width">
														<tr>
															<td>序号</td>
															<td>产品名</td>
															<td>单价</td>
															<td>数量</td>
															<td>单位</td>
															<td>总价</td>
														</tr>
														<s:iterator value="#m.crmOrderDetailses" var="pro">
															<tr>
																<td><s:property value="#pro.id" />
																</td>
																<td><s:property value="#pro.crmProduct.productName" />
																</td>
																<td><s:property value="#pro.price" />
																</td>
																<td><s:property value="#pro.quantity" />
																</td>
																<td><s:property value="#pro.unit" />
																</td>
																<td><s:property value="#pro.amount" />
																</td>
															</tr>
														</s:iterator>
													</table>
												</div>
												<div class="modal-footer">
													<button type="button" data-dismiss="modal" class="btn green">关闭窗体</button>
												</div>
											</div> <!-- end详细按钮dialog --></td>
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
		$(function() {
			var orderstate = $("#select2_sample_orderstate");
			$(function(){
				var sysid=6;//这里定义要显示的分类 父ID   
				var url="../pages_param/param_sys!ajaxGetBySysId?sysid="+sysid+"&v="+new Date().valueOf();
				$.getJSON(url,function(d){
					var chtml="";
					for ( var int = 0; int < d.length; int++) {
						chtml+="<option value='"+d[int].id+"'>"+d[int].paramsName+"</option>";
					}
					orderstate.append(chtml);
				});
			});
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcustomer.js?v=<%=Math.random()%>"></script>
	<script src="<%=basePath%>main_pages/selectdepsemps.js?v=<%=Math.random()%>"></script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>