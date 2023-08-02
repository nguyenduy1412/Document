package com.mosoftvn.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mosoftvn.entities.User_Role;

@Repository
public class User_RoleDAOImp implements User_RoleDAO{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<User_Role> getAll() {
		// TODO Auto-generated method stub\
		Session session=sessionFactory.openSession();
		try {
			List list=session.createQuery("from User_Role").list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			session.close();
		}
		return null;
	}

}
