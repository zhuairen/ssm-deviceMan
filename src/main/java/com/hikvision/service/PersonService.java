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
		
		return personMapper.selectCount();
	}

	//初始化，刚进来查看拥有设备数
	public List<Person> getCount() {
		
		return personMapper.selectCount();
	}

	public List<Person> getPsnDev(String name) {
		
		return personMapper.selectByNamePsnDev(name);
	}

	public Person getPsn(Integer id) {
		
		return personMapper.selectByPrimaryKey(id);
	}

	public int updatePsn(Person person) {
		
		return personMapper.updateByPrimaryKeySelective(person);
	}



	public int delPerson(Integer id) {
		return personMapper.deleteByPrimaryKey(id);		
	}

	public List<Person> findPsnByName(String name) {
		// TODO Auto-generated method stub
		return personMapper.findPsnByName(name);
	}

	public int addPsn(Person person) {
		return personMapper.insertSelective(person);
		
	}

	public int delPersonMore(List<Integer> del_ids) {
		return personMapper.delPersonMore(del_ids);
		
	}
}
