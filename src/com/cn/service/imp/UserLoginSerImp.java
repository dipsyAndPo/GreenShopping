package com.cn.service.imp;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.dao.impl.DAOImpl;
import com.cn.pojo.Users;
import com.cn.service.UserLoginSer;

@Service
public class UserLoginSerImp implements UserLoginSer{

	@Autowired
	private DAOImpl daoImp;
	
	@Override
	public Users userLogin(String name, String pwd) {
		 List<Users> list = daoImp.find("from Users where userAccount=? and userPassword=?", name,pwd);
		 return list.get(0);
	}
	@Override
	public void addUser(Users users) {
		daoImp.save(users);
	}
	
	public DAOImpl getDaoImp() {
		return daoImp;
	}
	public void setDaoImp(DAOImpl daoImp) {
		this.daoImp = daoImp;
	}
	@Override
	public Map<String, Object> findUserName(String name) {
		// TODO Auto-generated method stub
		List<Users> userList = daoImp.find("from Users where userAccount=?",name);
		Map<String, Object> userMap=new HashMap<>();
		if(userList.size()==0) {
			userMap.put("state", "noExist");
		}else {
			userMap.put("state","exist");
		}
		return userMap;
	}


}
