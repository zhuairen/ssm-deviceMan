package com.hikvision.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hikvision.bean.Person;
import com.hikvision.mapper.PersonMapper;
@Service
public class LoginService {

	@Autowired
	PersonMapper personMapper;
	
	public Person loginCheck(String name,String password) {
		Person person = personMapper.selectNamePwd(name);
		return person;
	}

}
