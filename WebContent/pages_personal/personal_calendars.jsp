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
	<title>personal_calendar.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<link href="<%=basePath%>media/css/fullcalendar.css" rel="stylesheet" />
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
			
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN STYLE CUSTOMIZER -->
						<jsp:include page="/main_pages/styleset.jsp"></jsp:include>
						<!-- END STYLE CUSTOMIZER -->       
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->
						<h3 class="page-title">
							个人工作 <small>我的日程管理</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">个人工作</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li>
								<a href="#">我的日程</a>
							</li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				
				<div class="row-fluid">
					<div class="portlet box blue calendar">
						<div class="portlet-title">
							<div class="caption"><i class="icon-reorder"></i>我的日程管理</div>
						</div>
						<div class="portlet-body light-grey">
							<div class="row-fluid">
								<div class="span3 responsive" data-tablet="span12 fix-margin" data-desktop="span8">
									<!-- BEGIN DRAGGABLE EVENTS PORTLET-->    
									<h3 class="event-form-title">常用事件添加</h3>
									<div id="external-events">
										<form class="inline-form">
											<input type="text" value="" class="m-wrap span12" placeholder="常用事件..." id="event_title" /><br />
											<a href="javascript:;" id="event_add" class="btn green">添加事件</a>
										</form>
										<hr />
										<div id="event_box">
										</div>
										<label for="drop-remove">
										<input type="checkbox" id="drop-remove" />remove after drop
										</label>
										<hr class="visible-phone" />
									</div>
									<!-- END DRAGGABLE EVENTS PORTLET-->            
								</div>
								<div class="span9">
									<div id="calendar" class="has-toolbar"></div>
								</div>
							</div>
							<!-- END CALENDAR PORTLET-->
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
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/fullcalendar.min.js"></script>
	<script src="<%=basePath%>media/js/calendar.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Calendar.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>