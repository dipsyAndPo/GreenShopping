package com.cn.service;



import java.util.Map;

import com.cn.pojo.Users;

public interface UserLoginSer {
	//用户登录
	public Users userLogin(String name,String pwd);
	//添加用户
	public void addUser(Users users);
	//查询用户名是否存在
	public Map<String, Object> findUserName(String name);

}
