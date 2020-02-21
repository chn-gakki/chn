<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"  %>
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
	<title>crm_contact_add.jsp</title>
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
							CRM联系人添加 <small>我的联系人添加页</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i> <a href="#">CRM客户管理</a> 
								<i class="icon-angle-right"></i> <a href="#">客户管理</a> 
								<i class="icon-angle-right"></i> <a href="#">联系人管理</a> 
								<i class="icon-angle-right"></i> <a href="#">联系人添加页</a>
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
								<div class="caption"><i class="icon-reorder"></i>联系人添加</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									<a href="javascript:;" class="reload"></a>
									<a href="javascript:;" class="remove"></a>
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
							<form action="crm_cont!add" method="post" class="form-horizontal">
								<h3 class="form-section">基本信息</h3>
								<input name="contact.id" style="display: none" type="text">
								<div class="row-fluid">
									<div class="span6 ">
										<div class="control-group">
											<label class="control-label">公司名称</label>
											<div class="controls">
											<select class="span12 " name="contact.crmCustomer.id" id="select2_sample_customer"  tabindex="1">
												<option value="-1">请选择</option>
											</select>
											</div>
										</div>
									</div>
									<!--/span-->
									<div class="span6 ">
										<div class="control-group">
											<label class="control-label">联系人</label>
											<div class="controls">
												<input name="contact.cName" type="text" class="m-wrap span8" placeholder="必填">
											</div>
										</div>
									</div>
									<!--/span-->
								</div>
								<!-- /row -->
								<div class="row-fluid">
									<div class="span6 ">
										<div class="control-group">
											<label class="control-label">所属部门职务</label>
											<div class="controls">
												<input name="contact.cDepartment" type="text" class="m-wrap span6" placeholder="必填">
												<input name="contact.cPosition" type="text" class="m-wrap span6" placeholder="必填">
											</div>
										</div>
									</div>
									<!--/span-->
									<div class="span4 ">
										<div class="control-group">
											<label class="control-label">生日</label>
											<div class="controls">
												<div class="input-append date date-picker" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
													<input name="contact.cBirthday"  class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="请选择" />
													<span class="add-on"><i class="icon-calendar"></i></span>
												</div>
											</div>
										</div>
									</div>
									<!--/span-->
								</div>
								<!--/row-->
								<div class="row-fluid">
									<div class="span4 ">
									<div class="control-group">
											<label class="control-label">性别</label>
											<div class="controls">  
												<label class="radio">
												<input type="radio" name="contact.cSex" value="先生" checked="checked" />
												先生
												</label>
												<label class="radio">
												<input type="radio" name="contact.cSex" value="女士" />
												女士
												</label>  
											</div>
										</div>
									<!--/span-->
									</div>
								</div>
								<h3 class="form-section">联系方式</h3>
								<div class="row-fluid">
									<div class="span6 ">
										<div class="control-group">
											<label class="control-label">电话</label>
											<div class="controls">
												<input name="contact.cTel" type="text" class="m-wrap span12" placeholder="可填">
											</div>
										</div>
									</div>
									<!--/span-->
									<div class="span6 ">
										<div class="control-group">
											<label class="control-label">手机</label>
											<div class="controls">
												<input name="contact.cMob" type="text" class="m-wrap span12" placeholder="必填">
											</div>
										</div>
									</div>
									<!--/span-->
								</div>
								<!--/row-->
								<div class="row-fluid">
									<div class="span6 ">
										<div class="control-group">
											<label class="control-label">Email</label>
											<div class="controls">
												<input  name="contact.cEmail" type="text" class="m-wrap span12" placeholder="必填">
											</div>
										</div>
									</div>
									<div class="span6 ">
										<div class="control-group">
											<label class="control-label">QQ</label>
											<div class="controls">
												<input  name="contact.cQq" type="text" class="m-wrap span12" placeholder="可填">
											</div>
										</div>
									</div>
								</div>
								<!--/row-->
								<div class="row-fluid">
									<div class="span6 ">
										<div class="control-group">
											<label class="control-label">爱好</label>
											<div class="controls">
												<input name="contact.cHobby" type="text" class="m-wrap span12" placeholder="可填">
											</div>
										</div>
									</div>
									<div class="span6 ">
										<div class="control-group">
											<label class="control-label">地址</label>
											<div class="controls">
												<input name="contact.cAddress" type="text" class="m-wrap span12" placeholder="必填">
											</div>
										</div>
									</div>
								</div>
								<!-- /row -->
								<div class="row-fluid">
									<div class="span12 ">
										<div class="control-group">
											<label class="control-label">备注</label>
											<div class="controls">
												<input name="contact.cRemarks" type="text" class="m-wrap span12" placeholder="可填">
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
	<script>
		jQuery(document).ready(function() {
			App.init();
			Search.init();
			FormSamples.init();
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectcustomer.js"></script>
	<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>
