package com.cn.action;

import java.util.Map;

public class Action3_Parameter extends Action2_Upload {
	//购物车主键数组ID
	protected int[] carId;
	//判断用户名是否存在
	protected Map<String, Object> userState;
	//模糊搜索字符串
	protected String blurString;
	//添加和相减购物车，临时变量 0是加1是减
	protected int jiajian;
	

	public Map<String, Object> getUserState() {
		return userState;
	}

	public void setUserState(Map<String, Object> userState) {
		this.userState = userState;
	}

	public int[] getCarId() {
		return carId;
	}

	public String getBlurString() {
		return blurString;
	}

	public void setBlurString(String blurString) {
		this.blurString = blurString;
	}

	public int getJiajian() {
		return jiajian;
	}

	public void setJiajian(int jiajian) {
		this.jiajian = jiajian;
	}

	public void setCarId(int[] carId) {
		this.carId = carId;
	}
	
}
