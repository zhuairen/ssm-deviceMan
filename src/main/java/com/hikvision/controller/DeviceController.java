package com.hikvision.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hikvision.bean.Device;
import com.hikvision.bean.Msg;
import com.hikvision.service.DeviceService;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Controller
/*@Api(value = "restful", description = "测试")*/
public class DeviceController {

	@Autowired
	DeviceService deviceService;
	//增加设备
/*	@ApiOperation(value = "添加新的设备", notes = "新增设备", httpMethod = "POST", response = Device.class)*/
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
	//查询设备库中未被绑定的设备
	@GetMapping("/selectOtherDev")
	@ResponseBody
	public Msg selectOtherDev(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		
		PageHelper.startPage(pn, 10);
		List<Device> list = deviceService.selectOtherDev();
		PageInfo page = new PageInfo(list);
		return Msg.success().add("pageInfo", page);
	}
	//批量删除设备
	@RequestMapping(value="/delDevice/{ids}",method=RequestMethod.DELETE)
	@ResponseBody
	public Msg delPerson(@PathVariable("ids")String ids) {

		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			int more = 0;
			more = deviceService.delDevices(del_ids);
			if(more!=0) {
				return Msg.success().add("data", "批量删除成功");
			}else {
			    return Msg.fail().add("data", "批量删除失败");
			}
			
		}else{
			Integer id = Integer.parseInt(ids);
			int one = 0;
			one = deviceService.delDevice(id);
			if(one<0) {
				return Msg.success().add("data", "删除单个成功");
			}else {
				return Msg.success().add("data", "删除单个失败");
			}
		}
		
	}
}
