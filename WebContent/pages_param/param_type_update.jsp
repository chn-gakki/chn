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
<title>param_type_update.jsp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<jsp:include page="/media/ui_css.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/DT_bootstrap.css" />
<!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<jsp:include page="/main_pages/top.jsp"></jsp:include>
	<!-- BEGIN 容器 -->
	<div class="page-container">
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
							系统参数 <small>参数修改页</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">系统参数管理</a>
								<i class="icon-angle-right"></i> <a href="#">系统参数修改</a>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-reorder"></i>系统参数添加
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a> 
									<a href="javascript:;" class="reload"></a>
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form action="param_sys!update" method="post" class="form-horizontal">
								<input name="sysparam.id" type="hidden" value="<s:property value="#sysparam.id"/>"/>
									<h3 class="form-section">基本信息</h3>
									<div class="row-fluid">
										<div class="span12 ">
											<div class="control-group">
												<label class="control-label">参数标题</label>
												<div class="controls">
													<input type="text" placeholder="必填" name="sysparam.paramsName" value='<s:property value="#sysparam.paramsName"/>' class="span12 m-wrap" >
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!-- /row -->
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">参数所属类别</label>
												<div class="controls">
													<select id="select2_sample_paramtype" name="sysparam.paramSysparamType.id" class="span12 select2 m-wrap">
														<option value='<s:property value="#sysparam.paramSysparamType.id"/>'>原值:<s:property value="#sysparam.paramSysparamType.paramsName"/></option>
													</select>
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">次序</label>
												<div class="controls">
													<input type="text" value="<s:property value="#sysparam.paramsOrder"/>" placeholder="必填" name="sysparam.paramsOrder" class="span12 m-wrap" >
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
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
				<!-- END PAGE CONTENT-->
			</div>
			<!-- END PAGE CONTENT-->
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
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->	
	<script src="<%=basePath%>media/js/bootstrap-tree.js"></script>
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/table-advanced.js"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			App.init();
			TableAdvanced.init();
			var url="param_systype!ajaxGetAllParamType?v="+new Date().valueOf();
			$.getJSON(url,function(d){
				var chtml="";
				for ( var int = 0; int < d.length; int++) {
					chtml+="<option value='"+d[int].id+"'>"+d[int].paramsName+"</option>";
					$("#select2_sample_paramtype").append(chtml);
				}
			});
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>