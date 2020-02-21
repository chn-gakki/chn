package com.crm.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.crm.biz.MailAttachmentBiz;
import com.crm.tools.Scopes;
import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller
public class MailAttachmentAction extends ActionSupport {
	
	private MailAttachmentBiz mailAttachmentBiz;

	public void setMailAttachmentBiz(MailAttachmentBiz mailAttachmentBiz) {
		this.mailAttachmentBiz = mailAttachmentBiz;
	}
	private File uploadify;//上传文件file对象  
	private String uploadifyFileName;//上传文件名  
	private String uploadifyContentType;//上传文件类型  
	private String description;//上传文件的描述  
	private String uploadDir;//保存上传文件的目录,相对于web应用程序的根路径,在struts.xml文件中配置  
	private String downFileName;

	public String getDownFileName() {
		return downFileName;
	}

	public void setDownFileName(String downFileName) {
		this.downFileName = downFileName;
	}

	public String execute() {
		String newFileName=null;  
		//得到当前时间开始流逝的毫秒数,将这个毫秒数作为上传文件新的文件名  
		long now=new Date().getTime();
		DateFormat df=new SimpleDateFormat("yyyyMMddHHmmss");
		String currentDateTime=df.format(new Date()); 
		//得到保存上传文件的真实路径  
		String path=ServletActionContext.getServletContext().getRealPath(uploadDir);  
		File dir=new File(path);  
		//如果这个目录不存在,则创建它
		if (!dir.exists()) {
		    dir.mkdir();
		}  
		int index=uploadifyFileName.lastIndexOf(".");  
		
		//判断上传文件是否有扩展名,以时间戳作为新的文件名
		if (index!=-1) {  
		    newFileName=currentDateTime+Long.valueOf(now)+uploadifyFileName.substring(index);  
		}else {  
		    newFileName=currentDateTime+Long.valueOf(now);
		}  
		BufferedOutputStream bos=null;  
		BufferedInputStream bis=null;  
		  
		//读取保存在临时目录下的上传文件,写入到新的文件中  
		String data="";
		try {  
		    FileInputStream fis=new FileInputStream(uploadify);  
		    bis=new BufferedInputStream(fis);
		      
		    FileOutputStream fos=new FileOutputStream(new File(dir,newFileName));  
		    bos=new BufferedOutputStream(fos);  
		      
		    byte [] buf=new byte[4096];  
		    int len=-1;  
		    while ((len=bis.read(buf))!=-1) {  
		        bos.write(buf,0,len);  
		    }
		    String realPath="mail_atta!down?downFileName="+newFileName;
		    //跟新数据库
		    data = mailAttachmentBiz.addAttachment(newFileName,uploadifyFileName,realPath);
		} catch (FileNotFoundException e) {  
		    e.printStackTrace();
		} catch (IOException e) {
		    e.printStackTrace();
		}finally{  
		    if (null!=bis) {
		        try {
		            bis.close();  
		        } catch (IOException e) {  
		            e.printStackTrace();  
		        }  
		    }  
		    if (null!=bos) {  
		        try {  
		            bos.close();  
		        } catch (IOException e) {  
		            e.printStackTrace();  
		        }  
		    }  
		}
	    Scopes.getRequestMap().put("data", data);
	    return "ajax";
	}
	
	private InputStream inputStream;
	public InputStream getInputStream() throws FileNotFoundException {
		String path=ServletActionContext.getServletContext().getRealPath("/main_pages/mailUploadFiles");
		return new BufferedInputStream(new FileInputStream(path+"\\"+getDownFileName()));
	}
	
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String down(){
		return SUCCESS;
	}
	
	public File getUploadify() {
		return uploadify;
	}
	public void setUploadify(File uploadify) {
		this.uploadify = uploadify;
	}
	public String getUploadifyFileName() {
		return uploadifyFileName;
	}
	public void setUploadifyFileName(String uploadifyFileName) {
		this.uploadifyFileName = uploadifyFileName;
	}
	public String getUploadifyContentType() {
		return uploadifyContentType;
	}
	public void setUploadifyContentType(String uploadifyContentType) {
		this.uploadifyContentType = uploadifyContentType;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUploadDir() {
		return uploadDir;
	}
	public void setUploadDir(String uploadDir) {
		this.uploadDir = uploadDir;
	}
	
}