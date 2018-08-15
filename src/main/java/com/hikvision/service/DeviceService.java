package com.hikvision.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hikvision.bean.Device;
import com.hikvision.bean.Msg;
import com.hikvision.mapper.DeviceMapper;


@Service
public class DeviceService {

	@Autowired
	DeviceMapper deviceMapper;
	
	public Msg addDevice(Device device) {
		
		deviceMapper.insertSelective(device);
		return Msg.success();
	}

	public List<Device> queryAll() {
		List<Device> list = deviceMapper.selectByExample(null);
		return list;
	}

	public void delDev(int id) {
		deviceMapper.deleteByPrimaryKey(id);
		
	}

	public Device getDev(int id) {
		
		return deviceMapper.selectByPrimaryKey(id);
	}

	//更新设备
	public int updateDev(Device device) {
		
		
		return deviceMapper.updateByPrimaryKeySelective(device);
	}

	public List<Device> searchDevEcharts() {
		
		return deviceMapper.searchDevEcharts();
	}

	public List<Device> selectOtherDev() {
		// TODO Auto-generated method stub
		return deviceMapper.selectOtherDev();
	}


}
