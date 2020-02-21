<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="cn">
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>public_new.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<link href="<%=basePath%>media/css/news.css" rel="stylesheet" type="text/css" /> 
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
			       <jsp:include page="/main_pages/styleset.jsp"></jsp:include> 
			       <!-- BEGIN 网页的标题和面包屑--> 
			       <h3 class="page-title"> CRM新闻查看 <small>发布查看页</small> </h3> 
			       <ul class="breadcrumb"> 
			        <li><i class="icon-home"></i> <a href="pub_news">查看新闻列表</a> <i class="icon-plus"></i><a href="public_new_add.jsp">发布新闻</a>
			       </ul> 
			       <!-- END 网页的标题和面包屑--> 
			      </div> 
			     </div> 
				<!-- END 页面标题-->
				<!-- page begin -->
				<div class="row-fluid"> 
			      <div class="span12 news-page">
			       <div class="row-fluid"> 
			        <div class="span6"> 
			        
			         <div class="top-news"> 
			          <a href="#" class="btn blue"> <span>今日 新闻</span> 
			          <em> <i class="icon-tags"></i> 
			          	today日期：<script type="text/javascript">document.write(new Date().toLocaleDateString());</script> </em> 
			          <i class="icon- icon-bullhorn top-news-icon"></i> </a> 
			         </div> 
			         <s:iterator value="#todayNews" var="n">
			         <div class="news-blocks"> 
			          <h3><a href="#"><s:property value="#n.newsTitle" /></a></h3> 
			          <div class="news-block-tags"> 
			           <strong><s:property value="#n.hrDepartment.DName"/>, <s:property value="#n.hrEmployee.name"/></strong> 
			           <em><s:date name="#n.newsTime" format="yyyy-MM-dd" /></em> 
			          </div> 
			          <p>
			          <s:property value="#n.newsContent"/>
			          </p> 
			         </div> 
			         </s:iterator>
			         
			        </div> 
			        <!--end span5--> 
			        <div class="span6"> 
			        
			         <div class="top-news"> 
			          <a href="#" class="btn green"> <span>昨日新闻</span> <em> <i class="icon-tags"></i>
			           	today日期：<script type="text/javascript">document.write(new Date().toLocaleDateString());</script> </em> <i class="icon-globe top-news-icon"></i> </a> 
			         </div> 
			         
			         <s:iterator value="#yesterdayNews" var="n">
			         <div class="news-blocks"> 
			          <h3><a href="#"><s:property value="#n.newsTitle" /></a></h3> 
			          <div class="news-block-tags"> 
			           <strong><s:property value="#n.hrDepartment.DName"/>, <s:property value="#n.hrEmployee.name"/></strong> 
			           <em><s:date name="#n.newsTime" format="yyyy-MM-dd" /></em> 
			          </div> 
			          <p>
			          <s:property value="#n.newsContent"/>
			          </p> 
			         </div> 
			         </s:iterator>

			        </div> 
			        <!--end span6--> 
			       </div> 
			      </div> 
			     </div> 
			     <!-- END PAGE CONTENT--> 
				<!-- page end -->
			</div>
			<!-- END 页面容器 -->
		</div>
		<!-- END 页面 -->
	</div>
	<!-- END 容器 -->
	<jsp:include page="/main_pages/foot.jsp"></jsp:include>
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<script src="<%=basePath%>media/js/app.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>