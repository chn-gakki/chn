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
<title>crm_order_update.jsp</title>
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
							CRM订单修改 <small>我的订单修改页</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">CRM客户管理</a>
								<i class="icon-angle-right"></i> <a href="#">合同订单</a> 
								<i class="icon-angle-right"></i> <a href="#">订单管理</a> 
								<i class="icon-angle-right"></i> <a href="#">订单修改页</a>
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
									<i class="icon-reorder"></i>订单修改
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
								<form action="ma_order!update" method="post" class="form-horizontal">
									<h3 class="form-section">订单基本信息</h3>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">客户</label>
												<div class="controls">
													<input type="hidden" name="orderobj.id" class="m-wrap span12" value="<s:property value="#one.id" />">
													<select class="span12 " name="orderobj.crmCustomer.id" id="select2_sample_customer"  tabindex="1">
														<option value="<s:property value="#one.crmCustomer.id" />">原值:<s:property value="#one.crmCustomer.customer" /></option>
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
														<option value="<s:property value="#one.paramSysparamByOrderStatusId.id" />">原值:<s:property value="#one.paramSysparamByOrderStatusId.paramsName" /></option>
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
														<option value="<s:property value="#one.hrDepartmentByFDepId.id" />">原值:<s:property value="#one.hrDepartmentByFDepId.DName" /></option>
													</select>&nbsp;
													<select class="span6"  name="orderobj.hrEmployeeByFEmpId.id"  id="select2_sample_emps"  tabindex="1">
														<option value="<s:property value="#one.hrEmployeeByFEmpId.id" />">原值:<s:property value="#one.hrEmployeeByFEmpId.name" /></option>
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
														data-date="<s:date name="#one.orderDate" format="yyyy-MM-dd"/>"
														data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
														<input name="orderobj.orderDate" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value='<s:date name="#one.orderDate" format="yyyy-MM-dd"/>' />
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
													<textarea class="m-wrap span11" name="orderobj.orderDetails" rows="4"><s:property value="#one.orderDetails" /></textarea>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="row-fluid">
										<div class="span4 ">
											<div class="control-group">
												<label class="control-label">支付方式</label>
												<div class="controls">
													<select class="span12"  name="orderobj.paramSysparamByPayTypeId.id"  id="select2_sample_paytype"  tabindex="1">
														<option value="<s:property value="#one.paramSysparamByPayTypeId.id"/>">原值:<s:property value="#one.paramSysparamByPayTypeId.paramsName" /></option>
													</select>
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span4 ">
											<div class="control-group">
												<label class="control-label">金额</label>
												<div class="controls">
													<input type="text" id="orderamount" disabled class="m-wrap span12" value='<s:property value="#one.orderAmount"/>'>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="form-actions">
										<button type="submit" class="btn green">
											<i class="icon-ok"></i>保存
										</button>
										<button type="reset" class="btn">重置</button>
									</div>
								</form>
								<!-- END FORM-->
									<h3 class="form-section">订单所属产品编辑</h3>
									<!--BEGIN TABS-->
									<div class="tabbable tabbable-custom">
										<ul class="nav nav-tabs">
											<li class="active"><a href="#tab_1_1" data-toggle="tab">订单产品</a>
											</li>
											<li><a href="#tab_1_2" data-toggle="tab"><i class="icon-plus"></i>添加产品</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="tab_1_1">
												<!-- BEGIN SAMPLE TABLE PORTLET-->
												<div class="portlet">
													<div class="portlet-body">
														<table class="table table-striped table-bordered table-advance table-hover">
															<thead>
																<tr>
																	<th><i class="icon-briefcase"></i> 产品名</th>
																	<th class="hidden-phone"><i class="icon-user"></i>单价</th>
																	<th><i class=" icon-adjust"></i> 数量</th>
																	<th><i class="icon-krw"></i> 单位</th>
																	<th><i class="icon-shopping-cart"></i> 总价</th>
																	<th></th>
																</tr>
															</thead>
															<tbody id="tbody">
																<s:iterator value="#one.crmOrderDetailses" var="de">
																	<tr>
																		<td class="highlight">
																			 <a href="?id=<s:property value="#de.crmProduct.productId" />"><s:property value="#de.crmProduct.productName" /></a>
																		</td>
																		<td class="hidden-phone"><s:property value="#de.price" /></td>
																		<td><s:property value="#de.quantity" /></td>
																		<td><s:property value="#de.unit" /></td>
																		<td><s:property value="#de.amount" /></td>
																		<td><a onclick="deleteOne(<s:property value="#de.id" />,this,<s:property value="#de.amount" />)"
																			class="btn mini purple"><i class="icon-trash"></i>删除</a>
																		</td>
																	</tr>
																</s:iterator>
															</tbody>
														</table>
													</div>
												</div>
												<!-- END SAMPLE TABLE PORTLET-->
											</div>
											<div class="tab-pane" id="tab_1_2">
												<div class="row-fluid">
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label">订单ID</label>
															<div class="controls">
																<input type="text" id="orderid" disabled class="m-wrap span12" value="<s:property value="#one.id" />">
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label">产品</label>
															<div class="controls">
																<select id="select2_sample_cate" class="span4">
																	<option value="-1">请先选择</option>
																</select>
																<select id="select2_sample_childcate" class="span4">
																	<option value="-1">请选择</option>
																</select>
																<select id="select2_sample_childprod" class="span4">
																	<option value="-1">请选择</option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label">单价</label>
															<div class="controls">
																<input type="text"  id="proprice" disabled class="m-wrap span12"
																	value='0.00'>
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<div class="row-fluid">
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">单位</label>
															<div class="controls">
																<input type="text" disabled id="prounit" class="m-wrap span12"
																	value=''>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">数量</label>
															<div class="controls">
																<input type="text"  id="pronums" class="m-wrap span12"
																	value=''>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span4 ">
														<div class="control-group">
															<label class="control-label">总价</label>
															<div class="controls">
																<input type="text" id="amount" disabled class="m-wrap span12"
																	value=''>
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<div class="form-actions">
													<button type="submit" id="button-sumit" class="btn green"><i class="icon-ok"></i>保存</button>
													<button type="reset" class="btn">重置</button>
													<button type="button" onclick="history.back()" class="btn blue">返回</button>
												</div>
											</div>
										</div>
									</div>
									<!--END TABS-->
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
		
		function deleteOne(num,a,amount){
			if (confirm("确定要删除？")) {
				var url="ma_detail!delete?id="+num+"&v"+new Date().valueOf();
				$(a).parent().parent().remove();
				$.get(url,function(d){
					if (d=="success") {
						$("#errmsg").html("删除成功");
						$("#btnerr").click();
						$orderamount.val(($orderamount.val()*1-amount*1));
					} else {
						$("#errmsg").html("删除失败");
						$("#btnerr").click();
					}
				});
			};
		}
		var $orderamount=$("#orderamount");
		var $price=$("#proprice");
		var $unit=$("#prounit");
		var $amount=$("#amount");
		var $productid=$("#select2_sample_childprod");
		var $quality=$("#pronums");
		var $orderid=$("#orderid");
		$(function(){
			$productid.change(function(){
				var id=$(this).val();
				var url="../pages_crm/ma_detail!getPriceById?id="+id+"&v="+new Date().valueOf();
				$.getJSON(url,function(d){
					if (d!=null) {
						$price.val(d.price);
						$unit.val(d.unit);
					} else {
						alert("加载失败");
					}
				});
			});
			
			$quality.keyup(function(){
				var id=$(this).val();
				$amount.val(id*$price.val());
			});
			
			$("#button-sumit").click(function(){
				var url="ma_detail!addOne?v="+new Date().valueOf();
				var json={"details.crmProduct.productId":""+$productid.val()+"","details.crmOrder.id":""+$orderid.val()+"","details.price":""+$price.val()+"","details.quantity":""+$quality.val()+"","details.unit":""+$unit.val()+"","details.amount":""+$amount.val()+""};
				var proid = $productid.val();
				var proname = $productid.find("option[value="+proid+"]").text();
				$.post(url,json,function(d){
					if (d=="success") {
						var chtml = "<tr>\
							<td class='highlight'>\
								 <a href='?id="+$productid.val()+"'>"+proname+"</a>\
							</td>\
							<td class='hidden-phone'>"+$price.val()+"</td>\
							<td>"+$quality.val()+"</td>\
							<td>"+$unit.val()+"</td>\
							<td>"+$amount.val()+"</td>\
							<td><a onclick='deleteOne(,this)'\
								class='btn mini purple'><i class='icon-trash'></i>删除</a>\
							</td>\
						</tr>";
						$("#tbody").append(chtml);
						$orderamount.val(($orderamount.val()*1+$amount.val()*1));
						$("#errmsg").html("添加成功,单击订单产品查看");
						$("#btnerr").click();
					} else {
						$("#errmsg").html("添加失败");
						$("#btnerr").click();
					};
				});
			});
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
			var prod = $("#select2_sample_childprod"); //子产品 下拉
			var childcate = $("#select2_sample_childcate"); //子产品分类下拉
			childcate.change(function(){
				var childcateid = childcate.val();
				var urlprod = "../pages_crm/crm_prod!ajaxGetProduct?cateid=" + childcateid + "&v=" + new Date().valueOf();
				$.getJSON(urlprod, function(d) {
					var chtml = "<option value='-1'>请选择</option>";
					for ( var int = 0; int < d.length; int++) {
						chtml += "<option value='" + d[int].productId + "'>"
								+ d[int].productName + "</option>";
					}
					prod.html(chtml);
				});
			});
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcustomer.js?v=<%=Math.random()%>"></script>
	<script src="<%=basePath%>main_pages/selectdepsemps.js?v=<%=Math.random()%>"></script>
	<script src="<%=basePath%>main_pages/selectcategories.js?v=<%=Math.random()%>"></script>
	
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
