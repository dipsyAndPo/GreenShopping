package com.cn.service.imp;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.dao.impl.DAOImpl;
import com.cn.pojo.Commditys;
import com.cn.pojo.Orderitems;
import com.cn.pojo.Orders;
import com.cn.pojo.Shoppingcar;
import com.cn.pojo.Users;
import com.cn.service.OrderSer;

@Service
public class OrderSerImp implements OrderSer{
	@Autowired
	DAOImpl daoImp;
	@Override
	public List<Shoppingcar> findByShoppingCarId(int[] carId) {
		List<Shoppingcar> shopsList=new ArrayList<>();
		for (int i=0;i<carId.length;i++) {
		shopsList.add(daoImp.get(Shoppingcar.class, carId[i]));
		}
		return shopsList;
	}
	
	@Override
	public List<Shoppingcar> nowPay(int commdityId,int userId) {
		List<Shoppingcar> shopsList=new ArrayList<>();
		Commditys commditys = daoImp.get(Commditys.class, commdityId);
		Users user=daoImp.get(Users.class, userId);
		Shoppingcar shopp=new Shoppingcar(commditys, user, 1);
		shopsList.add(shopp);
		return shopsList;
	}
	

	@Override
	public void delShoppingCar(int[] carId) {
		// TODO Auto-generated method stub
		for(int i=0;i<carId.length;i++) {
			Shoppingcar shoppingcar = daoImp.get(Shoppingcar.class, carId[i]);
			daoImp.delete(shoppingcar);
		}
		
		
	}

	//创建订单
	@Override
	public void addOrder(Orders orders, int[] carId,int userId) {
		//1 存入个人信息，获取主键(orderId)
		//设置订单ID
	
		// ---获取随机数
		double d = Math.random();
		int d1=(int) (d*1+10);
		int d2=(int)(d*100+100);
		int d3=(int)(d*10+d1);
		int d4=(int)(d*20+d3);
		int orderId=(d1+d2+d3+d4);
		orders.setOrderId(orderId);
		orders.setStatus(0);
		orders.setUsers(daoImp.get(Users.class,userId));
		orders.setCreateDate(new Date());
		daoImp.save(orders);
		//2 根据carId[],  查询购物车表，商品id(commdityId)，用户id(userId),数量(number)  -------findByShoppingCarId方法
		for(int i=0;i<carId.length;i++) {
			Shoppingcar sc = daoImp.get(Shoppingcar.class, carId[i]);
			//3 orderId,商品id(commdityId),用户Id(userId),数量(number)存入orderitems表
			Orderitems orderitems=new Orderitems(orders, sc.getCommditys(), sc.getUsers(), sc.getNumber());
			daoImp.save(orderitems);
		}
		//4 delShoppingCar方法
		for(int i=0;i<carId.length;i++) {
			Shoppingcar shoppingcar = daoImp.get(Shoppingcar.class, carId[i]);
			daoImp.delete(shoppingcar);
		}
		
	}
	
	//支付，订单状态为已付款
	@Override
	public void paymentOrder(int orderId) {
		// TODO Auto-generated method stub
		Orders orders = daoImp.get(Orders.class, orderId);
		orders.setStatus(1);
		daoImp.update(orders);
	}
	
	//查询所有订单
	@Override
	public List<Orders> findAllOrders(int userId) {
		List<Orders> olist = daoImp.find("from Orders where users.userId=?",userId);
		return olist;
	}
	
	//通过ID查询总价格
	@Override
	public Orders findAllcountPrice(int orderId) {
		return daoImp.get(Orders.class, orderId);
	}
	
	//更新订单状态为已收货
	@Override
	public void updateOrdersStatus(int orderId) {
		Orders orders = daoImp.get(Orders.class, orderId);
		orders.setStatus(2);
		daoImp.update(orders);
		
	}

	public DAOImpl getDaoImp() {
		return daoImp;
	}

	public void setDaoImp(DAOImpl daoImp) {
		this.daoImp = daoImp;
	}




	


}
