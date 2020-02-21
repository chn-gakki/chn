<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>emp.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link href="<%=basePath%>media/css/bootstrap-fileupload.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>media/css/chosen.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>media/css/profile.css" rel="stylesheet" type="text/css" />
	<!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
<jsp:include page="/main_pages/top.jsp"></jsp:include>
	<!-- BEGIN CONTAINER -->   
	<div class="page-container row-fluid">
		<jsp:include page="/main_pages/left.jsp"></jsp:include>
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<jsp:include page="/main_pages/styleset.jsp"></jsp:include>
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->
						<h3 class="page-title">
							个人信息 <small>我的主页</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">我的主页</a> 
								<i class="icon-angle-right"></i>
							</li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid profile">
					<div class="span12">
						<!--BEGIN TABS-->
						<div class="tabbable tabbable-custom tabbable-full-width">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab_1_2" data-toggle="tab">个人信息</a></li>
								<li><a href="#tab_1_3" data-toggle="tab">修改信息</a></li>
							</ul>.
							<div class="tab-content">
								<!--end tab-pane-->
								<div class="tab-pane profile-classic row-fluid active"  id="tab_1_2">
									<div class="span2">
									<img src="<%=basePath%><s:property value="#session.emp.portal"/>?v=<%=Math.random()%>" style="max-width: 150px; max-height: 150px;"
									 onerror="this.src='<%=basePath%>media/image/default-head.png'" alt="" /></div>
									<ul class="unstyled span10">
										<li><span>用户名:</span><s:property value="#session.emp.uid"/></li>
										<li><span>性别:</span><s:property value="#session.emp.sex"/></li>
										<li><span>电话:</span><s:property value="#session.emp.telephone"/></li>
										<li><span>身份证:</span><s:property value="#session.emp.idcard"/></li>
										<li><span>生日:</span><s:date name="#session.emp.birthday" format="yyyy-MM-dd"/></li>
										<li><span>地址:</span><s:property value="#session.emp.address"/></li>
										<li><span>Email:</span> <a href="#"><s:property value="#session.emp.email"/></a></li>
										<li><span>入职日期:</span><s:date name="#session.emp.entrydate" format="yyyy-MM-dd"/></li>
										<li><span>毕业学校:</span><s:property value="#session.emp.schools"/></li>
										<li><span>专业:</span><s:property value="#session.emp.professional"/></li>
										<li><span>学历:</span> <s:property value="#session.emp.education"/></li>
									</ul>
								</div>
								<!--tab_1_2-->
								<div class="tab-pane row-fluid profile-account" id="tab_1_3">
									<div class="row-fluid">
										<div class="span12">
											<div class="span3">
												<ul class="ver-inline-menu tabbable margin-bottom-10">
													<li class="active">
														<a data-toggle="tab" href="#tab_1-1">
														<i class="icon-cog"></i> 
														基本信息
														</a> 
														<span class="after"></span>                                    
													</li>
													<li class=""><a data-toggle="tab" href="#tab_2-2"><i class="icon-picture"></i> 更换头像</a></li>
													<li class=""><a data-toggle="tab" href="#tab_3-3"><i class="icon-lock"></i>修改密码</a></li>
												</ul>
											</div>
											<div class="span9">
												<div class="tab-content">
													<div id="tab_1-1" class="tab-pane active">
														<div style="height: auto;" id="accordion1-1" class="accordion collapse">
															<form action="hr_emp!empUpdate"  method="post" >
																<label class="control-label">用户名:</label>
																<input type="text" name="employee.uid" disabled="disabled" value="<s:property value="#session.emp.uid"/>" class="m-wrap span8" />
																<label class="control-label">性别:</label>
																<input name="employee.sex" type="radio" value="先生" class="m-wrap span12" ${session.emp.sex == '先生'?'checked':''}>先生
																<input name="employee.sex" type="radio" value="女士" class="m-wrap span12" ${session.emp.sex == '女士'?'checked':''}>女士
																<label class="control-label">电话</label>
																<input type="text" name="employee.telephone"  value="<s:property value="#session.emp.telephone"/>" class="m-wrap span8" />
																<label class="control-label">地址:</label>
																<input type="text" name="employee.address"  value="<s:property value="#session.emp.address"/>" class="m-wrap span8" />
																<label class="control-label">Email:</label>
																<input type="text" name="employee.email"  value="<s:property value="#session.emp.email"/>" class="m-wrap span8" />
																<div class="submit-btn">
																	<button type="submit" class="btn green">提交</button>
																	<a href="#" class="btn">取消</a>
																</div>
															</form>
														</div>
													</div>
													<div id="tab_2-2" class="tab-pane">
														<div style="height: auto;" id="accordion2-2" class="accordion collapse"  >
															<form action="hr_emp!uploadHead" enctype="multipart/form-data" method="post">
																<div class="fileupload fileupload-new" data-provides="fileupload">
																	<div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
																		<img src="<%=basePath%><s:property value="#session.emp.portal"/>?v=<%=Math.random()%>" style="max-width: 200px; max-height: 150px;" 
																		onerror="this.src='<%=basePath%>media/image/default-head.png'" alt="" />
																	</div>
																	<div class="space10"></div>
																	<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
																	<div>
																		<span class="btn btn-file"><span class="fileupload-new">选择头像</span>
																		<span class="fileupload-exists">改变</span>
																		<input type="file"  name="headfile" /></span>
																		<a href="#" class="btn fileupload-exists" data-dismiss="fileupload">移除</a>
																	</div>
																</div>
																<div class="clearfix"></div>
																<div class="space10"></div>
																<div class="submit-btn">
																	<button type="submit" class="btn green">提交上传</button>
																</div>
															</form>
														</div>
													</div>
													<div id="tab_3-3" class="tab-pane">
														<div style="height: auto;" id="accordion3-3" class="accordion collapse">
															<form action="hr_emp!empUpdatePwd" method="post">
																<label class="control-label">原始密码</label>
																<input type="password" name="oldpwd" class="m-wrap span8 oldpwd" />
																<label class="control-label">新密码</label>
																<input type="password"  name="pwd"  class="m-wrap span8 pwd" />
																<label class="control-label">重复新密码</label>
																<input type="password"  name="newpwd"  class="m-wrap span8 repwd" />
																<div class="submit-btn">
																	<button type="submit" disabled="disabled" id="button-update" class="btn blue">修改</button>
																</div>
															</form>
														</div>
													</div>
												</div>
											</div>
											<!--end span9-->                                   
										</div>
									</div>
								</div>
								<!--end tab-pane-->
							</div>
						</div>
						<!--END TABS-->
					</div>
				</div>
				<!-- END PAGE CONTENT-->
			</div>
			<!-- END PAGE CONTAINER--> 
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<jsp:include page="/main_pages/foot.jsp"></jsp:include>
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<!-- END FOOTER -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/DT_bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/select2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/bootstrap-fileupload.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="<%=basePath%>media/js/app.js"></script>      
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {       
		   // initiate layout and plugins
		   	App.init();
		   	$('.oldpwd').blur(function(){
		   		var oldpwd=$(this).val();
		   		var data={"pwd":oldpwd};
		   		var url="hr_emp!ajaxValidatePwd?v="+new Date().valueOf();
		   		$.post(url,data,function(d){
		   			if(d*1==1){
		   				$('#button-update').removeAttr("disabled");
		   				alert('原密码正确');
		   			}else{
		   				$('#button-update').attr("disabled","disabled");
		   				alert('原密码错误');
		   			}
		   		});
		   	});
		   	$('#button-update').click(function(){
			   	var oldpwd = $('.oldpwd').val().trim();
			   	var pwd=$('.pwd').val().trim();
			   	var repwd=$('.repwd').val().trim();
		   		if (oldpwd.length<6||oldpwd.lenth>18) {
		   			alert(oldpwd.length);
					alert('原密码必须大于5位到18位之间');
					return false;
				}
				if (pwd.length<6||pwd.lenth>18) {
					alert('新密码必须大于5位到18位之间');
					return false;
				}
				if (repwd.length<6||repwd.lenth>18) {
					alert('重新输入新密码必须大于5位到18位之间');
					return false;
				}
				if (pwd!=repwd) {
					alert('两次输入密码不相等');
					return false;
				}
		   		return true;
		   	});
		});
	</script>
</body>
<!-- END BODY -->
</html>