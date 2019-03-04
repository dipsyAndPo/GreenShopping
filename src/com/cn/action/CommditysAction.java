package com.cn.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;

import com.cn.pojo.Commditys;

public class CommditysAction extends Action5_Result{
	
	//模糊查询
	@Action("blurSelect")
	public String blurSelect() {
		commditysList = commdityService.blurSelect(blurString);
		return "tplistJsp";
	}
	
	//根据商品id查询，进入商品详情页
	@Action("SelectById")
	public String SelectById() {
		commditys=commdityService.selectByCommditysId(commditys.getCommdityId());
		return "cpxqJsp";
	}
	
	
	

}
