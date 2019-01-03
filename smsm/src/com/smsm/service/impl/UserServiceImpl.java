package com.smsm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smsm.mapper.UserMapper;
import com.smsm.pojo.User;
import com.smsm.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	public User findUserInfo(String userPhone){
		return userMapper.selectByPrimaryKey1(userPhone);
	}
	
	public int insertUserInfo(User user){
		return userMapper.insertSelective(user);
	}
}
