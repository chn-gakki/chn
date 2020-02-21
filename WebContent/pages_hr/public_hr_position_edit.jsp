<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>public_hr_position_edit.jsp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<jsp:include page="/media/ui_css.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
<link rel="stylesheet" href="<%=basePath%>media/css/DT_bootstrap.css" />
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
							职务<small>修改职务</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="index.html">CRM职务管理</a>
								<i class="icon-angle-right"></i> <a href="index.html">职务管理</a> <i
								class="icon-angle-right"></i> <a href="index.html">职务列表</a> <i
								class="icon-angle-right"></i>修改职务</li>
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
									<i class="icon-reorder"></i>修改职务
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form action="hr_posi!update" method="post" class="form-horizontal">
									<h3 class="form-section">职务信息</h3>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">职务名称：</label>
												<div class="controls">
												<input name="position.id" type="hidden" value="<s:property value="#listdata.id" />"/>
													<input name="position.positionName" type="text"
														class="m-wrap span10" placeholder="必填" value="<s:property value="#listdata.positionName" />">
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">次序：</label>
												<div class="controls">
													<input name="position.positionOrder" type="text"
														class="m-wrap span10" placeholder="可填" value="<s:property value="#listdata.positionOrder" />">
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">职务级别：</label>
												<div class="controls">
													<select id="positionId" name="position.paramSysparam.id">
														<option value='<s:property value="#listdata.paramSysparam.id" />' >原值:<s:property value="#listdata.paramSysparam.paramsName" /></option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">创建时间：</label>
												<div class="controls">
													<div class="input-append date date-picker"
														data-date-format="yyyy-mm-dd" data-date-viewmode="years">
														<input name="position.createDate"  class="m-wrap m-ctrl-medium date-picker" size="16"
															type="text" placeholder="请选择"  value="<s:date name="#listdata.createDate" format="yyyy-MM-dd" />" /> 
														<span class="add-on"><i class="icon-calendar"></i> </span>
													</div>
												</div>
											</div>
										</div>
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
		</div>
		<!-- END 页面 -->
	</div>
	<!-- END 容器 -->
	<jsp:include page="/main_pages/foot.jsp"></jsp:include>
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript" src="<%=basePath%>media/js/DT_bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/select2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/search.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>main_pages/selectparam.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Search.init();
			var position = $("#positionId");
			ajaxLoadParam(position, 12);
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>