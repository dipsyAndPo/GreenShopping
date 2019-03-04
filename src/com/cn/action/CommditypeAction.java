package com.cn.action;

import org.apache.struts2.convention.annotation.Action;



public class CommditypeAction extends Action5_Result {
	
	//进入主页
	@Action("execute1")
	public String execute() {
		commditypeList=commditypeService.findAll();
		return "indexJsp";
	}
	//根据分类id查询商品  没有传入id就查询所有
		@Action("findCommditysByTypeID")
		public String findCommditysByTypeID() {
			if(commdiType==null) {
				commditysList=commdityService.SelectAllCommditys();
			}else {
				commditysList=commdityService.SelectCommditysByTypeID(commdiType.getCommdiTypeId());
			}
			return "tplistJsp";
		}

}
