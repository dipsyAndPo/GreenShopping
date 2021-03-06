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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Users generated by hbm2java
 */
@Entity
@Table(name = "users", catalog = "shop")
public class Users implements java.io.Serializable {

	private Integer userId;
	private String userAccount;
	private String userPassword;
	private Set<Access> accesses = new HashSet<Access>(0);
	private Set<Orderitems> orderitemses = new HashSet<Orderitems>(0);
	private Set<Shoppingcar> shoppingcars = new HashSet<Shoppingcar>(0);
	private Set<Orders> orderses = new HashSet<Orders>(0);

	public Users() {
	}

	public Users(String userAccount, String userPassword) {
		this.userAccount = userAccount;
		this.userPassword = userPassword;
	}

	public Users(String userAccount, String userPassword, Set<Access> accesses, Set<Orderitems> orderitemses,
			Set<Shoppingcar> shoppingcars, Set<Orders> orderses) {
		this.userAccount = userAccount;
		this.userPassword = userPassword;
		this.accesses = accesses;
		this.orderitemses = orderitemses;
		this.shoppingcars = shoppingcars;
		this.orderses = orderses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "userId", unique = true, nullable = false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "userAccount", nullable = false)
	public String getUserAccount() {
		return this.userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	@Column(name = "userPassword", nullable = false)
	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "users")
	public Set<Access> getAccesses() {
		return this.accesses;
	}

	public void setAccesses(Set<Access> accesses) {
		this.accesses = accesses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "users")
	public Set<Orderitems> getOrderitemses() {
		return this.orderitemses;
	}

	public void setOrderitemses(Set<Orderitems> orderitemses) {
		this.orderitemses = orderitemses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "users")
	public Set<Shoppingcar> getShoppingcars() {
		return this.shoppingcars;
	}

	public void setShoppingcars(Set<Shoppingcar> shoppingcars) {
		this.shoppingcars = shoppingcars;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "users")
	public Set<Orders> getOrderses() {
		return this.orderses;
	}

	public void setOrderses(Set<Orders> orderses) {
		this.orderses = orderses;
	}

}
