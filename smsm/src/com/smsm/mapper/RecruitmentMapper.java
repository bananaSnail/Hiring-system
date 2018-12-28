package com.smsm.mapper;

import com.smsm.pojo.Recruitment;
import com.smsm.pojo.RecruitmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RecruitmentMapper {
    long countByExample(RecruitmentExample example);

    int deleteByExample(RecruitmentExample example);

    int insert(Recruitment record);

    int insertSelective(Recruitment record);

    List<Recruitment> selectByExample(RecruitmentExample example);

    int updateByExampleSelective(@Param("record") Recruitment record, @Param("example") RecruitmentExample example);

    int updateByExample(@Param("record") Recruitment record, @Param("example") RecruitmentExample example);
}