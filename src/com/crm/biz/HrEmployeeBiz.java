package com.crm.biz;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.HrEmployeeDao;
import com.crm.info.HrEmployee;
import com.crm.tools.Md5;
import com.crm.tools.Scopes;
@Transactional
@Service("hrEmployeeBiz")
public class HrEmployeeBiz {
	
	private HrEmployeeDao hrEmployeeDao;
	
	public void setHrEmployeeDao(HrEmployeeDao hrEmployeeDao) {
		this.hrEmployeeDao = hrEmployeeDao;
	}
	/**
	 * 员工登录
	 * @param name
	 * @param pwd
	 * @return
	 */
	public HrEmployee login(String name, String pwd) {
		return hrEmployeeDao.login(name,pwd);
	}
	/**
	 * 获取对应部门的员工
	 * @param depid
	 * @return
	 */
	public List<HrEmployee> findEmpsByDepId(int depid){
		return hrEmployeeDao.findEmpsByDepId(depid);
	}
	public List<HrEmployee> findAllEmps() {
		return hrEmployeeDao.findAll();
	}
	public HrEmployee findOne(int id) {
		return hrEmployeeDao.get(id);
	}
	public boolean deleteFlase(int id) {
		HrEmployee employee=hrEmployeeDao.get(id);
		employee.setIsdelete(0);
		employee.setDeleteTime(new Date());
		try {
			hrEmployeeDao.save(employee);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public boolean update(HrEmployee emp) {
		HrEmployee old=hrEmployeeDao.get(emp.getId());
		old.setAddress(emp.getAddress());
		old.setBirthday(emp.getBirthday());
		old.setCanlogin(emp.getCanlogin());
		old.setEducation(emp.getEducation());
		old.setEmail(emp.getEmail());
		old.setEntrydate(emp.getEntrydate());
		old.setHrDepartment(emp.getHrDepartment());
		old.setHrPosition(emp.getHrPosition());
		old.setHrPost(emp.getHrPost());
		old.setIdcard(emp.getIdcard());
		old.setIspost(emp.getIspost());
		old.setName(emp.getName());
		old.setParamSysparam(emp.getParamSysparam());
		old.setProfessional(emp.getProfessional());
		old.setRemarks(emp.getRemarks());
		old.setSchools(emp.getSchools());
		old.setSex(emp.getSex());
		old.setSysRole(emp.getSysRole());
		old.setTelephone(emp.getTelephone());
		old.setUid(emp.getUid());
		try {
			hrEmployeeDao.save(old);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean add(HrEmployee emp) {
		try {
			emp.setPwd(Md5.MD5(emp.getPwd()));
			emp.setIsdelete(1);
			emp.setTheme("default");
			hrEmployeeDao.save(emp);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public List<HrEmployee> findTrashAll(){
		return hrEmployeeDao.findTrashAll();
	}
	public boolean deleteById(int id) {
		try {
			hrEmployeeDao.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public boolean doTrashAdd(int id){
		HrEmployee employee=hrEmployeeDao.get(id);
		employee.setIsdelete(1);
		employee.setDeleteTime(null);
		try {
			hrEmployeeDao.save(employee);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public HrEmployee updateHead(String headfileFileName) {
		HrEmployee emp = ((HrEmployee)Scopes.getSessionMap().get("emp"));
		HrEmployee old = hrEmployeeDao.get(emp.getId());
		old.setPortal("img/upfile/"+headfileFileName);
		try {
			hrEmployeeDao.save(old);
			return old;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public HrEmployee empUpdate(HrEmployee hrEmployee) {
		try {
			HrEmployee hr=(HrEmployee) Scopes.getSessionMap().get("emp");
			HrEmployee r=hrEmployeeDao.get(hr.getId());
			r.setSex(hrEmployee.getSex());
			r.setTelephone(hrEmployee.getTelephone());
			r.setAddress(hrEmployee.getAddress());
			r.setEmail(hrEmployee.getEmail());
			hrEmployeeDao.save(r);
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public HrEmployee updatePwd(String newpwd){
		try {
			HrEmployee hr=(HrEmployee) Scopes.getSessionMap().get("emp");
			HrEmployee r=hrEmployeeDao.get(hr.getId());
			r.setPwd(Md5.MD5(newpwd));
			hrEmployeeDao.save(r);
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public HrEmployee updateTheme(String theme) {
		try {
			HrEmployee hr=(HrEmployee) Scopes.getSessionMap().get("emp");
			HrEmployee r=hrEmployeeDao.get(hr.getId());
			r.setTheme(theme);
			hrEmployeeDao.save(r);
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
