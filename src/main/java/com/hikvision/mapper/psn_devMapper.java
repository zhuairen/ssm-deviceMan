package com.hikvision.mapper;

import com.hikvision.bean.psn_dev;
import com.hikvision.bean.psn_devExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface psn_devMapper {
    long countByExample(psn_devExample example);

    int deleteByExample(psn_devExample example);

    int insert(psn_dev record);

    int insertSelective(psn_dev record);

    List<psn_dev> selectByExample(psn_devExample example);

    int updateByExampleSelective(@Param("record") psn_dev record, @Param("example") psn_devExample example);

    int updateByExample(@Param("record") psn_dev record, @Param("example") psn_devExample example);
}