package com.hikvision.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hikvision.bean.Device;
import com.hikvision.bean.Msg;
import com.hikvision.mapper.DeviceMapper;
import com.hikvision.service.DeviceService;

@Controller
public class DeviceController {

	@Autowired
	DeviceService deviceService;
	//增加设备
	@RequestMapping(value="/addDevice",method=RequestMethod.POST)
	@ResponseBody
	public Msg addDevice(Device device) {
		deviceService.addDevice(device);
		return Msg.success();
	}
	
	@GetMapping(value="/initDev")
	@ResponseBody
	public Msg initDev(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 10);
		List<Device> devices = deviceService.queryAll();
		PageInfo page = new PageInfo(devices, 10);
		return Msg.success().add("pageInfo", page);
	}
	
	@DeleteMapping(value="/delDev/{id}")
	@ResponseBody
	public Msg delDev(int id) {
				
		deviceService.delDev(id);
		return Msg.success();
	}
	
	@PostMapping("/getDev")
	@ResponseBody
	public Msg getDev(@RequestParam(value = "id") Integer id) {
		//Device device1 = new Device();
		Device device = deviceService.getDev(id);
		return Msg.success().add("data", device);
	}
	
	//修改设备信息
	@RequestMapping(value="/updateDev/{devId}",method=RequestMethod.PUT)
	@ResponseBody
	public Msg updateDev(Device device,HttpServletRequest request) {
		//Device device1 = new Device();
		System.out.println("将要更新的员工数据："+device);
		int up = 0;
		up = deviceService.updateDev(device);
		if(up==1) {
			return Msg.success().add("data", null);
		}
		return Msg.fail().add("data", "修改设备信息失败");
	}
	//查看统计信息
	@GetMapping("/searchDevEcharts")
	@ResponseBody
	public Msg searchDevEcharts(){
		List<Device> list = deviceService.searchDevEcharts();
		return Msg.success().add("data", list);
	}
}
