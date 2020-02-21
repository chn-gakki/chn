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
<title>trash_product_list.jsp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<jsp:include page="/media/ui_css.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/bootstrap-tree.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/DT_bootstrap.css" />
<!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<jsp:include page="/main_pages/top.jsp"></jsp:include>
	<!-- BEGIN 容器 -->
	<div class="page-container">
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
							产品回收 <small>产品回收</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">数据回收站</a> <i
								class="icon-angle-right"></i> <a href="#">CRM数据回收</a> <i
								class="icon-angle-right"></i> <a href="#">产品回收</a></li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<!-- BEGIN 表格列表-->
					<div class="span12">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-globe"></i>产品回收列表
								</div>
								<div class="actions">
									<div class="btn-group"> <a class="btn green" href="#"
											data-toggle="dropdown"> 改变显示列 <i class="icon-angle-down"></i>
										</a>
										<div id="sample_2_column_toggler"
											class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
											<label><input type="checkbox" checked data-column="1">产品名称</label>
											<label><input type="checkbox" checked data-column="2">产品类别</label>
											<label><input type="checkbox" checked data-column="3">产品规格</label>
											<label><input type="checkbox" checked data-column="4">价格(￥)</label>
											<label><input type="checkbox" checked data-column="5">单位</label>
											<label><input type="checkbox" checked data-column="6">备注</label>
										</div>
									</div>
								</div>
							</div>
							<div class="portlet-body">
								<table
									class="table table-striped table-bordered table-hover table-full-width"
									id="sample_2">
									<thead>
										<tr>
											<th>序号</th>
											<th>产品名称</th>
											<th>产品类别</th>
											<th>产品规格</th>
											<th>价格(￥)</th>
											<th>单位</th>
											<th>备注</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="prodlist" id="p">
											<tr>
												<td><s:property value="#p.productId" />
												</td>
												<td><s:property value="#p.productName" />
												</td>
												<td><s:property value="#p.crmProductCategory.productCategory" />
												</td>
												<td>
												<s:if test="#p.specifications.length()>10">
													<a class="popovers" id="test" data-trigger="hover" data-placement="top"
													 data-content="<s:property value='#p.specifications'/>" 
													 data-original-title="产品规格"><s:property value='#p.specifications.substring(0,10)'/>...</a>
												 </s:if>   
												 <s:else>      
												     <s:property value='#p.specifications'/>
												 </s:else> 
												<s:property value="" />
												</td>
												<td><s:property value="#p.price" />
												</td>
												<td><s:property value="#p.unit" />
												</td>
												<td>
												<s:if test="#p.remarks.length()>10">
													<a class="popovers" id="test" data-trigger="hover" data-placement="top"
													 data-content="<s:property value='#p.remarks'/>" 
													 data-original-title="产品备注"><s:property value='#p.remarks.substring(0,10)'/>...</a>
												</s:if>   
												<s:else>      
												     <s:property value='#p.remarks'/>
												</s:else>
												</td>
												<td>
												<a href="crm_prod!trashDel?id=<s:property value="#p.productId" />"
													class="btn mini purple"><i class="icon-trash"></i>彻底删除</a> 
												<a href="crm_prod!trashAdd?id=<s:property value="#p.productId" />"
													class="btn mini green"><i class="icon-edit"></i>恢复数据</a>
												</td>
											</tr>
										</s:iterator>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- END 表格列表-->
				</div>
				<!-- END PAGE CONTENT-->
			</div>
			<!-- END PAGE CONTENT-->
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
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/bootstrap-tree.js"></script>
	<script src="<%=basePath%>media/js/table-advanced.js"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
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