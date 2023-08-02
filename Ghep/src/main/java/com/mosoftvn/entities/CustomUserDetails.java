package com.mosoftvn.entities;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CustomUserDetails implements UserDetails {

	private Collection<? extends GrantedAuthority> authorities;
	private String email;
	private String fullName;
	private String password;
	private Boolean gender;
	private String address;
	private String telephone;
	private Boolean enabled;
	private Boolean accountNonExpired;
	private Boolean accountNonLocked;
	private Boolean credentialsNonExpired;
	
	public CustomUserDetails() {
		// TODO Auto-generated constructor stub
	}
	
	
	public CustomUserDetails(Collection<? extends GrantedAuthority> authorities, String email, String fullName,
			String password, Boolean gender, String address, String telephone, Boolean enabled,
			Boolean accountNonExpired, Boolean accountNonLocked, Boolean credentialsNonExpired) {
		super();
		this.authorities = authorities;
		this.email = email;
		this.fullName = fullName;
		this.password = password;
		this.gender = gender;
		this.address = address;
		this.telephone = telephone;
		this.enabled = enabled;
		this.accountNonExpired = accountNonExpired;
		this.accountNonLocked = accountNonLocked;
		this.credentialsNonExpired = credentialsNonExpired;
	}


	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return fullName;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return accountNonExpired;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return accountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return credentialsNonExpired;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return enabled;
	}

}
