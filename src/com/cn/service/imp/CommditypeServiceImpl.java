package com.cn.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.dao.impl.DAOImpl;
import com.cn.pojo.Commditype;
import com.cn.pojo.Commditys;
import com.cn.service.CommditypeService;
@Service
public class CommditypeServiceImpl implements CommditypeService{
	@Autowired DAOImpl dao;
	@Override
	public List<Commditype> findAll() {
		List<Commditype> find =dao.find("from Commditype") ;
		return find;
	}
	@Override
	public List<Commditys> SelectById(Integer commdityIds) {
		List<Commditys> find = dao.find("from Commditys where commdityId="+commdityIds);
		return find;
	}

	@Override
	public List<Commditys> commdityfindAll() {
		List<Commditys> find = dao.find("from Commditys");
		return find;
	}

}
