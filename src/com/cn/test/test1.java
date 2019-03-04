package com.cn.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cn.dao.impl.DAOImpl;
import com.cn.pojo.Access;
import com.cn.pojo.Commditype;
import com.cn.pojo.Commditys;
import com.cn.pojo.Images;
import com.cn.pojo.Shoppingcar;
import com.cn.service.CommdityService;
import com.cn.service.ShoppingcarService;
import com.sun.prism.Image;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class test1 {
	@Autowired DAOImpl dao;
	@Autowired ShoppingcarService sc;
	@Autowired CommdityService cs;
	
	@Test
	public void shoppingCar() {
		List<Commditype> find = (List<Commditype>)dao.find("from Commditype");
		for (Commditype c : find) {
			Set<Commditys> commdityses = c.getCommdityses();
			System.out.println(c.getCommdiTypeName());
			for (Commditys cc : commdityses) {
				System.out.println("  商品名称是"+cc.getCommdityTitle());
				Set<Images> imageses = cc.getImageses();
				for (Images i : imageses) {
					System.out.println("    此商品图片路径是"+i.getImageUrl());
				}
			}
		}
	}
	
	@Test
	public void suiji() {
		
		int oo=(int) (Math.random()*8000+1000);
		SimpleDateFormat df = new SimpleDateFormat("yyMMdd");
		String format = df.format(new Date())+String.valueOf(oo);
		long longg=Long.parseLong(format);
		int intt=Integer.parseInt(format);
		System.out.println(intt);
	}
	
	@Test
	public void aaac() {
		List<Images> find = dao.find("from Images ");
		for (Images images : find) {
		if(images.getImageType()==0) {
			dao.delete(images);
		}
		}
	}
	
	@Test
	public void java() {
		//设置主图 struts=0
		List<Commditys> find = dao.find("from Commditys where commdiTypeId=2");
		int i=0;
		for (Commditys commditys : find) {
			Set<Images> imageses = commditys.getImageses();
			Images Images1 = null;
			for (Images Imagess : imageses) {
				if(Imagess.getImageType()==0) {
					break;
				}
				if(Imagess.getImageType()==1) {
					Images1=Imagess;
					Images1.setImageType(0);
					Images1.setImageId(new Integer(0));
					break;
				}
			}
			if(Images1!=null) {
				System.out.println(Images1.getImageUrl());
				System.out.println(commditys.getCommdityTitle());
				dao.save(Images1);
				System.out.println(Images1.getCommditys().getCommdityTitle());
				i++;
			}
		}
		System.out.println(i);
	}
	
	
	@Test
	public void abab() {
		//测试有多少个没有图片的
		List<Commditys> find = dao.find("from Commditys ");
		int i=0;
		for (Commditys commditys : find) {
			Set<Images> imageses = commditys.getImageses();
			Images Images1 = null;
			for (Images Imagess : imageses) {
				if(Imagess.getImageType()==0) {
					i++;
				}
			}
		}
		System.out.println(i);
	}
	@Test
	public void aaavavv() {
		List<Commditys> selectCommditysByTypeID = cs.SelectCommditysByTypeID(2);
		for (Commditys commditys : selectCommditysByTypeID) {
			Set<Images> imageses = commditys.getImageses();
			for (Images iimg : imageses) {
				String imageUrl = iimg.getImageUrl();
				if(imageUrl.substring(0, 5).equals("/asse")) {
					imageUrl="http://www.carrefour.cn/"+imageUrl;
					System.out.println(imageUrl);
					iimg.setImageUrl(imageUrl);
					dao.update(iimg);
				}
			}
				
		}
	}
	
	@Test
	public void aaavvv() {
		
		List<Commditys> find = dao.find("from Commditys");
		int i=0,j=0;
		
		for (Commditys commditys : find) {
			System.out.println("这个商品下有"+commditys.getAccesses().size()+"个评价");
			j+=commditys.getAccesses().size();
			i++;
		}
		System.out.println("有"+i+"个商品");
		System.out.println("有"+j+"个评价");
	}
	
	@Test
	public void saaa() {
		List<Commditys> find = dao.find("from Commditys where commditype.commdiTypeId=?",1);
		for (Commditys commditys : find) {
			System.out.println("商品名称"+commditys.getCommdityTitle());
			Set<Images> imageses = commditys.getImageses();
			for (Images Imagess : imageses) {
				System.out.println("路径："+Imagess.getImageUrl());
			}
		}
	}
	@Test
	public void acacaca() {
		List<Commditype> find = dao.find("from Commditype");
		for (Commditype commditype : find) {
			System.out.println("商品分类："+commditype.getCommdiTypeName());
			Set<Commditys> commdityses = commditype.getCommdityses();
			for (Commditys aa : commdityses) {
				System.out.println ("     商品名称"+aa.getCommdityTitle());
			}
		}
	}
	
	@Test
	public void asdasd() {
		List<Commditys> find = dao.find("from Commditys where commditype.commdiTypeId=?",2);
		for (Commditys commditys : find) {
			if(commditys.getCommdityId()<=1542681942&&commditys.getCommdityId()>=1542681088) {
				Commditype commditype = dao.get(Commditype.class, 3);
				commditys.setCommditype(commditype);
				dao.update(commditys);
			}
			
		}
	}
	
}
