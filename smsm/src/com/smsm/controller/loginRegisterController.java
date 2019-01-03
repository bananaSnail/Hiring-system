	package com.smsm.controller;

	import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

	import java.util.HashMap;
	import java.util.List;
	import java.util.Map;

	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpSession;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.ResponseBody;
	import org.springframework.web.bind.annotation.SessionAttributes;

	import com.smsm.mapper.UserMapper;
	import com.smsm.pojo.User;
	import com.smsm.pojo.UserExample;
	import com.smsm.pojo.UserExample.Criteria;
	import com.smsm.service.UserService;


	@Controller
	@RequestMapping(value = "login",produces = "application/json;charset=UTF-8;")
	public class loginRegisterController {

		@Autowired
		private UserService userService;
		
		@RequestMapping("login")
		@ResponseBody
		public Map<String, Object> login(User user, HttpServletRequest request){
			HttpSession session = request.getSession();
			Map<String, Object> map = new HashMap<String, Object>();
			Integer state = Integer.valueOf(1000);
			Integer status = Integer.valueOf(-1);	//登录状态  1：正常； 2：用户不存在
			Integer pwdValue = Integer.valueOf(-1);	//密码正误-1：初始值； 1：密码正确； 0：密码错误
			try{
				User user1 = userService.findUserInfo(user.getUserPhone());
				if(user1 != null){	//用户存在
					status = Integer.valueOf(1);
					if(user.getUserPwd().equals(user1.getUserPwd())){	//前台密码和数据库密码一样
						pwdValue = Integer.valueOf(1);
						map.put("pwdValue", pwdValue);
					}else{	//密码错误
						pwdValue = Integer.valueOf(0);
						map.put("pwdValue", pwdValue);
					}
					map.put("status", status);
				}else{	//用户不存在
					status = Integer.valueOf(2);
					map.put("status", status);
					map.put("state", state);
					map.put("pwdValue", pwdValue);
					return map;
				}
				map.put("user1", user1);
				session.setAttribute("user1", user1);
			}catch(Exception e){
				e.printStackTrace();
				map.put("msg", "执行sql报错");
				state = Integer.valueOf(2000);
			}
			map.put("state", state);
			return map;

		}
		
		@RequestMapping("register")
		@ResponseBody
		public Map<String, Object> register(User user){
			Map<String, Object> map = new HashMap<String, Object>();
			Integer state = Integer.valueOf(1000);
			Integer status = Integer.valueOf(-1);	
			try{
				User user1 = userService.findUserInfo(user.getUserPhone());
				if(user1 != null){	//用户存在
					status = Integer.valueOf(1);
					map.put("status", status);
					map.put("state", state);
					return map;
				}else{	//用户不存在
					int row = userService.insertUserInfo(user);
					if(row != 0){	//创建成功
						status = Integer.valueOf(3);
					}else{	//创建失败
						status = Integer.valueOf(4);
					}
					map.put("status", status);
				}
				
			}catch(Exception e){
				e.printStackTrace();
				map.put("msg", "执行sql报错");
				state = Integer.valueOf(2000);
			}
			map.put("state", state);
			return map;

		}
		
		
	}

