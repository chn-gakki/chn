<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	<title>sys_role_list.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
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
							系统角色管理 <small>系统角色管理页</small>
						</h3>
<!-- 						<ul class="breadcrumb"> -->
<!-- 							<li> -->
<!-- 								<i class="icon-home"></i> -->
<!-- 								<a href="index.html">系统管理</a>  -->
<!-- 								<i class="icon-angle-right"></i> -->
<!-- 								<a href="index.html">系统角色管理</a> -->
<!-- 							</li> -->
<!-- 						</ul> -->
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- ---------------------------------------------- -->
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet">
							<div class="portlet-title ">
								<div class="caption"><i class="icon-bell"></i>系统角色</div>
								<div class="actions">
									<a id="new-role" class="btn red" href="#myModal2" data-toggle="modal">新建 <i class="icon-plus"></i></a>
								</div>
							</div>
							<div class="portlet-body">
								<table class="table table-striped table-bordered table-advance table-hover">
									<thead>
										<tr>
											<th><i class="icon-briefcase"></i> 编号</th>
											<th class="hidden-phone"><i class="icon-user"></i> 名称</th>
											<th><i class="icon-shopping-cart"></i> 描述</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
									<s:iterator value="#roles" var="r">
										<tr>
											<td class="highlight">
												<div class="success"></div>
												<a href="#"><s:property value="#r.roleid"/></a>
											</td>
											<td class="hidden-phone"><s:property value="#r.rolename"/> </td>
											<td><s:property value="#r.roledscript"/></td>
											<td><a id="<s:property value="#r.roleid"/>" href="#myModal2" data-toggle="modal" class="role-edit btn mini purple"><i class="icon-edit"></i>编辑</a></td>
										</tr>
									</s:iterator>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- ---------------------------------------------- -->
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
	
	<!-- END JAVASCRIPTS -->
	<!-- begin 消息提示框 -->
	<form action="sys_role!add" id="form" method="post">
	<div id="myModal2" class="modal hide  fade" style="width:600px;" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
		<div class="modal-header ">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
			<h3 id="myModalLabel2" style="color:black;">角色添加</h3>
		</div>
		<div class="modal-body" >
			<div class="row-fluid">
				<div class="span10 ">
					<div class="control-group">
						<label class="control-label">角色名称：</label>
						<div class="controls">
						<input type="hidden" name="roleid" value="" />
							<input name="rolename" type="text"
								class="m-wrap span10" placeholder="必填">
						</div>
					</div>
				</div>
				<!--/span-->
			</div>
			<div class="row-fluid">
				<div class="span10 ">
					<div class="control-group">
						<label class="control-label">描述：</label>
						<div class="controls">
							<input name="roledscript" type="text"
								class="m-wrap span10" placeholder="必填">
						</div>
					</div>
				</div>
				<!--/span-->
			</div>
			<div id="div">
			<h5>权限附加：</h5><br>
			<s:iterator value="#menustree" var="one" status="x">
			<input class="cbx" type="checkbox" name="menus" value="<s:property value="#one.menuId"/>"/><s:property value="#one.menuName"/>
			<hr>
			<s:iterator value="#one.sysMenus" var="two" status="y">
				<input  class="cbx" type="checkbox" name="menus" value="<s:property value="#two.menuId"/>"/><s:property value="#two.menuName"/>
				{<s:iterator value="#two.sysMenus" var="three" status="z">
					<input class="cbx" type="checkbox" name="menus" value="<s:property value="#three.menuId"/>"/><s:property value="#three.menuName"/>|
				</s:iterator>}<br>
			</s:iterator>
			<hr>
			</s:iterator>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn green submit-button">提交</button>
			<button data-dismiss="modal" class="btn gray">取消</button>
		</div>
	</div>
	</form>
	<!-- end 消息提示框 -->
	<script type="text/javascript">
		function setChecked(ids){
			 var cbxs= $("#div .cbx").attr("checked",false);
			 ids=","+ids+",";			 
			 for(var i=0;i<cbxs.length;i++){
			 	var cbx=$(cbxs[i])[0];
			 	var span=$(cbx).parent();			 	
			 	$(cbxs[i]).attr("checked",ids.indexOf(","+$(cbxs[i]).val()+",")>=0);
			 	if(cbx.checked){
			 		span.css("background-position-x","-76px");
			 	}else{
			 		span.css("background-position-x","0px");
			 	}
			 	
			 }
			
		}
		$("#div .cbx").change(function(){
				var span=$(this).parent();	
				if(this.checked){
			 		span.css("background-position-x","-76px");
			 	}else{
			 		span.css("background-position-x","0px");
			 	}
		});
	</script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			$('.role-edit').click(function(){
				var id = $(this).attr("id");
				var url="sys_role!findOne?id="+id+"&v="+new Date().valueOf();
				$.getJSON(url,function(d){
					$('[name=rolename]').val(d.rolename);
					$('[name=roledscript]').val(d.roledscript);
					$('[name=roleid]').val(d.roleid);
					//alert(d.childmenus);
					setChecked(d.childmenus);
				});
				
				/*$('#form :input').val('');
				var box = $('#form :checkbox').toArray();
				for ( var i = 0; i < box.length; i++) {
					box[i].checked=true;
				}
				$('#form :checked').each(function(){
					$(this)[0].checked='checked';
					//$(this).removeAttr("checked");
				});*/
			});
			$('#new-role').click(function(){
				$("#div .cbx").attr("checked",false).change();
				$('[name=rolename]').val('');
				$('[name=roledscript]').val('');
				$('[name=roleid]').val(-1);
			});
			$('.submit-button').click(function(){
				//获取权限字符串
				var c=$('#div [name=menus]:checked').toArray();
				var array="";
				for ( var i = 0; i < c.length; i++) {
					array+=""+$(c[i]).val()+",";
				}
				array=array.substring(0, array.length-1);
				var rolename=$('[name=rolename]').val();
				var roledescrip=$('[name=roledscript]').val();
				var roleid = $('[name=roleid]').val();
				var data;
				var url;
				if((roleid*1)<0){//Add
					data = {"role.rolename":rolename,"role.roledscript":roledescrip,"role.childmenus":array};
					url="sys_role!add?v="+new Date().valueOf();
				}else{//Update
					data = {"role.roleid":roleid,"role.rolename":rolename,"role.roledscript":roledescrip,"role.childmenus":array};
					url="sys_role!update?v="+new Date().valueOf();
				}
				$.post(url,data,function(d){
					if (d=="success") {
						alert("操作成功");
						location.href="sys_role";
					}else{
						alert("操作失败");
					}
				});
			});
		});
	</script>
</body>
<!-- END BODY -->
</html>