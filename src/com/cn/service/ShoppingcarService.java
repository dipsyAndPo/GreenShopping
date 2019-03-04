package com.cn.service;

import java.util.List;

import com.cn.pojo.Shoppingcar;

public interface ShoppingcarService {
	void addShoppingCar(int commdityId,int userId);//添加购物车
	List<Shoppingcar> findAll(int userId);//查询用户id下所有的购物车
	void deleteShoppingCar(int shoppingCarId);//删除购物车
	int editShoppingCar(int shoppingCarId,int flag);//购物车修改数量
}
