package com.hikvision.service;

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
}
