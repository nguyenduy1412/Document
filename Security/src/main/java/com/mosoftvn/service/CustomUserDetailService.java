package com.mosoftvn.service;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.mosoftvn.dao.UserDAO;
import com.mosoftvn.entities.CustomUserDetails;
import com.mosoftvn.entities.User;
import com.mosoftvn.entities.User_Role;

@Service
public class CustomUserDetailService implements UserDetailsService {

	@Autowired 
	private UserDAO userDAO;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		return loadUser(username);
	}
	
	private UserDetails loadUser(String username) {
		User user = userDAO.findByUserName(username);
		
		
		if(user == null) {
			return null;
		}
		System.out.println(user.getPassWord());
		Collection<GrantedAuthority> grantedAuthoritySet = new HashSet();
		Set<User_Role> roles = user.getUserRoles();
		
		for (User_Role user_Role : roles) {
			grantedAuthoritySet.add(new SimpleGrantedAuthority(user_Role.getRole().getName()));
		}
		
		return new CustomUserDetails(grantedAuthoritySet, user.getEmail(), user.getFullName(), user.getPassWord(), user.getGender(), user.getAddress(), user.getTelephone(),user.getEnabled(), true, true, true);
	}
}
