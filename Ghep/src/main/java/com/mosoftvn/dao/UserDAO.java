package com.mosoftvn.dao;

import java.util.List;

import com.mosoftvn.entities.User;

public interface UserDAO {
	public User findByUserName(String username);
	public List<User> getAll();
}
