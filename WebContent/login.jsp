<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="cn">
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>CRM管理系统登录</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link href="<%=basePath%>media/css/login-soft.css" rel="stylesheet" type="text/css"/>
	<!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
	<!-- BEGIN LOGO -->
	<div class="logo"><img src="<%=basePath%>media/image/CRM.png"> </div>
	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->
	<div class="content">
		<!-- begin 登录提示框 -->
		<div style="display:none;"><a href="#myModal2" role="button" id="btnerr" class="btn btn-danger" data-toggle="modal"></a></div>
		<div id="myModal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
				<h3 id="myModalLabel2" style="color:black;">提示信息</h3>
			</div>
			<div class="modal-body" >
				<p id="errmsg" style="color:black;"></p>
			</div>
			<div class="modal-footer">
				<button data-dismiss="modal" class="btn green">取消</button>
			</div>
		</div>
		<!-- end 登录提示框 -->
		<!-- BEGIN LOGIN FORM -->
		<form class="form-vertical login-form" action="hr_emp!login" method="post" >
			<h3 class="form-title" style="text-align: center;">CRM管理系统登录</h3>
			<div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>请输入您的用户名和密码.</span>
			</div>
			<div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">用户名</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="用户名" name="name"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">密码</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" type="password" placeholder="密码" name="pwd"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">验证码</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-tag"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="验证码" name="inpcode" style="width:100px;"/>
						<iframe src="<%=basePath%>hr_emp!ajaxValidateCode" id="iframecode" style="height:34px; width:85px; margin: 0px;" frameborder="0" scrolling="no" ></iframe>
						<div style="float: right;" >
							<a href="#" id="showcode"  class="btn blue" style="width: 28px; height: 20px;"><i class="icon-refresh" style="margin:2px 8px;"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="form-actions">
				<button type="submit" class="btn blue pull-right">
				登录 <i class="m-icon-swapright m-icon-white"></i>
				</button>
			</div>
			<!-- 
				<div class="forget-password">
				<h4>忘记密码 ?</h4>
				<p>
					不用担心, 点击 <a href="javascript:;" class="" id="forget-password">这里</a>
					找回你的密码.
				</p>
			</div>
			<div class="create-account">
				<p>还没有账号 ?&nbsp; 
					<a href="javascript:;" id="register-btn" class="">注册账号</a>
				</p>
			</div>
			 -->
			
		</form>
		<!-- END LOGIN FORM -->        
		<!-- BEGIN FORGOT PASSWORD FORM -->
		<form class="form-vertical forget-form" action="index.html">
			<h3 class="">忘记密码 ?</h3>
			<p>输入您的电子邮件地址重置您的密码.</p>
			<div class="control-group">
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-envelope"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="邮箱" name="email" />
					</div>
				</div>
			</div>
			<div class="form-actions">
				<button type="button" id="back-btn" class="btn">
				<i class="m-icon-swapleft"></i> 返回
				</button>
				<button type="submit" class="btn blue pull-right">
				提交 <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form>
		<!-- END FORGOT PASSWORD FORM -->
		<!-- BEGIN REGISTRATION FORM -->
		<form class="form-vertical register-form" action="index.html">
			<h3 class="">注册</h3>
			<p>在下面输入您的帐户资料:</p>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">用户名</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="用户名" name="username"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">密码</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" type="password" id="register_password" placeholder="密码" name="password"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">请重新输入您的密码</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-ok"></i>
						<input class="m-wrap placeholder-no-fix" type="password" placeholder="重复密码" name="rpassword"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">邮箱</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-envelope"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="邮箱" name="email"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<label class="checkbox">
					<input type="checkbox" name="tnc"/> 我同意 <a href="#">服务条件</a> 和 <a href="#">隐私政策</a>
					</label>  
					<div id="register_tnc_error"></div>
				</div>
			</div>
			<div class="form-actions">
				<button id="register-back-btn" type="button" class="btn">
				<i class="m-icon-swapleft"></i>  返回
				</button>
				<button type="submit" id="register-submit-btn" class="btn blue pull-right">
				注册 <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form>
		<!-- END REGISTRATION FORM -->
	</div>
	<!-- END LOGIN -->
	<!-- BEGIN COPYRIGHT -->
	<div class="copyright">2019 &copy; CRM客户关系管理系统</div>
	<!-- END COPYRIGHT -->
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="<%=basePath%>media/js/jquery.validate.min.js" type="text/javascript"></script>
	<script src="<%=basePath%>media/js/jquery.backstretch.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="<%=basePath%>media/js/app.js" type="text/javascript"></script>
	<script src="<%=basePath%>media/js/login-soft.js" type="text/javascript"></script>       
	<!-- END PAGE LEVEL SCRIPTS --> 
	<script>
		jQuery(document).ready(function() {     
		  App.init();
		  Login.init();
		});
		$(function(){
			$("#showcode").click(function(){
				var url="<%=basePath%>hr_emp!ajaxValidateCode?v="+new Date().valueOf();
				window.parent.frames[0].location.href=url;
			});
			
			var err='${err}';
			if(err!=''){
				$("#errmsg").text(err);
				$("#btnerr").click();
			}
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>