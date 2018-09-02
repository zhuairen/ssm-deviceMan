package com.hikvision.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hikvision.mapper.psn_devMapper;

@Service
public class psn_devService {

	@Autowired
	psn_devMapper psndevMapper;
	
	public int delPsnDev(Integer did) {
		return psndevMapper.delPsnDev(did);
	}

	public int linkDev(Map<String, Integer> map) {
		
		return psndevMapper.linkDev(map);
	}

	public int linkDevs(Map<String, Integer> map) {
		
		return psndevMapper.linkDev(map);
	}
}
