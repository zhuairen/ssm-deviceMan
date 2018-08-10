package com.hikvision.controller;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
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
	
	@RequestMapping(value="/addDevice",method=RequestMethod.POST)
	@ResponseBody
	public Msg addDevice(Device device) {
		deviceService.addDevice(device);
		return Msg.success();
	}
	
	@GetMapping(value="/initDev")
	@ResponseBody
	public Msg initDev(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 5);
		List<Device> devices = deviceService.queryAll();
		PageInfo page = new PageInfo(devices, 5);
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
	@PostMapping("/updateDev")
	@ResponseBody
	public Msg updateDev(@RequestParam(value = "id") Integer id) {
		//Device device1 = new Device();
		
		return Msg.success().add("data", null);
	}
}
