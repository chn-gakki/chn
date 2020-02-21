<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
 <head>
  <meta charset="utf-8" />
  <title>mail_add.jsp</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta content="" name="description" />
  <meta content="" name="author" />
   <jsp:include page="/media/ui_css.jsp"></jsp:include>
  <!-- BEGIN PAGE LEVEL STYLES --> 
  <link href="<%=basePath%>media/css/bootstrap-tag.css" rel="stylesheet" type="text/css" /> 
  <link href="<%=basePath%>media/css/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css" /> 
  <link href="<%=basePath%>media/css/jquery.fancybox.css" rel="stylesheet" /> 
  <!-- BEGIN:File Upload Plugin CSS files-->
  <!-- END:File Upload Plugin CSS files--> 
  <link href="<%=basePath%>media/css/inbox.css" rel="stylesheet" type="text/css" /> 
  <!-- END PAGE LEVEL STYLES --> 
  <link href="<%=basePath%>media/css/select2_metro.css"  rel="stylesheet" type="text/css"/> 
  <link href="<%=basePath%>/media/uploadify/uploadify.css" type="text/css"  rel="stylesheet"/>
</head>
 <style type="text/css">
 .row-fluid {margin-bottom:10px;}
 .receive label {float: left; margin-top:10px;}
 .receive input {float: left;}
 #title {margin-left:38px;}
 .success-upload{display: none; }
 </style>
 <body>
	 	<div class="row-fluid">
		<div class="span12 receive">
		    <label class="control-label">收件人:</label>
		    <input type="hidden" id="select2_sample5" class="span11 select2 m-wrap" value="" placeholder="请选择收件人" />
	     </div>
	     </div>
	    <div class="row-fluid">
		<div class="span12 receive">
		    <label class="control-label">主题:</label>
		    <input type="text" id="title" class="span11 m-wrap" value="" placeholder="不能超过30字"/>
	     </div>
	     </div>
	     <div class="row-fluid"> 
			<div class="span12">
				<label class="control-label">正文:</label>
	  			<textarea rows="30" cols="50" id="TextArea1"></textarea>
	  		</div>
	  	</div>
	  	<div class="row-fluid" >
	      <div class="span12">
	       	 <!-- 
	       	 	<input type="file" id="uploadify" name="uploadify">附件不能超过5M大小
			  <div id="fileQueue"></div>
	       	  -->
			  <a class="btn green" id="submit-button" href="javascript:;">消息发送</a>
			  <!-- 
			  	<a class="btn blue" href="javascript:$('#uploadify').uploadify('upload','*')">开始上传</a>
			  <a class="btn purple" href="javascript:$('#uploadify').uploadify('cancel')">取消所有上传</a>
			   -->
	      </div>
	    </div>
	    
	<jsp:include page="/media/ui_js.jsp"></jsp:include>
	<script src="<%=basePath%>media/js/bootstrap-tag.js" type="text/javascript"></script> 
	<script src="<%=basePath%>media/js/jquery.fancybox.pack.js" type="text/javascript"></script> 
	<script src="<%=basePath%>media/js/wysihtml5-0.3.0.js" type="text/javascript"></script> 
	<script src="<%=basePath%>media/js/bootstrap-wysihtml5.js" type="text/javascript"></script>
	<script src="<%=basePath%>media/uploadify/jquery.uploadify.min.js" type="text/javascript" ></script>
	<script src="<%=basePath%>media/js/app.js"></script> 
	<script src="<%=basePath%>media/ckeditor/ckeditor.js"></script>
	<script src="<%=basePath%>media/js/inbox.js"></script>
	<script src="<%=basePath%>media/js/select2.min.js"></script>
  	<script type="text/javascript">
  	var tafss;
  	$(function(){
  		App.init();
	  	CKEDITOR.replace('TextArea1');
  		var url="../pages_hr/hr_emp!ajaxGetEmps?v="+new Date().valueOf();
		$.getJSON(url,function(d){
			var tags="";
			for ( var int = 0; int < d.length; int++) {
				tags+=d[int].id+"|"+d[int].name+",";
			}
			tafss=tags.split(",");
		  	$("#select2_sample5").select2({
		        tags:tafss
		    });
		});
		
		$("#submit-button").click(function(){
			var username=$("#select2_sample5").val();
			var title=$("#title").val();
			var content=CKEDITOR.instances.TextArea1.getData();
			//格式化获取发件人Id 1,3,4
			var all = username.split(",");
			var ides="";
			for(var i=0; i < all.length; i++){
				if(i==all.length-1){
					ides+=all[i].substring(0,all[i].indexOf("|"));
				}else{
					ides+=all[i].substring(0,all[i].indexOf("|"))+",";
				}
			}
			$.ajax({
				async:false,
				cache:false,
				type:"post",
				url:"mail_flow!ajaxSendMail?v="+new Date().valueOf(),
				data:{
					"mailflow.mailTitle":title,
					"mailflow.mailContent":content,
					"emps":ides
				},
				dataType:"text",
				success:function(d){
					if(d.trim()=="success"){
						//$('.success-upload').removeClass("success-upload");
						//alert("邮件发送成功,如果有附件请上传附件!");
						//$('.success-upload').click();
						//$('#uploadify').uploadify('upload','*');
						alert('发送成功');
						window.location.href = 'mail_flow.jsp';
					}
				},
				error:function(){
					alert("网络异常!");
				}
			});
		});
	});
	//*.rar;*.7z;*.zip;*.jpg;*.png;*.gif;*.avi,*.rmvb,*.3gp,*.flv,*.mp3,*.wav,*.krc,*.lrc,*.doc,*.docx,*.xls,*.ppt,*.pdf,*.chm
	$(function(){  
         $("#uploadify").uploadify({      
            'debug'     : false, //开启调试  
            'auto'           : false, //是否自动上传     
            'swf'            : '<%=basePath%>media/uploadify/uploadify.swf',  //引入uploadify.swf    
            'uploader'       : 'mail_atta',//请求路径    
            'queueID'        : 'fileQueue',//队列id,用来展示上传进度的    
            'width'     : '75',  //按钮宽度    
            'height'    : '24',  //按钮高度  
            'queueSizeLimit' : 3,  //同时上传文件的个数    
            'fileTypeDesc'   : '邮箱文件',    //可选择文件类型说明  
            'fileTypeExts'   : '*.*', //控制可上传文件的扩展名    
            'multi'          : true,  //允许多文件上传   
            'buttonText'     : '附件上传',//按钮上的文字 
            'fileSizeLimit' : '5MB', //设置单个文件大小限制     
            'fileObjName' : 'uploadify',  //<input type="file"/>的name
            'method' : 'post',    
            'removeCompleted' : true,//上传完成后自动删除队列    
            'onFallback':function(){      
                alert("您未安装FLASH控件，无法上传！请安装FLASH控件后再试。");      
            },   
            'onUploadSuccess' : function(file, data, response){//单个文件上传成功触发  
                //data就是action中返回来的数据 
            },'onQueueComplete' : function(){//所有文件上传完成 
                alert("文件上传成功!");
                location.href="mail_flow.jsp";
                }
            });  
     });  
  	</script>
 </body>
</html>
