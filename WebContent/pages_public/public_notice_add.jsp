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
<title>crm_productcate_list.jsp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<jsp:include page="/media/ui_css.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" href="<%=basePath%>media/css/select2_metro.css" />
<link rel="stylesheet" href="<%=basePath%>media/css/DT_bootstrap.css" />
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
							公告<small>添加公告</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="">CRM公告管理</a>

								<i class="icon-angle-right"></i> <a href="">公告管理</a> <i
								class="icon-angle-right"></i> <a href="">公告列表</a> <i
								class="icon-angle-right"></i> <a href="">添加公告</a>
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
									<i class="icon-reorder"></i>添加公告
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form action="pub_notice!addNotice" method="post"
									class="form-horizontal">
									<h3 class="form-section">公告信息</h3>
									<div class="row-fluid">
										<div class="span12 ">
											<div class="control-group">
												<label class="control-label">公告标题：</label>
												<div class="controls">
													<input name="publicNotice.noticeTitle" type="text" class="m-wrap span10" placeholder="必填">
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<div class="row-fluid">
									<div class="span12 ">
											<div class="control-group">
												<label class="control-label">公告内容：</label>
												<div class="controls">
													<textarea name="publicNotice.noticeContent" rows="5"  class="m-wrap span10" placeholder="必填"></textarea>
												</div>
											</div>
										</div>
									</div>
									<div class="row-fluid">
										<div class="span12 ">
											<div class="control-group">
												<label class="control-label">创建部门：</label>
												<div class="controls">
													<select id="select2_sample_deps" name="publicNotice.hrDepartment.id">
														<option value="-1">请选择</option>
													</select>
													<select id="select2_sample_emps" name="publicNotice.hrEmployee.id">
														<option value="-1">请选择</option>
													</select>
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
		</div>
		<!-- END 页面 -->
	</div>
	<!-- END 容器 -->
	<jsp:include page="/main_pages/foot.jsp"></jsp:include>
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/DT_bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/select2.min.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="<%=basePath%>media/js/app.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>main_pages/selectdepsemps.js"></script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>