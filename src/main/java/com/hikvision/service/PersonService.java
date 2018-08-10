package com.hikvision.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hikvision.bean.Person;
import com.hikvision.mapper.PersonMapper;

@Service
public class PersonService {

	@Autowired
	PersonMapper personMapper;
	
	//查询所有信息
	public List<Person> getAll() {
		
		return personMapper.selectByExampleWithDevice(null);
	}

	//查询有多少台设备
	public List<Person> getCount() {
		
		return personMapper.selectNormal(null);
	}

	public List<Person> getPsnDev(String name) {
		
		return personMapper.selectByNamePsnDev(name);
	}
}
