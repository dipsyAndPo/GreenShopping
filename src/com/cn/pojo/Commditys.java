package com.cn.pojo;
// Generated 2018-11-14 14:43:38 by Hibernate Tools 4.0.1.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.OrderBy;

/**
 * Commditys generated by hbm2java
 */
@Entity
@Table(name = "commditys", catalog = "shop")
public class Commditys implements java.io.Serializable {

	private Integer commdityId;
	private Commditype commditype;
	private String commdityTitle;
	private Float commdityPrice;
	private String commdityContext;
	private Set<Access> accesses = new HashSet<Access>(0);
	private Set<Orderitems> orderitemses = new HashSet<Orderitems>(0);
	private Set<Shoppingcar> shoppingcars = new HashSet<Shoppingcar>(0);
	private Set<Images> imageses = new HashSet<Images>(0);

	public Commditys() {
	}

	public Commditys(Commditype commditype, String commdityTitle, Float commdityPrice, String commdityContext,
			Set<Access> accesses, Set<Orderitems> orderitemses, Set<Shoppingcar> shoppingcars, Set<Images> imageses) {
		this.commditype = commditype;
		this.commdityTitle = commdityTitle;
		this.commdityPrice = commdityPrice;
		this.commdityContext = commdityContext;
		this.accesses = accesses;
		this.orderitemses = orderitemses;
		this.shoppingcars = shoppingcars;
		this.imageses = imageses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "commdityId", unique = true, nullable = false)
	public Integer getCommdityId() {
		return this.commdityId;
	}

	public void setCommdityId(Integer commdityId) {
		this.commdityId = commdityId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "commdiTypeId")
	public Commditype getCommditype() {
		return this.commditype;
	}

	public void setCommditype(Commditype commditype) {
		this.commditype = commditype;
	}

	@Column(name = "commdityTitle")
	public String getCommdityTitle() {
		return this.commdityTitle;
	}

	public void setCommdityTitle(String commdityTitle) {
		this.commdityTitle = commdityTitle;
	}

	@Column(name = "commdityPrice", precision = 11)
	public Float getCommdityPrice() {
		return this.commdityPrice;
	}

	public void setCommdityPrice(Float commdityPrice) {
		this.commdityPrice = commdityPrice;
	}

	@Column(name = "commdityContext")
	public String getCommdityContext() {
		return this.commdityContext;
	}

	public void setCommdityContext(String commdityContext) {
		this.commdityContext = commdityContext;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "commditys")
	public Set<Access> getAccesses() {
		return this.accesses;
	}

	public void setAccesses(Set<Access> accesses) {
		this.accesses = accesses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "commditys")
	public Set<Orderitems> getOrderitemses() {
		return this.orderitemses;
	}

	public void setOrderitemses(Set<Orderitems> orderitemses) {
		this.orderitemses = orderitemses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "commditys")
	public Set<Shoppingcar> getShoppingcars() {
		return this.shoppingcars;
	}

	public void setShoppingcars(Set<Shoppingcar> shoppingcars) {
		this.shoppingcars = shoppingcars;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "commditys")
	@OrderBy(clause = "imageId asc")  
	public Set<Images> getImageses() {
		return this.imageses;
	}

	public void setImageses(Set<Images> imageses) {
		this.imageses = imageses;
	}

}
