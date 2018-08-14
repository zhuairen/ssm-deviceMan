package com.hikvision.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hikvision.bean.Msg;
import com.hikvision.service.psn_devService;

@Controller
public class psn_devController {
	
	@Autowired
	psn_devService psndevService;

	@RequestMapping(value="/delPsnDev/{id}",method=RequestMethod.DELETE)
	@ResponseBody
	public Msg delPsnDev(@PathVariable("id")Integer id) {
		int del = 0;
		del = psndevService.delPsnDev(id);
		if(del<0) {
			return Msg.success().add("data", "删除成功");
		}
		return Msg.fail().add("data", "删除出错");
	}
}
