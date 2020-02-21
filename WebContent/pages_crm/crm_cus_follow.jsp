<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>crm_cus_follow.jsp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<jsp:include page="/media/ui_css.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/DT_bootstrap.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/datepicker.css" />
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
			<!-- --------------------------------------------- -->
			<!-- BEGIN 页面容器-->
			<div class="container-fluid">
				<!-- BEGIN 页面标题-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN 风格定制 -->
						<jsp:include page="/main_pages/styleset.jsp"></jsp:include>
						<!-- END 风格定制 -->
						<!-- BEGIN 网页的标题和面包屑-->
						<h3 class="page-title">CRM客户跟进详情 <small>我的客户跟进详情页</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">CRM客户管理</a>
								<i class="icon-angle-right"></i> <a href="#">客户管理</a> 
								<i class="icon-angle-right"></i> <a href="#">客户列表</a> 
								<i class="icon-angle-right"></i> <a href="#">客户跟进详情列表</a>
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
							<i class="icon-globe"></i>当前选择客户的跟进
						</div>
						<div class="actions">
							<a class="btn red" id="addbtn" data-toggle="modal" href="#static"> 增加 
							<i class="icon-plus"></i> </a>
							<div class="btn-group">
								<a class="btn green" href="#" data-toggle="dropdown"> 改变显示列
								<i class="icon-angle-down"></i> </a>
								<div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
									<label><input type="checkbox" checked data-column="1">公司客户</label>
									<label><input type="checkbox" checked data-column="2">跟进内容</label>
									<label><input type="checkbox" checked data-column="3">跟进时间</label>
									<label><input type="checkbox" checked data-column="4">跟进方式</label>
									<label><input type="checkbox" checked data-column="5">跟进部门员工</label>
								</div>
							</div>
						</div>
					</div>
					<div class="portlet-body">
						<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
							<thead>
								<tr>
									<th>序号</th>
									<th>公司客户</th>
									<th>跟进内容</th>
									<th>跟进时间</th>
									<th>跟进方式</th>
									<th>跟进部门员工</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="tablecusfollow">
							<s:iterator var="m" value="#follows" status="x">
								<tr>
									<td class="gjid"><s:property value="#m.id"/></td>
									<td><s:property value="#m.crmCustomer.customer"/></td>
									<td class="gjcontent">
									<s:if test="#m.follow.length() > 15">
										<a class="tooltips" data-placement="bottom" data-original-title="<s:property value="#m.follow"/>">
										<s:property value="#m.follow.substring(0,15)"/>...</a>
									</s:if>   
									<s:else>
									     <s:property value="#m.follow"/>
									</s:else>
									<span style="display:none;"><s:property value="#m.follow"/></span>
									</td>
									<td class="gjdate"><s:date name="#m.followDate" format="yyyy-MM-dd"/></td>
									<td class="gjtype"><s:property value="#m.paramSysparam.paramsName"/>
									<span style="display:none;"><s:property value="#m.paramSysparam.id"/></span></td>
									<td><s:property value="#m.hrDepartment.DName"/>—<s:property value="#m.hrEmployee.name"/></td>
									<td>
									<!-- begin操作按钮 -->
									<div class="btn-group" style="margin-bottom: 0px !important;">
										<a class="btn mini green" href="#" data-toggle="dropdown"><i class="icon-user"></i>操作<i class="icon-angle-down"></i> 
										</a>
										<ul class="dropdown-menu">
											<!-- editRow(传入当前行ID 0开始)  -->
											<li><a data-toggle="modal" href="#static" onclick="editRow(this)"><i class="icon-edit"></i>编辑</a></li>
											<li><a href="crm_follow!delete?follow.id=<s:property value="#m.id"/>&id=<s:property value="#customerid"/>"><i class="icon-trash"></i>删除</a></li>
										</ul>
									</div> 
									<!-- end操作按钮 -->
									</td>
								</tr>
							</s:iterator>
							</tbody>
						</table>
					</div>
					<!-- BEGIN增加跟进弹出框 -->
					<div id="static" class="modal hide fade " style="width:700px;" tabindex="-1" data-backdrop="static" data-keyboard="false">
						<form action="crm_follow!addFollow" method="post">
							<!-- begin 新增跟进 -->
							<div class="portlet box green" title="" style="margin-bottom:0px !important;">
								<div class="portlet-title">
									<div class="caption"><i class="icon-cogs"></i>新增跟进</div>
									<div class="tools"><a href="javascript:;" class="collapse"></a></div>
								</div>
								<!-- 隐藏域 ID  用于跟进添加  保存当前跟进客户ID -->
								<input type="hidden" value="<s:property value="#customerid"/>" name="follow.crmCustomer.id">
								<!-- 隐藏域 ID  用于跟进修改 保存当前的跟进数据的ID -->
								<input type="hidden" value="" name="follow.id" id="gjid">
								<div class="portlet-body" style="padding-left:50px;">
									<div class="row-fluid">
										<div class="control-group">
											<div class="controls" style="float: left;width: 300px;">
												<label class="control-label">跟进方式</label> 
												<select name="follow.paramSysparam.id" id="gjtype" class="span10 m-wrap" tabindex="1">
													<option value="-1">请选择</option>
												</select>
											</div>
											<div class="controls" style="float: left;">
												<label class="control-label">跟进时间</label>
												<div class="input-append date date-picker" data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
												<input class="m-wrap m-ctrl-medium date-picker" name="follow.followDate" id="gjdate" size="16" type="text" value="" />
												<span class="add-on"><i class="icon-calendar"></i> </span>
												</div>
											</div>
										</div>
									</div>
									<!-- /row -->
									<div class="row-fluid">
										<div class="control-group">
											<div class="controls">
												<label class="control-label">跟进内容</label>
												<textarea name="follow.follow" id="gjcontent" class="span10 m-wrap" rows="3"></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- end 新增跟进 -->
							<!-- begin 日程提醒  -->
							<div class="portlet box blue" title="" style="margin-bottom:0px !important;">
								<div class="portlet-title">
									<div class="caption">
										<i class="icon-cogs"></i>添加日程提醒 <input type="checkbox" id="ifshowfade" /> 
										<a href="javascript:;" class="btn mini green">选中或取消日程提醒</a>
									</div>
									<div class="tools">
										<a href="javascript:;" class="collapse "></a>
									</div>
								</div>
								<div class="portlet-body myfadedialog" style="padding-left:50px;">
									<div class="control-group">
										<label class="control-label">全天提醒</label>
										<div class="controls">
											<label class="radio"> 
											<input type="radio" name="optionsRadios1" value="option1" />是 </label> 
											<label class="radio"> <input type="radio" name="optionsRadios1" value="option2" checked />否 </label>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">提醒时间</label>
										<div class="controls">
											<div class="input-append date date-picker" data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
												<input class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="" />
												<span class="add-on"><i class="icon-calendar"></i> </span>
											</div>
											<div class="input-append date date-picker" data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
												<input class="m-wrap m-ctrl-medium date-picker" size="16" type="text" value="" />
												<span class="add-on"><i class="icon-calendar"></i> </span>
											</div>
										</div>
									</div>
									<div class="control-group">
										<div class="controls">
											<label class="control-label">提醒内容</label>
											<textarea class="span10 m-wrap" rows="1"></textarea>
										</div>
									</div>
								</div>
							</div>
							<!-- end 日程提醒  -->
							<div class="modal-footer">
								<button type="button" data-dismiss="modal" class="btn black">取消</button>
								<button type="reset" id="reset"  class="btn">重置</button>
								<button type="submit" class="btn green">提交</button>
							</div>
						</form>
					</div>
					<!-- END增加跟进弹出框 -->
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
	<script type="text/javascript" src="<%=basePath%>media/js/bootstrap-datepicker.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/table-advanced.js"></script>
	<script src="<%=basePath%>media/js/search.js"></script>
	<script src="<%=basePath%>main_pages/selectparam.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			TableAdvanced.init();
			Search.init();
			$('.myfadedialog').fadeOut();
			$('#ifshowfade').change(function() {
				if (this.checked) {
					$('.myfadedialog').fadeIn();
				} else {
					$('.myfadedialog').fadeOut();
				}
			});
			var selectgj=$("#gjtype");
			ajaxLoadParam(selectgj,4);
			$("#addbtn").click(function(){
				$("#reset").click();
			});
		});

		function editRow(obj) {
			var row = $(obj).parent().parent().parent().parent().parent();
			var gjid = $(row).children('.gjid').text();
			var gjdate = $(row).children('.gjdate').text();
			var gjcontent = $(row).children('.gjcontent').children().eq(1).text().trim();
			if(gjcontent==""||gjcontent==null){
				gjcontent=$(row).children('.gjcontent').children().eq(0).text().trim();
			}
			var gjtype = $(row).children('.gjtype').children().text().trim();
			$("#gjid").val(gjid);
			$("#gjdate").val(gjdate);
			$("#gjtype").val(gjtype);
			$("#gjcontent").val(gjcontent);
		};
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>