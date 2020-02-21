package com.crm.tools;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.json.JSONException;
import org.apache.struts2.json.JSONUtil;
import org.springframework.context.annotation.Scope;

import com.crm.info.CrmCustomer;
import com.crm.info.CrmProduct;
import com.crm.info.CrmProductCategory;
import com.crm.info.HrDepartment;
import com.crm.info.HrEmployee;
import com.crm.info.HrPosition;
import com.crm.info.HrPost;
import com.crm.info.MailFlow;
import com.crm.info.ParamCity;
import com.crm.info.ParamSysparam;
import com.crm.info.PersonalEvent;
import com.crm.info.SysRole;
@Scope("prototype")
public class WebTools {
	public static int follow_custid;//保存跟进 客户的id
	public static int receive_orderid;//保存收款的订单id
	public static int invoice_orderid;//保存开票的订单id
	public static int[] mailIdes; //保存邮件的id
	
	public static String convertJson(Object object) {
		String data = "";
		try {
			data = JSONUtil.serialize(object);
		} catch (JSONException e) {
			e.printStackTrace();
			data = "{}";
		}
		return data;
	}

	public static void jsonClearDeps(List<HrDepartment> departments) {
		for (HrDepartment dep : departments) {
			dep.setCrmContractsForCDepid(null);
			dep.setCrmContractsForOurContractorDepid(null);
			dep.setCrmCustomers(null);
			dep.setCrmFollows(null);
			dep.setCrmInvoices(null);
			dep.setCrmOrdersForCDepId(null);
			dep.setCrmOrdersForFDepId(null);
			dep.setCrmReceives(null);
			dep.setHrEmployees(null);
			dep.setHrPosts(null);
			dep.setPublicChatRooms(null);
			dep.setPublicNewses(null);
			dep.setPublicNotices(null);
			dep.setParamSysparamByDIconId(null);
			dep.setParamSysparamByDTypeId(null);
		}
	}

	public static void jsonClearEmps(List<HrEmployee> employees) {
		for (HrEmployee hrEmployee : employees) {
			clearEmployee(hrEmployee);
		}
	}
	
	public static void clearEmployee(HrEmployee hrEmployee){
		hrEmployee.setCrmContacts(null);
		hrEmployee.setCrmContractsForCEmpid(null);
		hrEmployee.setCrmContractsForCreaterId(null);
		hrEmployee.setCrmContractsForOurContractorId(null);
		hrEmployee.setCrmCustomersForCreateId(null);
		hrEmployee.setCrmCustomersForEmployeeId(null);
		hrEmployee.setCrmFollows(null);
		hrEmployee.setCrmInvoicesForCEmpid(null);
		hrEmployee.setCrmInvoicesForCreateId(null);
		hrEmployee.setCrmOrdersForCEmpId(null);
		hrEmployee.setCrmOrdersForCreateId(null);
		hrEmployee.setCrmOrdersForFEmpId(null);
		hrEmployee.setCrmProductCategories(null);
		hrEmployee.setCrmReceivesForCEmpid(null);
		hrEmployee.setCrmReceivesForCreateId(null);
		hrEmployee.setHrDepartment(null);
		hrEmployee.setHrPosition(null);
		hrEmployee.setHrPositions(null);
		hrEmployee.setHrPost(null);
		hrEmployee.setHrPosts(null);
		hrEmployee.setMailFlowsForReceiveId(null);
		hrEmployee.setMailFlowsForSenderId(null);
		hrEmployee.setParamCitiesForCreateId(null);
		hrEmployee.setParamCitiesForUpdateId(null);
		hrEmployee.setParamSysparamsForCreateId(null);
		hrEmployee.setParamSysparamsForUpdateId(null);
		hrEmployee.setPersonalNoteses(null);
		hrEmployee.setPublicChatRooms(null);
		hrEmployee.setPublicNewses(null);
		hrEmployee.setPublicNotices(null);
		hrEmployee.setSysLogins(null);
		hrEmployee.setSysRolesForCreateid(null);
		hrEmployee.setSysRolesForUpdateid(null);
		hrEmployee.setPersonalEvents(null);
		hrEmployee.setParamSysparam(null);
		hrEmployee.setSysRole(null);
	}
	
	public static void jsonClearCitys(List<ParamCity> cities) {
		for (ParamCity city : cities) {
			city.setCrmCustomersForCityId(null);
			city.setCrmCustomersForProvincesId(null);
			city.setHrEmployeeByCreateId(null);
			city.setHrEmployeeByUpdateId(null);
		}
	}

	public static void jsonClearSysParams(List<ParamSysparam> sysparams) {
		for (ParamSysparam psys : sysparams) {
			clearSysParams(psys);
		}
	}

