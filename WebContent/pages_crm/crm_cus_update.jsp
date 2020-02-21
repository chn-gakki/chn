<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="cn">
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>crm_cus_update.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
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
			<div class="row-fluid">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->   
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN 风格定制 -->
						<jsp:include page="/main_pages/styleset.jsp"></jsp:include>
						<!-- END 风格定制 -->  
						<!-- BEGIN 网页的标题和面包屑-->
						<h3 class="page-title">
							CRM客户修改管理 <small>修改客户管理页</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">CRM客户管理</a> 
								<i class="icon-angle-right"></i>
								<a href="index.html">客户管理</a> 
								<i class="icon-angle-right"></i>
								<a href="index.html">客户列表</a>
								<i class="icon-angle-right"></i>
								<a href="crm_cus_add.jsp">修改客户</a> 
							</li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN 页面 文本-->
				<div class="row-fluid">
					<div class="span12">
						<div class="tabbable tabbable-custom boxless">
								<div class="tab-pane " id="tab_2">
									<div class="portlet box blue">
										<div class="portlet-title">
											<div class="caption"><i class="icon-reorder"></i>客户资料修改</div>
											<div class="tools">
												<a href="javascript:;" class="collapse"></a>
												<a href="javascript:;" class="reload"></a>
												<a href="javascript:;" class="remove"></a>
											</div>
										</div>
										<div class="portlet-body form">
											<!-- BEGIN FORM-->
											<form action="crm_cust!update" method="post" class="form-horizontal">
												<h3 class="form-section">基本信息</h3>
												<div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label">公司名称</label>
															<div class="controls">
																<input name="customer.id"  value="<s:property value="#one.id"/>" type="hidden">
																<input name="customer.customer"  value="<s:property value="#one.customer"/>" type="text" class="m-wrap span12" placeholder="必填">
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label">公司网址</label>
															<div class="controls">
																<input name="customer.site"  value="<s:property value="#one.site"/>" type="text" class="m-wrap span12" placeholder="可填">
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!-- /row -->
												<div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label">公司电话</label>
															<div class="controls">
																<input name="customer.tel"  value="<s:property value="#one.tel"/>" type="text" class="m-wrap span12" placeholder="可填">
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label">公司地址</label>
															<div class="controls">
																<input name="customer.address" value="<s:property value="#one.address"/>" type="text" class="m-wrap span12" placeholder="可填">
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->
												<div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label">所属地区</label>
															<div class="controls">
																<select class="span6 m-wrap" name="customer.paramCityByProvincesId.id" id="select2_sample_vince"  tabindex="1">
																	<option value="<s:property value="#one.paramCityByProvincesId.id"/>">原值:<s:property value="#one.paramCityByProvincesId.city"/></option>
																</select>
																<select class="span6 m-wrap"  name="customer.paramCityByCityId.id"  id="select2_sample_citys"  tabindex="1">
																	<option value="<s:property value="#one.paramCityByCityId.id"/>">原值:<s:property value="#one.paramCityByCityId.city"/></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label">所属行业</label>
															<div class="controls">
																<select class="span12 m-wrap" name="customer.paramSysparamByCustomerindustryId.id" id="select2_sample_hangye"  tabindex="1">
																	<option value="<s:property value="#one.paramSysparamByCustomerindustryId.id"/>">原值:<s:property value="#one.paramSysparamByCustomerindustryId.paramsName"/></option>
																</select>
															</div>
														</div>
													</div>
												</div>
												<!--/row-->

												<h3 class="form-section">其他</h3>
												<div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label">客户类型-级别</label>
															<div class="controls">
																<select name="customer.paramSysparamByCustomertypeId.id" class="span6 m-wrap" id="select2_sample_custype"  tabindex="1">
																	<option value="<s:property value="#one.paramSysparamByCustomertypeId.id"/>">原值:<s:property value="#one.paramSysparamByCustomertypeId.paramsName"/></option>
																</select>
																<select name="customer.paramSysparamByCustomerlevelId.id" class="span6 m-wrap" id="select2_sample_type"  tabindex="1">
																	<option value="<s:property value="#one.paramSysparamByCustomerlevelId.id"/>">原值:<s:property value="#one.paramSysparamByCustomerlevelId.paramsName"/></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label">客户来源</label>
															<div class="controls">
																<select name="customer.paramSysparamByCustomersourceId.id" class="span12 m-wrap" id="select2_sample_source"  tabindex="1">
																	<option value="<s:property value="#one.paramSysparamByCustomersourceId.id"/>">原值:<s:property value="#one.paramSysparamByCustomersourceId.paramsName"/></option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->
												<div class="row-fluid">
													<div class="span12 ">
														<div class="control-group">
															<label class="control-label">客户描述</label>
															<div class="controls">
																<input name="customer.descripe"  value='<s:property value="#one.descripe"/>' type="text" class="m-wrap span12" placeholder="可填">
															</div>
														</div>
													</div>
												</div>
												<!--/row-->
												<div class="row-fluid">
													<div class="span12 ">
														<div class="control-group">
															<label class="control-label">备  注</label>
															<div class="controls">
																<input name="customer.remarks" value="<s:property value="#one.remarks"/>" type="text" class="m-wrap span12" placeholder="可填">
															</div>
														</div>
													</div>
												</div>
												<!-- /row -->
												<div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label">状态</label>
															<div class="controls">
																<select name="customer.privatecustomer"  class="span12 m-wrap" tabindex="1">
																	<option value="<s:property value="#one.privatecustomer"/>">原值:<s:property value="#one.privatecustomer"/></option>
																	<option value="公客">公客</option>
																	<option value="私客">私客</option>
																</select>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span6 ">
														<div class="control-group">
														<label class="control-label">归属业务员</label>
														<div class="controls">
															<select class="span6 m-wrap" name="customer.hrDepartment.id" id="select2_sample_deps"  tabindex="1">
																<option value="<s:property value="#one.hrDepartment.id"/>">原值:<s:property value="#one.hrDepartment.DName"/></option>
															</select>
															<select class="span6"  name="customer.hrEmployeeByEmployeeId.id"  id="select2_sample_emps"  tabindex="1">
																<option value="<s:property value="#one.hrEmployeeByEmployeeId.id"/>">原值:<s:property value="#one.hrEmployeeByEmployeeId.name"/></option>
															</select>
														</div>
													</div>
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
								</div>
						</div>
					</div>
				</div>
				<!-- END PAGE CONTENT-->
			<!-- END 页面容器-->
			<!-- --------------------------------------------------------- -->
		</div>
		<!-- END 页面 -->
	</div>
	<!-- END 容器 -->
	</div>
	</div>
	<jsp:include page="/main_pages/foot.jsp"></jsp:include>
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<script type="text/javascript" src="<%=basePath%>media/js/select2.min.js"></script>
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/form-samples.js"></script>   
	<script type="text/javascript" src="<%=basePath%>main_pages/selectparam.js"></script> 
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			App.init();
			FormSamples.init();
			var custype = $("#select2_sample_custype");
			ajaxLoadParam(custype,1);
			var type=$("#select2_sample_type");
			ajaxLoadParam(type,2);
			var source=$("#select2_sample_source");
			ajaxLoadParam(source,3);
			var hangye=$("#select2_sample_hangye");
			ajaxLoadParam(hangye,8);
			
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcustomer.js"></script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectdepsemps.js"></script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcitys.js"></script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>