package com.cn.service;

import java.util.List;

import com.cn.pojo.Orderitems;
import com.cn.pojo.Orders;
import com.cn.pojo.Shoppingcar;

public interface OrderSer {
	//查询选中的商品 int[] carId; 
	public List<Shoppingcar> findByShoppingCarId(int[] carId);
	
	//根据carId[] 删除shoppingcar表中的数据
	public void delShoppingCar(int[] carId);
	
	// 点击提交订单 (创建订单)
	public void addOrder(Orders orders, int[] carId,int userId);
	
	//修改订单状态为已付款
	public void paymentOrder(int orderId);
	
	//查询所有订单
	public List<Orders> findAllOrders(int userId);
	
	//通过订单ID查询总价格
	public Orders findAllcountPrice(int orderId);
	
	//更改订单状态为已收货
	public void updateOrdersStatus(int orderId);
	
	//立即购买
	public List<Shoppingcar> nowPay(int commdityId,int userId);
}
