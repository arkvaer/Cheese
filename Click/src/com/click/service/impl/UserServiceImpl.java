package com.click.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.click.entity.User;
import com.click.mapper.UserMapper;
import com.click.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;

	@Override
	public User signin(String phone, String password) {
		User user = userMapper.signin(phone, password);
		return user;
	}

	@Override
	public List<User> findAll() {
		List<User> users = userMapper.findAll();
		return users;
	}

	@Override
	public boolean signup(User user) {
		boolean flag = userMapper.signup(user);
		System.out.println(flag);
		return flag;
	}

	@Override
	public User selectByPhone(String phone) {
		User user = userMapper.selectByPhone(phone);
		return user;
	}

	@Override
	public void update(User user) {
		// 更新用户信息
		userMapper.updateByPK(user);
		
	}

	@Override
	public List<User> findCarmemanByName(User user) {
		List<User> users = userMapper.findCarmemanByName(user);
		return users;
	}

	@Override
	public List<User> findCustomerByName(User user) {
		List<User> users = userMapper.findCustomerByName(user);
		return users;
	}

	@Override
	public List<User> findAllCustomer() {
		List<User> customers = userMapper.findAllCustomer();
		
		return customers;
	}

	@Override
	public List<User> findAllCarmeman() {
		List<User> carmemans = userMapper.findAllCarmeman();
		
		return carmemans;
	}

	@Override
	public int pickin(User user) {
		int i = userMapper.picin(user);
		return i;
	}

	@Override
	public int modPasswd(User user) {
		int i = userMapper.modPasswd(user);
		return i;
	}

	@Override
	public int configPasswd(User user) {
		int i = userMapper.configPasswd(user);
		return i;
	}
	
	

}
