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
<title>crm_product_add.jsp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<jsp:include page="/media/ui_css.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/datepicker.css" />
<link href="<%=basePath%>media/css/jquery.fancybox.css" rel="stylesheet" />
<link href="<%=basePath%>media/css/search.css" rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<script type="text/javascript" src="/main_pages/selectdepsemps.js"></script></head>
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
			       <jsp:include page="/main_pages/styleset.jsp"></jsp:include> 
			       <!-- BEGIN 网页的标题和面包屑--> 
			       <h3 class="page-title"> CRM新闻发布 <small>发布新闻页</small> </h3> 
			       <ul class="breadcrumb"> 
			        <li><i class="icon-home"></i> <a href="#">CRM新闻发布</a> 
			        <i class="icon-angle-right"></i> <a href="#">信息中心</a> 
			        <i class="icon-angle-right"></i> <a href="#">新闻发布</a></li> 
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
									<i class="icon-reorder"></i>新闻添加
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a> 
									<a href="javascript:;" class="reload"></a>
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form action="pub_news!addNews" method="post" class="form-horizontal">
									<h3 class="form-section">基本信息</h3>
									<div class="row-fluid">
										<div class="span12 ">
											<div class="control-group">
												<label class="control-label">新闻标题</label>
												<div class="controls">
													<input type="text" placeholder="必填" name="news.newsTitle" class="span12 m-wrap" >
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!-- /row -->
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">发布部门</label>
												<div class="controls">
														<select id="select2_sample_deps" name="news.hrDepartment.id"  class="span6 select2 m-wrap">
															<option value="-1">请选择</option>
														</select>
														<select id="select2_sample_emps" name="news.hrEmployee.id"  class="span6 select2 m-wrap">
															<option value="-1">请选择</option>
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
												<label class="control-label">新闻内容</label>
												<div class="controls">
													<textarea name="news.newsContent"  class="m-wrap span12" rows="3" placeholder="必填"></textarea>
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
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/search.js"></script>
    <!-- END PAGE LEVEL PLUGINS --> 
    <script src="<%=basePath%>media/js/app.js"></script>
    <script type="text/javascript" src="<%=basePath%>main_pages/selectdepsemps.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Search.init();
			FormComponets.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
