<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="cn">
<!-- BEGIN HEAD -->
<head>
  <meta charset="utf-8" />
  <title>mail_flow.jsp</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta content="" name="description" />
  <meta content="" name="author" />
  <jsp:include page="/media/ui_css.jsp"></jsp:include>
  <!-- BEGIN PAGE LEVEL STYLES --> 
  <link href="<%=basePath%>media/css/bootstrap-tag.css" rel="stylesheet" type="text/css" /> 
  <link href="<%=basePath%>media/css/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css" /> 
  <link href="<%=basePath%>media/css/jquery.fancybox.css" rel="stylesheet" /> 
  <link href="<%=basePath%>media/css/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css" /> 
  <!-- BEGIN:File Upload Plugin CSS files--> 
  <!-- END:File Upload Plugin CSS files--> 
  <link href="<%=basePath%>media/css/inbox.css" rel="stylesheet" type="text/css" /> 
  <!-- END PAGE LEVEL STYLES --> 
  <link href="<%=basePath%>media/css/select2_metro.css"  rel="stylesheet" type="text/css"/> 
  <link href="<%=basePath%>media/swfupload/css/default.css" rel="stylesheet" type="text/css" />
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
			<div class="container-fluid"> 
		     <!-- BEGIN PAGE HEADER--> 
		     <div class="row-fluid"> 
		      <div class="span12"> 
		       <!-- BEGIN STYLE CUSTOMIZER --> 
		       <jsp:include page="/main_pages/styleset.jsp"></jsp:include>
		       <!-- END BEGIN STYLE CUSTOMIZER --> 
		       <!-- BEGIN PAGE TITLE & BREADCRUMB--> 
		       <h3 class="page-title"> 站内信息 <small>我的信息</small> </h3>
		       <ul class="breadcrumb"> 
		        <li> <i class="icon-home"></i> <a href="#">信息中心</a> <i class="icon-angle-right"></i> </li> 
		        <li> <a href="#">我的信息</a> </li>
		       </ul> 
		       <!-- END PAGE TITLE & BREADCRUMB--> 
		      </div> 
		     </div>
		     <div class="row-fluid inbox"> 
		      <div class="span2"> 
		       <ul class="inbox-nav margin-bottom-10">
		        <li class="compose-btn"> <a href="javascript:;" data-title="Compose" class="btn green"> <i class="icon-edit"></i> 写信息</a> </li>
		        <li class="draft"><a class="btn" href="javascript:;" data-title="收件箱">收件箱</a><b></b></li> 
		        <li class="inbox"> <a href="javascript:;" class="btn" data-title="新消息">新消息</a> <b></b> </li> 
		        <li class="sent"><a class="btn" href="javascript:;" data-title="已发送">已发送</a><b></b></li>
		        <li class="star"><a class="btn" href="javascript:;" data-title="星标消息">星标消息</a><b></b></li>
		        <li class="trash"><a class="btn" href="javascript:;" data-title="已删除">已删除</a><b></b></li>
		        <li class="search" style="display:none;"><a class="btn" href="javascript:;" data-title="邮件搜索"></a><b></b></li>
		       </ul> 
		      </div> 
		      <div class="span10"> 
		       <div class="inbox-header"> 
		        <h1 class="pull-left">信息</h1> 
		        <form action="#" class="form-search pull-right"> 
		         <div class="input-append"> 
		          <input class="m-wrap" id="searchmail" type="text" placeholder="智能匹配" /> 
		          <button class="btn green" id="btn-searchmail" type="button">搜索</button> 
		         </div> 
		        </form> 
		       </div> 
		       <div class="inbox-loading">
		  			
		       </div> 
		       <div class="inbox-content"> 
		       </div> 
		      </div> 
		     </div> 
		    </div> 
		</div>
		<!-- END 页面 -->
	</div>
	<!-- END 容器 -->
	<jsp:include page="/main_pages/foot.jsp"></jsp:include>

	<jsp:include page="/media/ui_js.jsp"></jsp:include>
  <!-- BEGIN PAGE LEVEL PLUGINS --> 
  <script src="<%=basePath%>media/js/bootstrap-tag.js" type="text/javascript"></script> 
  <script src="<%=basePath%>media/js/jquery.fancybox.pack.js" type="text/javascript"></script> 
  <script src="<%=basePath%>media/js/wysihtml5-0.3.0.js" type="text/javascript"></script> 
  <script src="<%=basePath%>media/js/bootstrap-wysihtml5.js" type="text/javascript"></script> 
  <!-- BEGIN:File Upload Plugin JS files-->  
  <!-- END PAGE LEVEL PLUGINS --> 
  <script src="<%=basePath%>media/js/app.js"></script> 
  <script src="<%=basePath%>media/js/inbox.js?v=<%=Math.random()%>"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Inbox.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>