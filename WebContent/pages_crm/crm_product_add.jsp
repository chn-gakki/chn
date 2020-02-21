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
  <!-- BEGIN PAGE LEVEL STYLES -->
  <jsp:include page="/media/ui_css.jsp"></jsp:include> 
  <link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" /> 
  <!-- END PAGE LEVEL STYLES -->  
 </head>
 <!-- END HEAD --> 
 <body class="page-header-fixed">
  <!-- BEGIN BODY -->  
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
       <h3 class="page-title"> CRM产品新增 <small>我的产品新增页</small> </h3> 
       <ul class="breadcrumb"> 
        <li><i class="icon-home"></i> <a href="index.html">CRM客户管理</a> <i class="icon-angle-right"></i> <a href="index.html">产品管理</a> <i class="icon-angle-right"></i> <a href="index.html">产品新增</a></li> 
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
          <a href="javascript:;" class="remove"></a> 
         </div> 
        </div> 
        <div class="portlet-body form"> 
         <!-- BEGIN FORM--> 
         <form action="crm_prod!addOne" method="post" class="form-horizontal"> 
          <h3 class="form-section">基本信息</h3> 
          <div class="row-fluid"> 
           <div class="span6 "> 
            <div class="control-group"> 
             <label class="control-label">产品名称</label> 
             <input type="hidden" name="id" value="18" /> 
             <div class="controls"> 
              <input type="text" name="productName" class="m-wrap span12" placeholder="必填" />
             </div> 
            </div> 
           </div> 
           <!--/span--> 
           <div class="span6 "> 
            <div class="control-group"> 
             <label class="control-label">产品类别</label> 
             <div class="controls"> 
              	<select id="select2_sample_cate" class="span6 select2">
					<option value="-1">请先选择</option>
				</select>
				<select id="select2_sample_childcate" name="cateid"  class="span6 select2">
					<option value="-1">请选择</option>
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
              <input type="text" name="unit" class="m-wrap span12" placeholder="必填" /> 
             </div> 
            </div> 
           </div> 
           <!--/span--> 
           <div class="span6 "> 
            <div class="control-group"> 
             <label class="control-label">价格(￥)</label> 
             <div class="controls"> 
              <input type="text" name="price" class="m-wrap span8" placeholder="必填" />
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
              <textarea class="m-wrap span11" rows="2" placeholder="可填" name="specifications"></textarea> 
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
              <textarea class="m-wrap span11" rows="3" placeholder="可填" name="remarks"></textarea> 
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
         <!--  END FORM--> 
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
  <script>
		jQuery(document).ready(function() {
			App.init();
		});
  </script>
  <script type="text/javascript" src="<%=basePath%>main_pages/selectcategories.js"></script>
  <!-- END JAVASCRIPTS -->  
  <!-- END BODY -->  
 </body>
</html>