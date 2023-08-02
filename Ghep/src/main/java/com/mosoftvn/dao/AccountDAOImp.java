package com.mosoftvn.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mosoftvn.entities.Account;
@Repository
public class AccountDAOImp implements AccountDAO{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<Account> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try {
			List list=session.createQuery("from Account").list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			session.close();
		}
		return null;
	}

}
