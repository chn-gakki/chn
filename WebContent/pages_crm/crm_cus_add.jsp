<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<title>crm_cus_add.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/datepicker.css" />
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
						<h3 class="page-title">CRM客户新增 <small>客户新增页</small></h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">CRM客户管理</a> 
								<i class="icon-angle-right"></i>
								<a href="index.html">客户管理</a>
								<i class="icon-angle-right"></i>
								<a href="index.html">客户列表</a>
								<i class="icon-angle-right"></i>
								<a href="index.html">客户新增页</a>
							</li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box blue" id="form_wizard_1">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-reorder"></i> 新增用户录入向导——<span class="step-title">1 步骤至 4</span>
								</div>
								<div class="tools hidden-phone">
									<a href="javascript:;" class="collapse"></a>
									<a href="javascript:;" class="reload"></a>
									<a href="javascript:;" class="remove"></a>
								</div>
							</div>
							<div class="portlet-body form">
								<form action="crm_cust!add" method="post" class="form-horizontal" id="submit_form">
									<div class="form-wizard">
										<div class="navbar steps">
											<div class="navbar-inner">
												<ul class="row-fluid">
													<li class="span3">
														<a href="#tab1" data-toggle="tab" class="step active">
														<span class="number">1</span>
														<span class="desc"><i class="icon-ok"></i>公司信息</span>   
														</a>
													</li>
													<li class="span3">
														<a href="#tab2" data-toggle="tab" class="step">
														<span class="number">2</span>
														<span class="desc"><i class="icon-ok"></i> 主联系人</span>   
														</a>
													</li>
													<li class="span3">
														<a href="#tab3" data-toggle="tab" class="step">
														<span class="number">3</span>
														<span class="desc"><i class="icon-ok"></i> 其他</span>   
														</a>
													</li>
													<li class="span3">
														<a href="#tab4" data-toggle="tab" class="step">
														<span class="number">4</span>
														<span class="desc"><i class="icon-ok"></i> 确认完成</span>   
														</a>
													</li>
												</ul>
											</div>
										</div>
										<div id="bar" class="progress progress-success progress-striped">
											<div class="bar"></div>
										</div>
										<div class="tab-content">
											<div class="alert alert-error hide">
												<button class="close" data-dismiss="alert"></button>
												你有某种形式的错误。请检查下面。
											</div>
											<div class="alert alert-success hide">
												<button class="close" data-dismiss="alert"></button>
												你的表单验证是成功的！
											</div>
											<div class="tab-pane active" id="tab1">
												<h3 class="block">请填写你的基本信息</h3>
												<div class="control-group">
													<label class="control-label">公司名称<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="customer.customer"/>
														<span class="help-inline">请填写真实的公司名称</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司网址<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="customer.site"/>
														<span class="help-inline">请填写真实的公司网址</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司电话<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="customer.tel"/>
														<span class="help-inline">请填写真实的公司电话</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司地址<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="customer.address"/>
														<span class="help-inline">请填写真实的公司地址</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">所属地区省市<span class="required">*</span></label>
													<div class="controls">
														<select class="span3 m-wrap" name="customer.paramCityByProvincesId.id" id="select2_sample_vince"  tabindex="1">
															<option value="-1">请选择</option>
														</select> —
														<select class="span3 m-wrap"  name="customer.paramCityByCityId.id"  id="select2_sample_citys"  tabindex="1">
															<option value="-1">请选择</option>
														</select>
														<span class="help-inline">请选择所属地区</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">所属行业<span class="required">*</span></label>
													<div class="controls">
														<select class="span6 m-wrap" name="customer.paramSysparamByCustomerindustryId.id" id="select2_sample_hangye"  tabindex="1">
															<option value="-1">请选择</option>
														</select>
														<span class="help-inline">请选择所属行业</span>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab2">
												<h3 class="block">公司主联系人信息</h3>
												<div class="control-group">
													<label class="control-label">联系人<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="contact.CName"/>
														<span class="help-inline">请填写真实的联系人姓名</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人电话<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="contact.CTel"/>
														<span class="help-inline">请填写真实的联系人电话</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人手机<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="contact.CMob"/>
														<span class="help-inline">请填写真实的联系人手机</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人生日<span class="required">*</span></label>
													<div class="controls">
														<div class="input-append date date-picker" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
															<input name="contact.CBirthday" class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="" />
															<span class="add-on"><i class="icon-calendar"></i></span>
														</div>
														<span class="help-inline">请填写真实的联系人生日</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人性别<span class="required">*</span></label>
													<div class="controls">
														<label class="radio">
														<input type="radio" name="contact.CSex" checked="checked" value="先生" data-title="先生" />
														先生
														</label>
														<label class="radio">
														<input type="radio" name="contact.CSex" value="女士" data-title="女士"/>
														女士
														</label> 
														<div id="form_gender_error"></div>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人邮箱<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="contact.CEmail"/>
														<span class="help-inline">请填写你真实的邮箱</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人爱好<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="contact.CHobby" />
														<span class="help-inline">请填写爱好喜欢</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人QQ<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="contact.CQq" />
														<span class="help-inline ">请填写QQ</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人部门职务<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span3 m-wrap" name="contact.CDepartment"/> —
														<input type="text" class="span3 m-wrap" name="contact.CPosition"/>
														<span class="help-inline">请填写客户的部门职务信息</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人地址<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="contact.CAddress" />
														<span class="help-inline">请填写爱好喜欢</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人备注</label>
													<div class="controls">
														<textarea class="span6 m-wrap" rows="3" name="contact.CRemarks"></textarea>
														<span class="help-inline">请填写一些标识方便区分</span>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab3">
												<h3 class="block">其他信息</h3>
												<div class="control-group">
													<label class="control-label">公司客户类型-级别<span class="required">*</span></label>
													<div class="controls">
														<select name="customer.paramSysparamByCustomertypeId.id" class="span3 m-wrap" id="select2_sample_custype"  tabindex="1">
															<option value="-1">请选择</option>
														</select> —
														<select name="customer.paramSysparamByCustomerlevelId.id" class="span3 m-wrap" id="select2_sample_type"  tabindex="1">
															<option value="-1">请选择</option>
														</select>
														<span class="help-inline">请选择客户类型与级别</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司归属业务员<span class="required">*</span></label>
													<div class="controls">
														<select class="span3 m-wrap" name="customer.hrDepartment.id" id="select2_sample_deps"  tabindex="1">
															<option value="-1">请选择</option>
														</select> —
														<select class="span3"  name="customer.hrEmployeeByEmployeeId.id"  id="select2_sample_emps"  tabindex="1">
															<option value="-1">请选择</option>
														</select>
														<span class="help-inline">请选择归属业务员</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司来源<span class="required">*</span></label>
													<div class="controls">
														<select name="customer.paramSysparamByCustomersourceId.id" class="span6 m-wrap" id="select2_sample_source"  tabindex="1">
															<option value="-1">请选择</option>
														</select>
														<span class="help-inline">请填写真实的客户来源</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司序列号<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span6 m-wrap" name="customer.serialnumber"/>
														<span class="help-inline">请填写真实的公司地址</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司描述</label>
													<div class="controls">
														<textarea class="span6 m-wrap" rows="2" name="customer.descripe"></textarea>
														<span class="help-inline">请填写公司描述</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司备注<span class="required">*</span></label>
													<div class="controls">
														<textarea class="span6 m-wrap" rows="2" name="customer.remarks"></textarea>
														<span class="help-inline">请填写公司备注</span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司状态<span class="required">*</span></label>
													<div class="controls">
														<select name="customer.privatecustomer" class="span6 m-wrap" data-placeholder="选择一个客户状态" tabindex="1">
															<option value="-1">请选择</option>
															<option value="公客">公客</option>
															<option value="私客">私客</option>
														</select>
														<span class="help-inline">请填写真实的公司状态</span>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab4">
												<h3 class="block">确认你所填写客户的信息</h3>
												<h4 class="form-section">公司信息</h4>
												<div class="control-group">
													<label class="control-label">公司名称:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.customer"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司网址:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.site"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司电话:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.tel"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司地址:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.address"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司所属省市:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.paramCityByProvincesId.id"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司所属市:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.paramCityByCityId.id"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司所属行业:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.paramSysparamByCustomerindustryId.id"></span>
													</div>
												</div>
												<h4 class="form-section">联系人信息</h4>
												<div class="control-group">
													<label class="control-label">联系人:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CName"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人电话:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CTel"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人手机:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CMob"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人性别:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CSex"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人生日:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CBirthday"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人地址:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CAddress"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人邮箱:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CEmail"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人爱好:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CHobby"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人QQ:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CQq"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人部门:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CDepartment"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人职务:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CPosition"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">联系人备注:</label>
													<div class="controls">
														<span class="text display-value" data-display="contact.CRemarks"></span>
													</div>
												</div>
												<h4 class="form-section">其他</h4>
												<div class="control-group">
													<label class="control-label">客户类型:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.paramSysparamByCustomertypeId.id"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">客户级别:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.paramSysparamByCustomerlevelId.id"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">归属部门:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.hrDepartment.id"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">归属业务员:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.hrEmployeeByEmployeeId.id"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">客户来源:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.paramSysparamByCustomersourceId.id"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">客户描述:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.descripe"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">客户备注:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.remarks"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司序列号:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.serialnumber"></span>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">客户状态:</label>
													<div class="controls">
														<span class="text display-value" data-display="customer.privatecustomer"></span>
													</div>
												</div>
											</div>
										</div>
										<div class="form-actions clearfix">
											<a href="javascript:;" class="btn button-previous">
											<i class="m-icon-swapleft"></i>返回 </a>
											<a href="javascript:;" class="btn blue button-next">继续 <i class="m-icon-swapright m-icon-white"></i></a>
											<a href="javascript:;" class="btn blue button-next button-submit">提交<i class="m-icon-swapright m-icon-white"></i></a>
										</div>
									</div>
								</form>
							</div>
						</div>
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
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/additional-methods.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.bootstrap.wizard.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/select2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/search.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="<%=basePath%>media/js/app.js"></script>
 	<script src="<%=basePath%>media/js/form-samples.js"></script>
 	<script src="<%=basePath%>media/js/form-wizard.js?v=<%=Math.random()%>"></script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectparam.js"></script> 
	<script>
		jQuery(document).ready(function() {
			App.init();
			FormWizard.init();
			FormSamples.init();
			Search.init();
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
