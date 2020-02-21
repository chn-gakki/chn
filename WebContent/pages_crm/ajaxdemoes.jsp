<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
  <title>Index.jsp</title> 
  <meta content="width=device-width, initial-scale=1.0" name="viewport" /> 
  <meta content="" name="description" /> 
  <meta content="" name="author" /> 
  <jsp:include page="/media/ui_css.jsp"></jsp:include> 
  <link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />  
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
       <jsp:include page="/main_pages/styleset.jsp"></jsp:include> 
       <!-- BEGIN 网页的标题和面包屑--> 
       <h3 class="page-title"> CRM产品管理 <small>产品管理页</small> </h3> 
       <ul class="breadcrumb"> 
        <li><i class="icon-home"></i> <a href="index.html">CRM客户管理</a> <i class="icon-angle-right"></i> <a href="index.html">产品管理</a> <i class="icon-angle-right"></i> <a href="index.html">产品列表</a></li> 
       </ul> 
       <!-- END 网页的标题和面包屑--> 
      </div> 
     </div> 
     <!-- END 页面标题--> 
     <!-- ---------------------------------------------- --> 
     <div class="row-fluid"> 
      <div class="span3"> 
       <div class="control-group"> 
        <label class="control-label">Loading Data</label> 
        <div class="controls"> 
         <input type="hidden" id="select2_sample3" class="span12 select2" /> 
        </div> 
       </div> 
      </div> 
      <div class="span3"> 
       <div class="control-group"> 
        <label class="control-label">部门</label> 
        <div class="controls"> 
         <select id="select2_sample_deps" class="span12 select2"> <option></option> </select> 
        </div> 
       </div> 
      </div> 
      <div class="span3"> 
       <div class="control-group"> 
        <label class="control-label">员工</label> 
        <div class="controls"> 
         <select id="select2_sample_emps" class="span12 select2"> <option></option> </select> 
        </div> 
       </div> 
      </div> 
     </div> 
     <div class="row-fluid"> 
      <div class="span3"> 
       <div class="control-group"> 
        <label class="control-label">省份</label> 
        <div class="controls"> 
         <select id="select2_sample_vince" class="span12 select2"> <option></option> </select> 
        </div> 
       </div> 
      </div> 
      <div class="span3"> 
       <div class="control-group"> 
        <label class="control-label">城市</label> 
        <div class="controls"> 
         <select id="select2_sample_citys" class="span12 select2"> <option></option> </select> 
        </div> 
       </div> 
      </div> 
      <div class="span3"> 
       <div class="control-group"> 
        <label class="control-label">订单状态</label> 
        <div class="controls"> 
         <select id="select2_sample_paramsys" class="span12 select2"> <option></option> </select> 
        </div> 
       </div> 
      </div> 
     </div> 
     <div class="row-fluid"> 
      <div class="span3"> 
       <div class="control-group"> 
        <label class="control-label">产品分类</label> 
        <div class="controls"> 
         <select id="select2_sample_cate" class="span12 select2"> <option></option> </select> 
        </div> 
       </div> 
      </div> 
      <div class="span3"> 
       <div class="control-group"> 
        <label class="control-label">子分类</label> 
        <div class="controls"> 
         <select id="select2_sample_childcate" class="span12 select2"> <option></option> </select> 
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
  <script src="<%=basePath%>media/js/app.js"></script> 
  <script type="text/javascript" src="<%=basePath%>media/js/select2.min.js"></script> 
  <script src="<%=basePath%>main_pages/myselect.js"></script> 
  <script>
		jQuery(document).ready(function() {
			App.init();
			FormComponets.init();
		});
		//系统参数 加载
		$(function(){
			var sysid=6;//这里定义要显示的分类 父ID   
			var paramsys = $('#select2_sample_paramsys');
			var url="../pages_param/param_sys!ajaxGetBySysId?sysid="+sysid+"&v="+new Date().valueOf();
			$.getJSON(url,function(d){
				var chtml="";
				for ( var int = 0; int < d.length; int++) {
					chtml+="<option value='"+d[int].id+"'>"+d[int].paramsName+"</option>";
				}
				paramsys.html(chtml);
			});
		});
	</script>
  <script type="text/javascript" src="<%=basePath%>main_pages/selectcategories.js"></script>
  <script type="text/javascript" src="<%=basePath%>main_pages/selectcitys.js"></script>
  <script type="text/javascript" src="<%=basePath%>main_pages/selectdepsemps.js"></script>
  <!-- END JAVASCRIPTS -->  
  <!-- END BODY --> 
 </body>
</html>