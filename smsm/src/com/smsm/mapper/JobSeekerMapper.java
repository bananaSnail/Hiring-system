package com.smsm.mapper;

import com.smsm.pojo.JobSeeker;
import com.smsm.pojo.JobSeekerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface JobSeekerMapper {
    long countByExample(JobSeekerExample example);

    int deleteByExample(JobSeekerExample example);

    int deleteByPrimaryKey(String jobSeekerId);

    int insert(JobSeeker record);

    int insertSelective(JobSeeker record);

    List<JobSeeker> selectByExample(JobSeekerExample example);

    JobSeeker selectByPrimaryKey(String jobSeekerId);

    int updateByExampleSelective(@Param("record") JobSeeker record, @Param("example") JobSeekerExample example);

    int updateByExample(@Param("record") JobSeeker record, @Param("example") JobSeekerExample example);

    int updateByPrimaryKeySelective(JobSeeker record);

    int updateByPrimaryKey(JobSeeker record);
}