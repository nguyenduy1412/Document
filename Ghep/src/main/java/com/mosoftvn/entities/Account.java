package com.mosoftvn.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="account")
public class Account {
	@Id
	@Column(name="accountId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer accountId;
	@Column(name="accountName")
	private String accountName;
	@Column(name="pass")
	private String pass;
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Account(Integer accountId, String accountName, String pass) {
		super();
		this.accountId = accountId;
		this.accountName = accountName;
		this.pass = pass;
	}
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Account [accountId=" + accountId + ", accountName=" + accountName + ", pass=" + pass + "]";
	}
	
}
