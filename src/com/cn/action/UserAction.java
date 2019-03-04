package com.cn.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.SessionAware;

import com.cn.pojo.Users;



public class UserAction extends Action5_Result implements SessionAware{
	
	private Map session;
	@Action("login")
	public String userLogin() {
		users = userLoginSer.userLogin(users.getUserAccount(), users.getUserPassword());
		session.put("users",users);
		return "loginSuccess";
	}
	@Action("addUser")
	public String addUser() {
		userLoginSer.addUser(users);
		return "addSuccess";
	}
	@Action("userExit")
	public String exit() {
		session.put("users", null);
		return "exitSuccess";
	}
	@Action("getUserName")
	public String getUserName() {
		userState = userLoginSer.findUserName(users.getUserAccount());
		return "getUserNameSuccess";
	}
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session=session;
	}

}
