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
<title>crm_product_list.jsp</title>
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
							CRM产品管理 <small>产品管理页</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="index.html">CRM客户管理</a>
								<i class="icon-angle-right"></i> <a href="index.html">产品管理</a> <i
								class="icon-angle-right"></i> <a href="index.html">产品列表</a></li>
						</ul>
						<!-- END 网页的标题和面包屑-->
					</div>
				</div>
				<!-- END 页面标题-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<!-- BEGIN 树状图 -->
					<div class="span3">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-comments"></i>产品分类
								</div>
								<div class="actions">
									<a href="javascript:;" id="tree_1_collapse" class="btn green">
										折叠</a> <a href="javascript:;" id="tree_1_expand"
										class="btn yellow"> 展开</a>
								</div>
							</div>
							<div class="portlet-body fuelux" style=" min-height: 318px">
								<!-- begin 1级树 -->
								<ul class="tree" id="tree_1">
									<!-- begin 子菜单 -->
									<li>
										<!-- 二级项 --> <a href="#" data-role="branch"
										class="tree-toggle" data-toggle="branch"
										data-value="Bootstrap_Tree"> 产品分类 </a> <!-- 二级项树 -->
										<ul class="branch in">
											<li><a href="#" data-role="leaf" data-value="0"><i
													class="icon-table"></i>全部</a>
											</li>
											<s:iterator value="categories" id="ca" status="x">
												<li><s:if test="#ca.categories.size > 0">
														<a href="#" class="tree-toggle" data-toggle="branch"
															data-value="<s:property value="#ca.id"/>"
															id="nut<s:property value="#x.index"/>"> <s:property
																value="#ca.productCategory" /> </a>
														<ul class="branch in">
															<s:iterator value="#ca.categories" id="child">
																<li><a href="#" data-role="leaf"
																	data-value="<s:property value="#child.id"/>"><i
																		class="<s:property value="#child.productIcon"/>"></i>
																		<s:property value="#child.productCategory" /> </a>
																</li>
															</s:iterator>
														</ul>
													</s:if> <s:else>
														<a href="#" class="tree-toggle" data-toggle="branch"
															data-value="<s:property value="#ca.id"/>"
															id="nut<s:property value="#x.index"/>"> <s:property
																value="#ca.productCategory" /> </a>
														<ul class="branch in">
														</ul>
													</s:else></li>
											</s:iterator>
											<li>
										</ul></li>
									<!-- end 子菜单 -->
								</ul>
								<!-- end 1级树 -->
							</div>
						</div>
					</div>
					<!-- END 树状图 -->
					<!-- BEGIN 表格列表-->
					<div class="span9">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-globe"></i>产品列表
								</div>
								<div class="actions">
									<div class="btn-group">
										<a class="btn red" href="crm_prod!findOne"> 新增 <i
											class="icon-plus"></i> </a> <a class="btn green" href="#"
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
												<td><s:property
														value="#p.crmProductCategory.productCategory" />
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
												<td><a
													href="crm_prod!advanceDel?id=<s:property value="#p.productId" />"
													class="btn mini purple"><i class="icon-trash"></i> </a> <a
													href="crm_prod!findOne?id=<s:property value="#p.productId" />"
													class="btn mini green"><i class="icon-edit"></i> </a></td>
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
	<script src="<%=basePath%>media/js/ui-tree.js"></script>
	<script src="<%=basePath%>media/js/table-advanced.js"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			App.init();
			UITree.init();
			TableAdvanced.init();
		});
		$(function() {
			$("#tree_1").on("nodeselect.tree.data-api", "[data-role=leaf]",
					function(e) {
						var cateid = e.node.value;
						var url = "crm_prod?id=" + cateid;
						location.href = url;
					});
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>