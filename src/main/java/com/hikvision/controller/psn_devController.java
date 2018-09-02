package com.hikvision.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hikvision.bean.Msg;
import com.hikvision.bean.psn_dev;
import com.hikvision.service.psn_devService;

@Controller
public class psn_devController {
	
	@Autowired
	psn_devService psndevService;

	//移除
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
	//批量绑定设备
	@RequestMapping(value="/linkDev/{ids}",method=RequestMethod.PUT)
	@ResponseBody
	public Msg linkDev(@PathVariable("ids")String ids, @Param("personId") Integer personId) {
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			List<Integer> person_ids = new ArrayList<>();
			Map<String,Integer> map = new HashMap<String,Integer>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
				
			}
			map.put("personId", personId);
			Iterator it = del_ids.iterator();
			int more = 0;
			while(it.hasNext()){
				map.put("did", (Integer) it.next());
				more = psndevService.linkDevs(map);			  
			}
			

			if(more!=0) {
				return Msg.success().add("data", "批量绑定成功");
			}else {
			    return Msg.fail().add("data", "批量绑定失败");
			}
			
		}else{
			Integer did = Integer.parseInt(ids);
			Map<String,Integer> map = new HashMap<String,Integer>();
			map.put("personId", personId);
			map.put("did", did);
			int one = 0;
			one = psndevService.linkDev(map);
			if(one<0) {
				return Msg.success().add("data", "单个绑定成功");
			}else {
				return Msg.success().add("data", "单个绑定失败");
			}
		}
	}
}
