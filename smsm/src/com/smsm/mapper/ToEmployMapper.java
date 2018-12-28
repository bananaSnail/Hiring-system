package com.smsm.mapper;

import com.smsm.pojo.ToEmploy;
import com.smsm.pojo.ToEmployExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ToEmployMapper {
    long countByExample(ToEmployExample example);

    int deleteByExample(ToEmployExample example);

    int insert(ToEmploy record);

    int insertSelective(ToEmploy record);

    List<ToEmploy> selectByExample(ToEmployExample example);

    int updateByExampleSelective(@Param("record") ToEmploy record, @Param("example") ToEmployExample example);

    int updateByExample(@Param("record") ToEmploy record, @Param("example") ToEmployExample example);
}