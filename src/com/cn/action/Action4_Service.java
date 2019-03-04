package com.cn.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.cn.service.CommdityService;
import com.cn.service.CommditypeService;
import com.cn.service.OrderSer;
import com.cn.service.ShoppingcarService;
import com.cn.service.UserLoginSer;


//’‚¿ÔÃÌº”service
public class Action4_Service extends Action3_Parameter{
	@Autowired UserLoginSer userLoginSer;
	@Autowired OrderSer orderSer;
	@Autowired CommditypeService commditypeService;
	@Autowired CommdityService commdityService;
	@Autowired ShoppingcarService shoppingCarService;

}
