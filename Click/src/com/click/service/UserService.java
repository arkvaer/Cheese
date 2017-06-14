package com.click.service;

import java.util.List;

import com.click.entity.User;

public interface UserService {


	public User signin(String phone, String password);
	
	public User selectByPhone(String phone);
	
	public boolean signup(User user);
	
	public void update(User user);
	
	public List<User> findAll();
	
	public List<User> findCarmemanByName(User user);
	
	public List<User> findCustomerByName(User user);
	
	public List<User> findAllCustomer();

	public List<User> findAllCarmeman();
	
	public int pickin(User user);
	
	public int modPasswd(User user);
	
	public int configPasswd(User user);
	
}
