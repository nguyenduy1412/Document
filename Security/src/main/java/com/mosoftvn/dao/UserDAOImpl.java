package com.mosoftvn.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mosoftvn.entities.User;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired 
	private SessionFactory sessionFactory;
	@Override
	public User findByUserName(String username) {
		Session session = sessionFactory.openSession();
		try {
			User user = (User) session.createQuery("from User where userName = :userName").setParameter("userName", username).uniqueResult();
			return user;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return null;
	}

}
