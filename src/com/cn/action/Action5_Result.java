package com.cn.action;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Namespace("/")
@ParentPackage("basicstruts")  
@Results(
		{
			//全局
			@Result(name="error",location="/denglu.jsp"),
			//登录action
			@Result(name="loginSuccess",type="redirect",location="/execute1"),
			@Result(name="exitSuccess",location="/denglu.jsp"),
			@Result(name="addSuccess",location="/denglu.jsp"),
			//订单action
			@Result(name="findByCarIdsuccess",location="/ddqr.jsp"),
			@Result(name="addOrderSuccess",location="/payment.jsp"),
			@Result(name="paymentSuccess",type="redirect",location="/findAllOrders"),
			@Result(name="getUserNameSuccess",type="json",params= {"root","userState"}),
			@Result(name="fAOsuccess",location="/myorder.jsp"),
			@Result(name="success",location="/payment.jsp"),
			@Result(name="updateOrdersStatusSuccess",type="redirect",location="/findAllOrders"),
			
			/*购物车*/
			@Result(name="shoppingCarJsp", location="/ddtj.jsp"),
			@Result(name="listShoppingCar", type = "redirect", location="/findAllShoppingCar"),
			
			/*模糊查询和根据分类查询*/
			@Result(name="tplistJsp", location="/tplist.jsp"),
			
			/*主页详细信息*/
			@Result(name="indexJsp", location="/index.jsp"),
			
			/*商品详细信息*/
			@Result(name="cpxqJsp", location="/cpxq.jsp"),

			
		})
public class Action5_Result extends Action4_Service{

}
