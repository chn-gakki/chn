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
							CRM新闻发布 <small>新闻发布管理页</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">CRM新闻发布</a>
								<i class="icon-angle-right"></i> <a href="#">新闻管理</a> <i
								class="icon-angle-right"></i> <a href="#">新闻列表</a>
							</li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				
				<!-- BEGIN EXAMPLE TABLE PORTLET-->
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-globe"></i>新闻列表
						</div>
						<div class="actions">
							<a class="btn red" href="public_new_add.jsp"> 添加 <i class="icon-plus"></i> </a>
							<div class="btn-group">
								<a class="btn green" href="#" data-toggle="dropdown"> 改变显示列
									<i class="icon-angle-down"></i> </a>
								<div id="sample_2_column_toggler"
									class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
									<label><input type="checkbox" checked data-column="0">序号</label>
									<label><input type="checkbox" checked data-column="1">新闻标题</label>
									<label><input type="checkbox" checked data-column="2">新闻内容</label>
									<label><input type="checkbox" checked data-column="3">发布部门人</label>
									<label><input type="checkbox" checked data-column="4">新闻时间</label>
									<label><input type="checkbox" checked data-column="5">查看次数</label>
								</div>
							</div>
						</div>
					</div>
					<div class="portlet-body">
						<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
							<thead>
								<tr>
									<th>序号</th>
									<th>新闻标题</th>
									<th>新闻内容</th>
									<th>发布部门人</th>
									<th>新闻时间</th>
									<th>查看次数</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="listx" var="m" status="i">
									<tr>
										<th><s:property value="#m.id" />
										</th>
										<th>
										<s:if test="#m.newsTitle.length()>8">
											<a class="popovers" data-trigger="hover" data-placement="top"
											 data-content="<s:property value='#m.newsTitle'/>" 
											 data-original-title="新闻内容"><s:property value='#m.newsTitle.substring(0,5)'/>...</a>
										 </s:if>   
										 <s:else>      
										     <s:property value='#m.newsTitle'/>
										</s:else>
										</th>
										<th>
										<s:if test="#m.newsContent.length()>10">
											<a class="popovers" data-trigger="hover" data-placement="top"
											 data-content="<s:property value='#m.newsContent'/>" 
											 data-original-title="新闻内容"><s:property value='#m.newsContent.substring(0,15)'/>...</a>
										 </s:if>   
										 <s:else>      
										     <s:property value='#m.newsContent'/>
										</s:else> 
										</th>
										<th><s:property value="#m.hrDepartment.DName" />[<s:property value="#m.hrEmployee.name" />]
										</th>
										<th><s:date name="#m.newsTime" format="yyyy-MM-dd HH:mm:ss"/>
										</th>
										<th><s:property value="#m.viewNum" />
										</th>
										<td>
											<!-- begin操作按钮 -->
											<div class="btn-group" style="margin-bottom: 0px !important;">
												<a class="btn mini green" href="#" data-toggle="dropdown">
													<i class="icon-user"></i>操作<i class="icon-angle-down"></i>
												</a>
												<ul class="dropdown-menu">
													<li><a href="pub_news!findOne?news.id=<s:property value="#m.id"/>">
													<i class="icon-edit"></i>编辑</a></li>
													<li><a href="pub_news!del?news.id=<s:property value="#m.id"/>">
													<i class="icon-trash"></i>删除</a></li>
												</ul>
											</div> 
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
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/table-advanced.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			TableAdvanced.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>