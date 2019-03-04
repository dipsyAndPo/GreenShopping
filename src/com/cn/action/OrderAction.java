package com.cn.action;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.interceptor.SessionAware;

import com.cn.pojo.Orderitems;
import com.cn.pojo.Orders;
import com.cn.pojo.Users;


public class OrderAction extends Action5_Result implements SessionAware{
	private Map session;
	
	
	//立即订购
		@Action("nowPay")
		public String nowPay() {
			if(session.get("users")==null) {
				return "error";
			}
			//添加到购物车,然后提交订单
			users=(Users) session.get("users");
			shoppingCarList = orderSer.nowPay(commditys.getCommdityId(),users.getUserId());
			return "findByCarIdsuccess";
			
		}
	
	//查询选中的商品 int[] carId; 
	@Action("findByShoppingCarId")
	public String findByShoppingCarId() throws IOException {
		if(session.get("users")==null) {
			return "error";
		}
			shoppingCarList = orderSer.findByShoppingCarId(carId);
			return "findByCarIdsuccess";
	}
	//创建订单
	@Action("addOrder")
	public String addOrder() throws IOException {
		users = (Users) session.get("users");
		if(users==null) {
			return "error";
			}
			int userId=users.getUserId();
			orderSer.addOrder(orders, carId, userId);
			return "addOrderSuccess";
	}
	
	//修改订单为已付款
	@Action("paymentOrder")
	public String paymentOrder() {
		if(session.get("users")==null) {
			return "error";
		}
		System.out.println(orders.getOrderId());
		orderSer.paymentOrder(orders.getOrderId());
		System.out.println("A");
		return "paymentSuccess";
	}
	
	//查询所有订单
	@Action("findAllOrders")
	public String findAllOrderitems() {
		users = (Users) session.get("users");
		if(users==null) {
			return "error";
		}
		ordersList = orderSer.findAllOrders(users.getUserId());
		return "fAOsuccess";
	}
	
	//通过ID查询总价格
	@Action("findcountPriceById")
	public String findcountPriceById() {
		if(session.get("users")==null) {
			return "error";
		}
		orders = orderSer.findAllcountPrice(orders.getOrderId());
		return "success";
	}
	
	//修改订单状态为已收货
	@Action("updateOrdersStatus")
	public String updateOrdersStatus() {
		if(session.get("users")==null) {
			return "error";
		}
		//向jsp页面弹出提示框
		orderSer.updateOrdersStatus(orders.getOrderId());
		return "updateOrdersStatusSuccess";
	}
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session=session;
	}

}
