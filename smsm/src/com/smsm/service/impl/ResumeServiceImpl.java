package com.smsm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smsm.mapper.ResumeMapper;
import com.smsm.pojo.Resume;
import com.smsm.service.ResumeService;

@Service
public class ResumeServiceImpl implements ResumeService{

	@Autowired
	private ResumeMapper resumeMapper;
	
	public int insertUserInfo(Resume resume){
		return resumeMapper.insert(resume);
	}
	
	public int updateUserInfo(Resume resume){
		return resumeMapper.updateByPrimaryKeySelective(resume);
	}
}
