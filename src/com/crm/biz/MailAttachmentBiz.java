package com.crm.biz;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.MailAttachmentDao;
import com.crm.info.MailAttachment;
import com.crm.info.MailFlow;
import com.crm.tools.WebTools;
@Transactional
@Service("mailAttachmentBiz")
public class MailAttachmentBiz {
	private MailAttachmentDao mailAttachmentDao;

	public void setMailAttachmentDao(MailAttachmentDao mailAttachmentDao) {
		this.mailAttachmentDao = mailAttachmentDao;
	}
	private MailFlowBiz mailFlowBiz;

	public String addAttachment(String newFileName, String uploadifyFileName, String path) {
		try {
			MailFlow flow=new MailFlow();
			for (int i = 0; i < WebTools.mailIdes.length; i++) {
				MailAttachment attachment=new MailAttachment();
				attachment.setFileName(uploadifyFileName);
				attachment.setRealName(newFileName);
				attachment.setFileUrl(path);
				flow.setId(WebTools.mailIdes[i]);
				attachment.setMailFlow(flow);
				mailAttachmentDao.save(attachment);
			}
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "failed";
		}
	}
	public MailFlowBiz getMailFlowBiz() {
		return mailFlowBiz;
	}
	public void setMailFlowBiz(MailFlowBiz mailFlowBiz) {
		this.mailFlowBiz = mailFlowBiz;
	}
	/**
	 * 删除邮件前删除附件
	 * @param id
	 * @throws Exception 
	 */
	public void deleteChildAttach(int id) throws Exception {
		MailFlow flow = mailFlowBiz.findOne(id);
		Set<MailAttachment> mailattas=flow.getMailAttachments();
		Iterator<MailAttachment> iterator=mailattas.iterator();
		while (iterator.hasNext()) {
			MailAttachment delid = (MailAttachment) iterator.next();
			/*String path=ServletActionContext.getServletContext().getRealPath("/main_pages/mailUploadFiles");
			File f = new File(path+"\\"+delid.getRealName());  // 输入要删除的文件位置
			if(f.exists()){
				f.delete();
			}*/
			mailAttachmentDao.delete(delid);
		}
	}
}
