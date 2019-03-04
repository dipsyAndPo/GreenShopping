package com.cn.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.interceptor.SessionAware;

import com.cn.pojo.Shoppingcar;
import com.cn.pojo.Users;

public class ShoppingCarAction extends Action5_Result implements SessionAware{
	private Map session;
	
	//添加购物车
	@Action("AddShoppingCar")
	public String AddShoppingCar() {
		if(session.get("users")==null) {
			return "error";
		}
		users=(Users) session.get("users");
		//传入用户Id和购物车id
		shoppingCarService.addShoppingCar(commditys.getCommdityId(), users.getUserId());
		return "listShoppingCar";
	}
	
	//查询所有购物车
	@Action("findAllShoppingCar")
	public String findAllShoppingCar() {
		if(session.get("users")==null) {
			return "error";
		}
		users=(Users) session.get("users");
		//传入用户id查询用户下的购物车数据
		shoppingCarList = shoppingCarService.findAll(users.getUserId());
		return "shoppingCarJsp";
	}
	
	//删除购物车
	@Action("deleteShoppingCar")
	public String deleteShoppingCar() {
		if(session.get("users")==null) {
			return "error";
		}
		shoppingCarService.deleteShoppingCar(shoppingCar.getShoppingCarId());
		return "listShoppingCar";
	}
	
	
	//购物车增加减少数量
	@Action("editShoppingCarNumber")
	public String editShoppingCarNumber() {
		if(session.get("users")==null) {
			return "error";
		}
		int num=shoppingCarService.editShoppingCar(shoppingCar.getShoppingCarId(), jiajian);
		return ""+num;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		session=arg0;
	}
	

	
	
}
