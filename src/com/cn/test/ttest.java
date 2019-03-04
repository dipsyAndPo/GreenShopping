package com.cn.test;



import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cn.pojo.Orderitems;
import com.cn.pojo.Orders;
import com.cn.service.OrderSer;
import com.cn.service.UserLoginSer;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class ttest {
	@Autowired OrderSer userLoginSer;
	
	@Test
	public void test() {
		 List<Orders> orderItems = userLoginSer.findAllOrders(1);
		 for (Orders orders : orderItems) {
			 System.out.println("订单创建日期："+orders.getCreateDate());
			 Set<Orderitems> set = orders.getOrderitemses();
			 for(Orderitems sets:set) {
				 System.out.println("   商品名称："+sets.getCommditys().getCommdityTitle()+"商品数量："+sets.getNumber()+"商品价格："+sets.getCommditys().getCommdityPrice());
			 }
			 
		}
	}
	
	@Test
	public void yinliao() {
		int total=50,i=0;
		while(total>0) {
			total=total-3+1;
			i+=3;
		}
		System.out.println("还剩余"+total+"瓶饮料，一共喝了"+i+"瓶");
	}
	
	@Test
	public void yinliao1() {
	List<Integer> aa=new ArrayList<>();
	for (int i = 0; i < 10000; i++) {
		double d = Math.random();
		int d1=(int) (d*1+10);
		int d2=(int)(d*100+100);
		int d3=(int)(d*10+d1);
		int d4=(int)(d*20+d3);
		int orderId=(d1+d2+d3+d4);
		aa.add(new Integer(orderId));
	}
	
	
	for (int i = 0; i < aa.size(); i++) {
		for (int j = 0; j < aa.size()-i; j++) {
			if(aa.get(j)>aa.get(j+1)) {
				int temp=aa.get(j);
				aa.set(j,aa.get(j+1));
				aa.set(j+1, temp);
			}
		}
	}
	
	
	
	for (int i = 1; i < aa.size(); i++) {
		if(aa.get(i)==aa.get(i+1)||aa.get(i)==aa.get(i-1)) {
			System.out.println(aa.get(i));
		}
	}
	
	
	
	
	}
	
	@Test
	public void yinlia1o() {
		
		for (int total = 50,i=0; total >0; total=total-3+1) {
			i+=3;
			System.out.println("还剩余"+total+"瓶饮料，一共喝了"+i+"瓶");
		}
	}
	
	

	
			
}
