package com.smsm.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smsm.mapper.ResumeMapper;
import com.smsm.pojo.Resume;
import com.smsm.service.ResumeService;

@Controller
@RequestMapping(value="login")
public class userInfoController {

	@Autowired
	private ResumeService resumeService;
	
	//插入简历个人信息
	@RequestMapping(value="insertUserInfo")
	@ResponseBody
	public Map<String, Object> insertUserInfo(Resume resume) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		Integer state = Integer.valueOf(1000);
		try{
			int row = resumeService.insertUserInfo(resume);
			if(row != 1)
				state = Integer.valueOf(2000);		
		}catch(Exception e){
			e.printStackTrace();
			map.put("msg", "执行sql报错");
			state = Integer.valueOf(2000);
		}
		map.put("state", state);
		return map;
	}
	
	//更新简历个人信息
	@RequestMapping(value="updateUserInfo")
	@ResponseBody
	public Map<String, Object> updateUserInfo(Resume resume) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		Integer state = Integer.valueOf(1000);
		try{
			int row = resumeService.updateUserInfo(resume);
			if(row != 1)
				state = Integer.valueOf(2000);		
		}catch(Exception e){
			e.printStackTrace();
			map.put("msg", "执行sql报错");
			state = Integer.valueOf(2000);
		}
		map.put("state", state);
		return map;
	}
}
