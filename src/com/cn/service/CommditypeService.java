package com.cn.service;

import java.util.List;

import com.cn.pojo.Commditype;
import com.cn.pojo.Commditys;

public interface CommditypeService {
	List<Commditype> findAll();
	List<Commditys> SelectById(Integer commdityIds);
	List<Commditys> commdityfindAll();

}
