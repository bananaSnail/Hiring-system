package com.smsm.service;

import com.smsm.pojo.User;

public interface UserService {

	User findUserInfo(String userPhone);
	int insertUserInfo(User user);
}
