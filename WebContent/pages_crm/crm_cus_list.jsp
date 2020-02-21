<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="cn">
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>crm_cus_list.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/DT_bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/datepicker.css" />
	<link href="<%=basePath%>media/css/jquery.fancybox.css" rel="stylesheet" />
	<link href="<%=basePath%>media/css/search.css" rel="stylesheet" type="text/css"/>
	<!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<jsp:include page="/main_pages/top.jsp"></jsp:include>
	<!-- BEGIN 容器 -->
	<div class="page-container row-fluid">
		<jsp:include page="/main_pages/left.jsp"></jsp:include>
		<!-- BEGIN 开始页面-->
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
							CRM客户管理 <small>我的客户管理页</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">CRM客户管理</a> 
								<i class="icon-angle-right"></i>
								<a href="index.html">客户管理</a> 
								<i class="icon-angle-right"></i>
								<a href="index.html">客户列表</a>
							</li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- BEGIN 智能搜索 -->
				<div class="row-fluid">
					<div class="span12" >
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
										<form action="crm_cust" method="post">
											<div class="row-fluid">
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" for="firstName">公司名称:</label>
															<input type="text" class="span12 m-wrap" name="bwvobj.customer" placeholder="模糊匹配名称"/>
														</div>
													</div>
													<!--/span-->
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label">业务员部门</label>
															<div class="controls">
																<select class="span12 m-wrap" name="bwvobj.departmentId" id="select2_sample_deps"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" for="lastName">业务员工</label>
															<div class="controls">
																<select class="span12"  name="bwvobj.employeeId"  id="select2_sample_emps"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" for="firstName">电话:</label>
															<div class="controls">
																<input name="bwvobj.tel" type="text" class="span12 m-wrap" placeholder="电话模糊匹配">
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
											<!--/row-->
											<div class="row-fluid">
													<div class="span3 ">
														<div class="control-group">
														<label class="control-label">录入时间开始:</label>
														<div class="controls">
															<div class="input-append date date-picker"  data-date-format="yyyy-mm-dd" data-date-viewmode="years">
																<input placeholder="请选择" name="bwvobj.createDateStart" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="" /><span class="add-on"><i class="icon-calendar"></i></span>
															</div>
														</div>
														</div>
													</div>
													
													<div class="span3 ">
														<div class="control-group">
														<label class="control-label">录入时间结束:</label>
														<div class="controls">
															<div class="input-append date date-picker"  data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
																<input placeholder="请选择" name="bwvobj.createDateEnd" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="" /><span class="add-on"><i class="icon-calendar"></i></span>
															</div>
														</div>
														</div>
													</div>
													
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" >所属地区省:</label>
															<div class="controls">
																<select class="span12"  name="bwvobj.provincesId"  id="select2_sample_vince"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" for="lastName">所属地区市:</label>
															<div class="controls">
																<select name="bwvobj.cityId" class="span12" id="select2_sample_citys"  tabindex="1">
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
														<label class="control-label">最后跟进开始:</label>
														<div class="controls">
															<div class="input-append date date-picker" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
																<input placeholder="请选择" name="bwvobj.lastfollowStart" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="" /><span class="add-on"><i class="icon-calendar"></i></span>
															</div>
														</div>
														</div>
													</div>
													<div class="span3 ">
														<div class="control-group">
														<label class="control-label">最后跟进结束:</label>
														<div class="controls">
														<div class="input-append date date-picker" data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
															<input placeholder="请选择" name="bwvobj.lastfollowEnd" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="" /><span class="add-on"><i class="icon-calendar"></i></span>
														</div>
														</div>
														</div>
													</div>
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" for="lastName">客户类型:</label>
															<div class="controls">
																<select name="bwvobj.customertypeId" class="span12" id="select2_sample_custype"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span3 ">
														<div class="control-group">
															<label class="control-label" for="lastName">客户级别:</label>
															<div class="controls">
																<select name="bwvobj.customerlevelId" class="span12" id="select2_sample_type"  tabindex="1">
																	<option></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
											</div>
											<!--/row--><br/>
											<div class="row-fluid">
											<button class="btn green span6" type="submit">搜索 <i class="m-icon-swapright m-icon-white"></i></button>
											<button class="btn blue span6 " type="reset">重置 <i class="m-icon-swapright icon-refresh"></i></button>
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
				<!-- END 智能搜索 -->
				<!-- BEGIN 示例表portlet-->
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-globe"></i>客户列表
						</div>
						<div class="actions">
							<a class="btn red" href="crm_cus_add.jsp">新增客户<i class="icon-plus"></i></a>
							<div class="btn-group">
								<a class="btn black" href="#" data-toggle="dropdown"> 改变显示列 <i class="icon-angle-down"></i> </a>
								<div id="sample_2_column_toggler"
									class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
									<label><input type="checkbox" checked data-column="1">公司名称</label>
									<label><input type="checkbox" checked data-column="2">客户类型-来源-级别</label>
									<label><input type="checkbox" checked data-column="3">所属省市</label>
									<label><input type="checkbox" checked data-column="4">录入时间</label>
									<!-- <label><input type="checkbox" checked data-column="5">跟进时间</label> -->
									<label><input type="checkbox" checked data-column="6">电话</label>
									<label><input type="checkbox" checked data-column="7">部门员工</label>
									<label><input type="checkbox" checked data-column="8">客源状态</label>
								</div>
							</div>
							<!-- 
								<div class="btn-group">
								<button class="btn dropdown-toggle" data-toggle="dropdown">工具 <i class="icon-angle-down"></i></button>
								<ul class="dropdown-menu pull-right">
									<li><a href="add_cus.jsp">导出到Excel</a></li>
								</ul>
							</div>
							 -->
						</div>
					</div>
					<div class="portlet-body">
						<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
							<thead>
								<tr>
									<th>序号</th>
									<th>公司名称</th>
									<th>客户类型-来源-级别</th>
									<th>所属省市</th>
									<th>录入时间</th>
									<!-- <th>跟进时间</th> -->
									<th>电话</th>
									<th>部门员工</th>
									<th>客源状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							<s:iterator var="m" value="bywhere" >
								<tr>
									<td><s:property value="#m.id"/></td>
									<td><s:property value="#m.customer"/></td>
									<td><s:property value="#m.paramSysparamByCustomertypeId.paramsName"/>—<s:property value="#m.paramSysparamByCustomersourceId.paramsName"/>—<s:property value="#m.paramSysparamByCustomerlevelId.paramsName"/></td>
									<td><s:property value="#m.paramCityByProvincesId.city"/>—<s:property value="#m.paramCityByCityId.city"/></td>
									<td><s:date name="#m.createDate" format="yyyy-MM-dd"/></td>
									<!-- <td><s:date name="#m.lastfollow" format="yyyy-MM-dd"/></td> -->
									<td><s:property value="#m.tel"/></td>
									<td><s:property value="#m.hrDepartment.DName"/>—<s:property value="#m.hrEmployeeByEmployeeId.name"/></td>
									<td><s:property value="#m.privatecustomer"/></td>
									<td>
									<!-- begin操作按钮 -->
									<div class="btn-group" style="margin-bottom: 0px !important;" >
										<a class="btn mini green" href="#" data-toggle="dropdown">
										<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
										</a>
										<ul class="dropdown-menu">
											<li><a data-toggle="modal" href="#static<s:property value="#m.id"/>"><i class="icon-eye-open"></i>详情</a></li>
											<li><a href="crm_cust!findOne?id=<s:property value="#m.id"/>"><i class="icon-edit"></i>编辑</a></li>
											<li><a href="crm_cust!delete?id=<s:property value="#m.id"/>"><i class="icon-trash"></i>删除</a></li>
											<!-- <li class="divider"></li> -->
											<li><a href="crm_follow?id=<s:property value="#m.id"/>"><i class="icon-eye-open"></i>客户跟进</a></li>
										</ul>
									</div>
									<!-- end操作按钮 -->
									<!-- begin详细按钮dialog -->
									<div id="static<s:property value="#m.id"/>" class="modal hide fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="760">
										<div class="modal-body">
											<table class="table table-striped table-bordered table-hover table-full-width">
												<tr><th>序号</th>		<td><s:property value="#m.id"/></td></tr>
												<tr><th>公司名称</th>	<td><s:property value="#m.customer"/></td></tr>
												<tr><th>电话</th>		<td><s:property value="#m.tel"/></td></tr>
												<tr><th>地址</th>		<td><s:property value="#m.address"/></td></tr>
												<tr><th>备注</th>		<td><s:property value="#m.remarks"/></td></tr>
												<tr><th>客户编号</th>	<td><s:property value="#m.serialnumber"/></td></tr>
												<tr><th>客户类型</th>	<td><s:property value="#m.paramSysparamByCustomertypeId.paramsName"/></td></tr>
												<tr><th>客户类别</th>	<td><s:property value="#m.paramSysparamByCustomerlevelId.paramsName"/></td></tr>
												<tr><th>客户来源</th>	<td><s:property value="#m.paramSysparamByCustomersourceId.paramsName"/></td></tr>
												<tr><th>省份城市</th>	<td><s:property value="#m.paramCityByProvincesId.city"/>[<s:property value="#m.paramCityByCityId.city"/>]</td></tr>
												<tr><th>公司网址</th>	<td><s:property value="#m.site"/></td></tr>
												<tr><th>部门员工</th>	<td><s:property value="#m.hrDepartment.DName"/>[<s:property value="#m.hrEmployeeByEmployeeId.name"/>]</td></tr>
												<tr><th>客源状态</th>	<td><s:property value="#m.privatecustomer"/></td></tr>
												<tr><th>录入时间</th>	<td><s:date name="#m.createDate" format="yyyy-MM-dd"/></td></tr>
												<tr><th>最后跟进</th>	<td><s:date name="#m.lastfollow" format="yyyy-MM-dd"/></td></tr>
											</table>
										</div>
										<div class="modal-footer">
											<button type="button" data-dismiss="modal" class="btn green">关闭窗体</button>
										</div>
									</div>
									<!-- end详细按钮dialog -->
									</td>
								</tr>
								</s:iterator>
							</tbody>
						</table>
					</div>
				</div>
				<!-- END 示例表portlet-->
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
	<script type="text/javascript" src="<%=basePath%>media/js/search.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.fancybox.pack.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="<%=basePath%>media/js/app.js"></script>
 	<script src="<%=basePath%>media/js/form-samples.js"></script> 
	<script src="<%=basePath%>media/js/table-advanced.js"></script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectparam.js"></script> 
	<script>
		jQuery(document).ready(function() {
			App.init();
			TableAdvanced.init();
			FormSamples.init();
			Search.init();
			$(".collapse").click();
		});
		$(function(){
			var custype = $("#select2_sample_custype");
			ajaxLoadParam(custype,1);
			var type=$("#select2_sample_type");
			ajaxLoadParam(type,2);
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcustomer.js"></script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectdepsemps.js"></script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcitys.js"></script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
