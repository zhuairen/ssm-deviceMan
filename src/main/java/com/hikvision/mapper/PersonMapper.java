package com.hikvision.mapper;

import com.hikvision.bean.Person;
import com.hikvision.bean.PersonExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PersonMapper {
    long countByExample(PersonExample example);

    int deleteByExample(PersonExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Person record);

    int insertSelective(Person record);

    List<Person> selectByExample(PersonExample example);

    Person selectByPrimaryKey(Integer id);
    //code查询人员和多少台设备
    List<Person> selectNormal(PersonExample example);
    
    List<Person> selectCount();
    
    List<Person> selectByNamePsnDev(String name);
    
    Person selectNamePwd(String name);

    Person selectByPrimaryKeyWithDevice(Integer id);

    int updateByExampleSelective(@Param("record") Person record, @Param("example") PersonExample example);

    int updateByExample(@Param("record") Person record, @Param("example") PersonExample example);

    int updateByPrimaryKeySelective(Person record);

    int updateByPrimaryKey(Person record);

	List<Person> findPsnByName(String name);

	int delPersonMore(List<Integer> del_ids);



}