	public static void clearSysParams(ParamSysparam psys) {
		psys.setCrmCustomersForCustomerlevelId(null);
		psys.setCrmCustomersForCustomersourceId(null);
		psys.setCrmCustomersForCustomertypeId(null);
		psys.setCrmFollows(null);
		psys.setCrmInvoices(null);
		psys.setCrmOrdersForOrderStatusId(null);
		psys.setCrmOrdersForPayTypeId(null);
		psys.setCrmReceivesForReceiveDirectionId(null);
		psys.setCrmReceivesForReceiveTypeId(null);
		psys.setHrEmployeeByCreateId(null);
		psys.setHrEmployeeByUpdateId(null);
		psys.setHrEmployees(null);
		psys.setHrPositions(null);
		psys.setMailFlowsForImportant(null);
		psys.setMailFlowsForReciveTypeId(null);
		psys.setCrmCustomersForCustomerindustryId(null);
		psys.setHrDepartmentsForDIconId(null);
		psys.setHrDepartmentsForDTypeId(null);
		psys.setParamSysparamType(null);
	}

	public static void jsonClearCategories(List<CrmProductCategory> categories) {
		for (CrmProductCategory category : categories) {
			category.setCrmProducts(null);
			category.setHrEmployee(null);
		}

	}

	public static void jsonClearCustomer(List<CrmCustomer> customers) {		
		for (CrmCustomer customer : customers) {
			customer.setCrmContacts(null);
			customer.setCrmContracts(null);
			customer.setCrmFollows(null);
			customer.setCrmInvoices(null);
			customer.setCrmOrders(null);
			customer.setCrmReceives(null);
			customer.setHrDepartment(null);
			customer.setHrEmployeeByCreateId(null);
			customer.setHrEmployeeByEmployeeId(null);
			customer.setParamCityByCityId(null);
			customer.setParamCityByProvincesId(null);
			customer.setParamSysparamByCustomerindustryId(null);
			customer.setParamSysparamByCustomerlevelId(null);
			customer.setParamSysparamByCustomersourceId(null);
			customer.setParamSysparamByCustomertypeId(null);
		}
	}

	public static void jsonClearProduct(List<CrmProduct> products) {
		for (CrmProduct prod : products) {
			prod.setCrmOrderDetailses(null);
			prod.setCrmProductCategory(null);
		}
	}
	
	public static void ClearObjRef(Object obj){
		Class t=obj.getClass();
		Map<String, Method> mms=new HashMap<String, Method>();
		for(Method m:t.getMethods()){
			mms.put(m.getName(), m);
		}
		for(Method m:t.getMethods()){
			String name=m.getName();//获取方法名
			if(name.startsWith("get")){
				String retName= m.getReturnType().getName();//获取方法返回类型
				if(retName.startsWith("java.util.Set") || retName.startsWith("com.crm.info")){
					//清除 getName-->setName
					name="s"+name.substring(1);
					try {
						if(mms.containsKey(name)){
							Method setM= mms.get(name);//获取Set方法
							setM.invoke(obj,new Object[]{null});//obj.setXXX(null);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
	}
	
	public static void jsonClearPosition(List<HrPosition> positions) {
		for (HrPosition position : positions) {
			position.setHrEmployee(null);
			position.setHrEmployees(null);
			position.setParamSysparam(null);
			position.setHrPosts(null);
		}
		
	}

	public static void jsonClearMailFlows(List<MailFlow> mailFlows) {
		for (MailFlow mailFlow : mailFlows) {
			clearEmployee(mailFlow.getHrEmployeeByReceiveId());
			clearEmployee(mailFlow.getHrEmployeeBySenderId());
			if (mailFlow.getParamSysparamByImportant()!=null) {
				clearSysParams(mailFlow.getParamSysparamByImportant());
			}
			if (mailFlow.getParamSysparamByReciveTypeId()!=null) {
				clearSysParams(mailFlow.getParamSysparamByReciveTypeId());
			}
		}
	}

	public static void jsonClearPersonalEvent(List<PersonalEvent> events) {
		for (PersonalEvent event : events) {
			event.setHrEmployee(null);
		}
	}

	public static void jsonClearPost(List<HrPost> list) {
		for (HrPost h : list) {
			h.setHrDepartment(null);
			h.setHrEmployee(null);
			h.setHrEmployees(null);
			h.setHrPosition(null);
		}
	}

	public static void jsonClearRole(List<SysRole> roles) {
		for (SysRole role : roles) {
			role.setHrEmployeeByCreateid(null);
			role.setHrEmployeeByUpdateid(null);
			role.setHrEmployees(null);
		}
	}
}
