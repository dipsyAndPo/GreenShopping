package com.cn.service;

import java.util.List;

import com.cn.pojo.Commditys;

public interface CommdityService {
	List<Commditys> blurSelect(String blurString);
	List<Commditys> SelectCommditysByTypeID(int  commdiTypeId);
	List<Commditys> SelectAllCommditys();
	List<Commditys> commdityfindAll();
	Commditys selectByCommditysId(int CommdityId);
}
