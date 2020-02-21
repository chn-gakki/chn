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
<title>crm_product_add.jsp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<jsp:include page="/media/ui_css.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/chosen.css" />
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
			<!-- ---------------------------------------------- -->
			<!-- BEGIN 页面容器-->
			<div class="container-fluid">
				<!-- BEGIN 页面标题-->
				<div class="row-fluid"> 
			      <div class="span12"> 
			       <jsp:include page="/main_pages/styleset.jsp"></jsp:include> 
			       <!-- BEGIN 网页的标题和面包屑--> 
			       <h3 class="page-title"> CRM产品修改 <small>我的产品修改页</small> </h3> 
			       <ul class="breadcrumb"> 
			        <li><i class="icon-home"></i> <a href="index.html">CRM客户管理</a> <i class="icon-angle-right"></i> <a href="index.html">产品管理</a> <i class="icon-angle-right"></i> <a href="index.html">产品修改</a></li> 
			       </ul> 
			       <!-- END 网页的标题和面包屑--> 
			      </div> 
			     </div> 
				<!-- END 页面标题-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN SAMPLE FORM PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-reorder"></i>产品新增
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a> 
									<a href="javascript:;" class="reload"></a>
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form action="crm_prod!updateOne" method="post"
									class="form-horizontal">
									<h3 class="form-section">基本信息</h3>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">产品名称</label>
												<div class="controls">
													<input type="hidden" name="crmProduct.productId"
														value="<s:property value="#onepro.productId"/>" />
														 <input type="text" value='<s:property value="#onepro.productName"/>'
														name="crmProduct.productName" class="m-wrap span12" >
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">产品类别</label>
												<div class="controls">
														<select id="select2_sample_cate"   class="span6 select2">
															<option value="<s:property value="#onepro.crmProductCategory.parentid"/>"><s:property value="#parentNameString"/></option>
														</select>
														<select id="select2_sample_childcate" name="crmProduct.crmProductCategory.id"  class="span6 select2">
															<option value="<s:property value="#onepro.crmProductCategory.id"/>"><s:property value="#onepro.crmProductCategory.productCategory"/></option>
														</select>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!-- /row -->
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">单位</label>
												<div class="controls">
													<input type="text"
														value="<s:property value="#onepro.unit"/>"
														name="crmProduct.unit" class="m-wrap span12">
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">价格(元)</label>
												<div class="controls">
													<input type="text"
														value="<s:property value="#onepro.price"/>"
														name="crmProduct.price" class="m-wrap span8">
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="row-fluid">
										<div class="span12 ">
											<div class="control-group">
												<label class="control-label">产品规格</label>
												<div class="controls">
													<textarea class="m-wrap span11" rows="1"
														name="crmProduct.specifications"><s:property value="#onepro.specifications" /></textarea>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="row-fluid">
										<div class="span12 ">
											<div class="control-group">
												<label class="control-label">备注</label>
												<div class="controls">
													<textarea class="m-wrap span11" rows="2"
														name="crmProduct.remarks"><s:property value="#onepro.remarks" /></textarea>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="form-actions">
										<button type="submit" id="submit-button" class="btn green"><i class="icon-ok"></i>保存</button>
										<button type="reset" class="btn">重置</button>
										<button type="button" onclick="history.back()" class="btn blue">返回</button>
									</div>
								</form>
								<!-- END FORM-->
							</div>
						</div>
						<!-- END SAMPLE FORM PORTLET-->
					</div>
				</div>
				<!-- END PAGE CONTENT-->
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
    <!-- END PAGE LEVEL PLUGINS --> 
    <script src="<%=basePath%>media/js/app.js"></script>
    <script src="<%=basePath%>main_pages/myselect.js"></script>
	<script type="text/javascript">
		function selectdefault(){
			var val = '<s:property value="#onepro.crmProductCategory.id"/>';
			$("#select2_sample_childcate").find("option[value='" + val + "']").attr("selected",
					"selected");
		}
		
	</script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			FormComponets.init();
			
			url = "crm_cate!ajaxGetAllChildCate?v=" + new Date().valueOf();
			$.getJSON(url, function(d) {
				var chtml = "";
				for ( var int = 0; int < d.length; int++) {
					chtml += "<option value='" + d[int].id + "'>"
							+ d[int].productCategory + "</option>";
				}
				$("#select2_sample_childcate").html(chtml);
			});
		});
	</script>
  	<script type="text/javascript" src="<%=basePath%>main_pages/selectcategories.js"></script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
