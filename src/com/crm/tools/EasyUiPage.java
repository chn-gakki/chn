package com.crm.tools;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.json.JSONException;
import org.apache.struts2.json.JSONUtil;

import com.crm.vobj.PageInfo;

public class EasyUiPage {
	
	public static PageInfo createEasyuiPage(String page,String rows){
		int pageSize,pageIndex;
		 //当前页  
		pageIndex = Integer.parseInt((page == null || page == "0") ? "1":page);  
        //每页显示条数  
        pageSize = Integer.parseInt((rows == null || rows == "0") ? "5":rows);  
        //每页的开始记录  第一页为1  第二页为number +1
        
		PageInfo pi=new PageInfo(pageSize, pageIndex);
		
		return pi;
	}
	
	public static String getJsonString(int recordcount,Object list){
		Map<String, Object> jsonMap = new HashMap<String, Object>();	//定义map  
		jsonMap.put("total", recordcount);	//total键 存放总记录数，必须的  	
        jsonMap.put("rows", list);//rows键 存放每页记录 list 	
        
		try {
			String result = JSONUtil.serialize(jsonMap);//格式化result
			return result;
		} catch (JSONException e) {
			e.printStackTrace();
			return "{}";
		}
	}
}
