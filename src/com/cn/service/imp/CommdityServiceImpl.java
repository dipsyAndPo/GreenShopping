package com.cn.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.dao.impl.DAOImpl;
import com.cn.pojo.Commditys;
import com.cn.service.CommdityService;

@Service
public class CommdityServiceImpl implements CommdityService{

	@Autowired DAOImpl dao;
	
	
	@Override
	public List<Commditys> blurSelect(String blurString) {
		List<Commditys> find = dao.find("from Commditys where commdityTitle like '%"+blurString+"%'");
		return find;
	}

	@Override
	public List<Commditys> SelectCommditysByTypeID(int commdiTypeId) {
		List<Commditys> find = dao.find("from Commditys where commditype.commdiTypeId=?",commdiTypeId);
		return find;
	}

	@Override
	public List<Commditys> SelectAllCommditys() {
		List<Commditys> find = dao.find("from Commditys");
		return find;
	}

	@Override
	public List<Commditys> commdityfindAll() {
		List<Commditys> find = dao.find("from Commditys");
		return find;
	}

	@Override
	public Commditys selectByCommditysId(int CommdityId) {
		return dao.get(Commditys.class, CommdityId);
	}
}
