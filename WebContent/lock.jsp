<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>lock.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<meta http-equiv="Expires" CONTENT="0">        
    <meta http-equiv="Cache-Control" CONTENT="no-cache">        
    <meta http-equiv="Pragma" CONTENT="no-cache">
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link href="<%=basePath%>media/css/lock.css" rel="stylesheet" type="text/css"/>
	<!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
	<div class="page-lock">
		<div class="page-logo">
			<a class="brand" href="index.html">
			<img src="media/image/logo-big.png" alt="logo" />
			</a>
		</div>
		<div class="page-body">
			<img class="page-lock-img" src="media/image/profile.png" alt="">
			<div class="page-lock-info">
				<h1><s:property value="#session.emp.name"/></h1>
				<span><s:property value="#session.emp.email"/></span>
				<span><em>锁屏中(或者是屏幕保护)</em></span>
				<form class="form-search" >
					<div class="input-append">
						<input type="text" id="pwd" class="m-wrap" placeholder="密码">
						<button id="btn-submit" class="btn blue icn-only"><i class="m-icon-swapright m-icon-white"></i></button>
					</div>
					<div class="relogin">
						<a href="login.jsp">点击这里重新登陆！</a>
					</div>
				</form>
			</div>
		</div>
		<div class="page-footer">
			2019 &copy;  CRM客户关系管理系统
		</div>
	</div>
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="<%=basePath%>media/js/jquery.backstretch.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->   
	<script src="<%=basePath%>media/js/app.js"></script>  
	<script src="<%=basePath%>media/js/lock.js"></script>      
	<script>
		jQuery(document).ready(function() {    
		   App.init();
		   Lock.init();
		   $('#btn-submit').click(function(){
		   		var url="pages_hr/hr_emp!ajaxValidatePwd?v="+new Date().valueOf();
		   		var data={"pwd":$('#pwd').val().trim()};
		   		$.post(url,data,function(d){
		   			if(d*1==1){
		   				window.location.href = 'index.jsp';
		   			}else{
		   				alert('密码错误');
		   			}
		   		});
		   });
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!--END BODY -->
</html>