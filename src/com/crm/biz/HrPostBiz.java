package com.crm.biz;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.HrPostDao;
import com.crm.info.HrEmployee;
import com.crm.info.HrPost;
import com.crm.tools.Scopes;

@Transactional
@Service("hrPostBiz")
public class HrPostBiz {
	private HrPostDao hrPostDao;
	public void setHrPostDao(HrPostDao hrPostDao) {
		this.hrPostDao = hrPostDao;
	}
	public List<HrPost> findAll(){
		return hrPostDao.findAll();
	}
	public HrPost findOneHrpost(int id) {
		return hrPostDao.get(id);
	}
	public boolean addPost(HrPost post){
		try {
			post.setHrEmployee((HrEmployee)Scopes.getSessionMap().get("emp"));
			hrPostDao.save(post);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	private HrPost hrPost;
	public HrPost getHrPost() {
		return hrPost;
	}
	public void setHrPost(HrPost hrPost) {
		this.hrPost = hrPost;
	}
	public boolean update(HrPost post){
		HrPost hrPost = hrPostDao.get(post.getPostId());
		hrPost.setHrPosition(post.getHrPosition());
		hrPost.setPostName(post.getPostName());
		hrPost.setPositionOrder(post.getPositionOrder());
		hrPost.setPostDescript(post.getPostDescript());
		try {
			hrPostDao.save(hrPost);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	
	public boolean deleteFalse(int id){
		HrPost hrPost = hrPostDao.get(id);
		hrPost.setIsdelete(0);//0就是已删除
		hrPost.setDeleteTime(new Timestamp(new Date().getTime()));
		
		try {
			hrPostDao.save(hrPost);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public List<HrPost> findAllByPositionId(int id) {
		return hrPostDao.findAllByPositionId(id);
	}
	public List<HrPost> findTrashAll(){
		return hrPostDao.findTrashAll();
	}
	public boolean deleteById(int id) {
		try {
			hrPostDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public boolean doTrashAdd(int id) {
		HrPost hrPost = hrPostDao.get(id);
		hrPost.setIsdelete(1);//0就是已删除
		hrPost.setDeleteTime(null);
		try {
			hrPostDao.save(hrPost);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
