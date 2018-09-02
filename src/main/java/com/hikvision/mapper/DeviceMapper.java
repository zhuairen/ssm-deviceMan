package com.hikvision.mapper;

import com.hikvision.bean.Device;
import com.hikvision.bean.DeviceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DeviceMapper {
    long countByExample(DeviceExample example);

    int deleteByExample(DeviceExample example);

    int deleteByPrimaryKey(Integer devId);

    int insert(Device record);

    int insertSelective(Device record);

    List<Device> selectByExampleWithBLOBs(DeviceExample example);

    List<Device> selectByExample(DeviceExample example);

    Device selectByPrimaryKey(Integer devId);

    int updateByExampleSelective(@Param("record") Device record, @Param("example") DeviceExample example);

    int updateByExampleWithBLOBs(@Param("record") Device record, @Param("example") DeviceExample example);

    int updateByExample(@Param("record") Device record, @Param("example") DeviceExample example);

    int updateByPrimaryKeySelective(Device record);

    int updateByPrimaryKeyWithBLOBs(Device record);

    int updateByPrimaryKey(Device record);

	List<Device> searchDevEcharts();

	List<Device> selectOtherDev();

	int delDevice(List<Integer> del_ids);

}