package com.mosoftvn.dao;

import com.mosoftvn.entities.User;

public interface UserDAO {
	public User findByUserName(String username);
}
