package com.cn.action;

import java.util.List;

import com.cn.pojo.*;
import com.opensymphony.xwork2.ActionSupport;

public class Action1_Pojo extends ActionSupport{
	protected Access access;
	protected Commditype commdiType;
	protected Commditys commditys;
	protected Images images;
	protected Orderitems orderItems;
	protected Orders orders;
	protected Shoppingcar shoppingCar;
	protected Users users;
	protected Integer commdityIds;

	protected List<Commditype> commditypeList;
	protected List<Shoppingcar> shoppingCarList;
	protected List<Orders> ordersList;
	protected List<Images> imagesList;
	protected List<Commditys> commditysList;
	
	
	public Access getAccess() {
		return access;
	}
	public void setAccess(Access access) {
		this.access = access;
	}
	public Commditype getCommdiType() {
		return commdiType;
	}
	public void setCommdiType(Commditype commdiType) {
		this.commdiType = commdiType;
	}
	public Commditys getCommditys() {
		return commditys;
	}
	
	public Integer getCommdityIds() {
		return commdityIds;
	}
	public void setCommdityIds(Integer commdityIds) {
		this.commdityIds = commdityIds;
	}
	public List<Commditype> getCommditypeList() {
		return commditypeList;
	}
	public void setCommditypeList(List<Commditype> commditypeList) {
		this.commditypeList = commditypeList;
	}
	public void setCommditys(Commditys commditys) {
		this.commditys = commditys;
	}
	public Images getImages() {
		return images;
	}
	public void setImages(Images images) {
		this.images = images;
	}
	public Orderitems getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(Orderitems orderItems) {
		this.orderItems = orderItems;
	}
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	public Shoppingcar getShoppingCar() {
		return shoppingCar;
	}
	public void setShoppingCar(Shoppingcar shoppingCar) {
		this.shoppingCar = shoppingCar;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public List<Shoppingcar> getShoppingCarList() {
		return shoppingCarList;
	}
	public void setShoppingCarList(List<Shoppingcar> shoppingCarList) {
		this.shoppingCarList = shoppingCarList;
	}
	public List<Orders> getOrdersList() {
		return ordersList;
	}
	public void setOrdersList(List<Orders> ordersList) {
		this.ordersList = ordersList;
	}
	public List<Images> getImagesList() {
		return imagesList;
	}
	public void setImagesList(List<Images> imagesList) {
		this.imagesList = imagesList;
	}
	public List<Commditys> getCommditysList() {
		return commditysList;
	}
	public void setCommditysList(List<Commditys> commditysList) {
		this.commditysList = commditysList;
	}
	
	
	
	
}

