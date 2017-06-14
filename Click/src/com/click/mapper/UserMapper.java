package com.click.mapper;


import java.util.List;

import com.click.entity.User;

public interface UserMapper {
  
	public User signin(String phone, String password);
	
	public User selectByPhone(String phone);
	
	public boolean signup(User user);
	
	public void updateByPK(User user);
	
	public List<User> findAll();
	
	public List<User> findCarmemanByName(User user);
	
	public List<User> findCustomerByName(User user);
	
	public List<User> findAllCustomer();
	
	public List<User> findAllCarmeman();
	
	public int picin(User user);
	
	public int configPasswd(User user);
	
	public int modPasswd(User user);
	
}