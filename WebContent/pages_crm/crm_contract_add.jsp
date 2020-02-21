<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<title>crm_contract_update.jsp</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<jsp:include page="/media/ui_css.jsp"></jsp:include>
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/select2_metro.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>media/css/datepicker.css" />
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
						<!-- BEGIN 风格定制 -->
						<jsp:include page="/main_pages/styleset.jsp"></jsp:include>
						<!-- END 风格定制 --> 
						<!-- BEGIN 网页的标题和面包屑-->
						<h3 class="page-title">
							CRM合同新增 <small>我的合同新增页</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="#">CRM客户管理</a> 
								<i class="icon-angle-right"></i>
								<a href="#">合同订单</a> 
								<i class="icon-angle-right"></i>
								<a href="#">合同管理</a> 
								<i class="icon-angle-right"></i>
								<a href="#">合同新增页</a>
							</li>
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
								<div class="caption"><i class="icon-reorder"></i>合同新增</div>
								<div class="tools"><a href="javascript:;" class="collapse"></a></div>
							</div>
							<div class="portlet-body form">
							<!-- BEGIN FORM-->
								<form action="ma_contr!add" method="post" class="form-horizontal">
									<h3 class="form-section">基本信息</h3>
									<div class="row-fluid">
										<div class="span4 ">
											<div class="control-group">
												<label class="control-label">客户公司名称</label>
												<div class="controls">
													<select class="span12" name="contract.crmCustomer.id" id="select2_sample_customer" tabindex="1">
														<option value="-1">请选择</option>
													</select>
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span4 ">
											<div class="control-group">
												<label class="control-label">合同编号</label>
												<div class="controls">
													<input type="text" name="contract.serialnumber" value="" class="m-wrap span12" id="select2_sample_customer" placeholder="请填写合同编号">
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span4 ">
											<div class="control-group">
												<label class="control-label">合同金额</label>
												<div class="controls">
													<input type="text" name="contract.contractAmount" value="" class="m-wrap span12" placeholder="合同金额">
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!-- /row -->
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">合同名称</label>
												<div class="controls">
													<input type="text" name="contract.contractName" value="" class="m-wrap span12" placeholder="合同名称">
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">付款期数</label>
												<div class="controls">
													<input type="number" name="contract.payCycle" value="" min="1" class="m-wrap span8" placeholder="必须为整数">
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">开始时间</label>
												<div class="controls">
													<div class="input-append date date-picker" data-date="2014-12-02" data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
														<input name="contract.startDate" class="m-wrap m-ctrl-medium date-picker" readonly="readonly" size="16" type="text" value="" />
														<span class="add-on"><i class="icon-calendar"></i></span>
													</div>
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">结束时间</label>
												<div class="controls">
													<div class="input-append date date-picker" data-date="2014-12-02" data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
														<input name="contract.endDate" class="m-wrap m-ctrl-medium date-picker" readonly="readonly" size="16" type="text" value="" />
														<span class="add-on"><i class="icon-calendar"></i></span>
													</div>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">签订时间</label>
												<div class="controls">
													<div class="input-append date date-picker" data-date="2014-12-02" data-date-format="yyyy-mm-dd" data-date-viewmode="years" data-date-minviewmode="months">
														<input name="contract.signDate" class="m-wrap m-ctrl-medium date-picker" readonly="readonly" size="16" type="text" value='' />
														<span class="add-on"><i class="icon-calendar"></i></span>
													</div>
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">对方签约</label>
												<div class="controls">
													<input name="contract.customerContractor" type="text" value="" class="m-wrap span8" placeholder="填写客户签约人">
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<div class="row-fluid">
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">客户归属</label>
												<div class="controls">
													<select name="contract.hrDepartmentByCDepid.id" class="span6 m-wrap" id="select_hrdep" tabindex="1">
													</select>
													<select name="contract.hrEmployeeByCEmpid.id" class="span6 m-wrap" id="select_hremp" tabindex="1">
													</select>
												</div>
											</div>
										</div>
										<!--/span-->
										<div class="span6 ">
											<div class="control-group">
												<label class="control-label">我方签约部门员工</label>
												<div class="controls">
													<select name="contract.hrDepartmentByOurContractorDepid.id" class="span6 m-wrap" id="select2_sample_deps" tabindex="1">
														<option value="-1">请选择</option>
													</select>
													<select name="contract.hrEmployeeByOurContractorId.id" class="span6 m-wrap" id="select2_sample_emps" tabindex="1">
														<option value="-1">请选择</option>
													</select>
												</div>
											</div>
										</div>
										<!--/span-->
									</div>
									<!--/row-->
									<div class="row-fluid">
										<div class="span12 ">
											<div class="control-group">
												<label class="control-label">合同条款</label>
												<div class="controls">
													<textarea name="contract.mainContent"  class="m-wrap span12" rows="4" placeholder=""></textarea>
												</div>
											</div>
										</div>
									</div>
									<!--/row-->
									<div class="row-fluid">
										<div class="span12 ">
											<div class="control-group">
												<label class="control-label">备注</label>
												<div class="controls">
													<textarea name="contract.remarks"  class="m-wrap span12" rows="3" placeholder=""></textarea>
												</div>
											</div>
										</div>
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
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/additional-methods.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/jquery.bootstrap.wizard.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/select2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>media/js/search.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="<%=basePath%>media/js/app.js"></script>
	<script src="<%=basePath%>media/js/form-wizard.js"></script> 
	<script>
		jQuery(document).ready(function() {
			App.init();
			FormWizard.init();
			Search.init();
		});
	</script>
	<script src="<%=basePath%>main_pages/selectcustomer.js?v=<%=Math.random()%>"></script>
	<script src="<%=basePath%>main_pages/selectdepsemps.js?v=<%=Math.random()%>"></script>
	<%-- <script type="text/javascript" src="<%=basePath%>media/js/json2.js"></script>--%>
	<script type="text/javascript">
		$(function(){
			var $select_cust=$("#select2_sample_customer");
			$select_cust.change(function(){
				var url="../pages_crm/crm_cust!ajaxGetDepEmp?id="+$select_cust.val()+"&v="+new Date().valueOf();
				$.ajax( {    
				   url:url,// 跳转到 action     
				   type:'post',    
				   cache:false,    
				   dataType:'json',
				   async : false,
				   success:function(d) {
				      $("#select_hrdep").html("<option value="+d.depid+">"+d.depname+"</option>");
				      $("#select_hremp").html("<option value="+d.empid+">"+d.empname+"</option>");
				   },    
				   error : function() {
				      alert("网络连接异常！");
				   }    
				});  
			});
		});
		/*$(function(){
			$("#submit-button").click(function(){
				var dataVo = $(".form-horizontal").serializeArray();  //获取表单 对象
				var dataJson = convertToJson(dataVo);  	// 调用 js 方法  dataJson 再ajax提交
				//var data = JSON.stringify(dataJson); 		//将json转为字符串
				var url="../pages_crm/ma_contr!update?v="+new Date().valueOf();
				$.ajax( {    
				   url:url,// 跳转到 action    
				   data:dataJson,    
				   type:'post',    
				   cache:false,    
				   dataType:'json',
				   async : false,
				   success:function(data) {    
				       if(data =="success" ){
				           alert("修改成功！");    
				           window.location.reload();    
				       }else{    
				       	alert("修改失败！");    
				       }    
				    },    
				    error : function() {  
				         alert("网络连接异常！");
				    }    
				});  
			});
		});*/
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>
