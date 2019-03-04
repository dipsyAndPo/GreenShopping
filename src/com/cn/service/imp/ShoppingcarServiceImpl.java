package com.cn.service.imp;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.dao.impl.DAOImpl;
import com.cn.pojo.Commditype;
import com.cn.pojo.Commditys;
import com.cn.pojo.Shoppingcar;
import com.cn.pojo.Users;
import com.cn.service.ShoppingcarService;

@Service
public class ShoppingcarServiceImpl implements ShoppingcarService {
	@Autowired DAOImpl dao;

	@Override
	public void addShoppingCar(int commdityId, int userId) {
		List<Shoppingcar> find = dao.find("from Shoppingcar where commditys.commdityId=? and users.userId=?",commdityId,userId);
		if(find.size()==0) {
			Commditys commditys = dao.get(Commditys.class, commdityId);
			Users users = dao.get(Users.class, userId);
			Shoppingcar shoppingCar=new Shoppingcar(commditys, users, 1);
			dao.save(shoppingCar);
		}else {
			 Shoppingcar shoppingcar = find.get(0);
			 Shoppingcar shoppingcar2 = dao.get(Shoppingcar.class, shoppingcar.getShoppingCarId());
			 shoppingcar2.setNumber(shoppingcar2.getNumber()+1);
			 dao.update(shoppingcar2);
		}
	}

	@Override
	public List<Shoppingcar> findAll(int userId) {
		List<Shoppingcar> find = (List<Shoppingcar>)dao.find("from Shoppingcar where userId=?",userId);
		return find;
	}

	@Override
	public void deleteShoppingCar(int shoppingCarId) {
		Shoppingcar shoppingcar = dao.get(Shoppingcar.class, shoppingCarId);
		dao.delete(shoppingcar);
	}

	@Override
	public int editShoppingCar(int shoppingCarId,int flag) {
		Shoppingcar shoppingcar = dao.get(Shoppingcar.class, shoppingCarId);
		Integer number = shoppingcar.getNumber();
		shoppingcar.setNumber(flag==0?++number:--number);
		dao.update(shoppingcar);
		return dao.get(Shoppingcar.class, shoppingCarId).getNumber();
	}

}
