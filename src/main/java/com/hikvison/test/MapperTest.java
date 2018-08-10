package com.hikvison.test;

import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hikvision.bean.Device;
import com.hikvision.bean.Person;
import com.hikvision.mapper.DeviceMapper;
import com.hikvision.mapper.PersonMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})
public class MapperTest {

	@Autowired
	DeviceMapper deviceMapper;
	
	@Autowired
	PersonMapper personMapper;
	
	@Autowired
	SqlSession sqlSession;
	
	@Test
	public void testcrud() {
		System.out.println(deviceMapper);
	}
	
	//添加设备测试
	@Test
	public void testcrud1() {
		DeviceMapper mapper = sqlSession.getMapper(DeviceMapper.class);
		//deviceMapper.insertSelective(new Device(null,"sn","cvr","杭州总部",(double) 1000,"质量很好"));
		//海康球机  显示器  萤石摄像头     萤石运动相机  网络红外高速智能球机  红外防水半球型摄像机   CCD日夜型高清数字摄像机   CCD高清数字摄像机
		for(int i = 0;i<30;i++){
			String uid = UUID.randomUUID().toString().substring(0,8)+i;
			mapper.insertSelective(new Device(null, uid, "海康球机", "杭州总部",(double) 2000+i,"质量好！！！" ));
		}
		for(int i = 0;i<30;i++){
			String uid = UUID.randomUUID().toString().substring(0,8)+i;
			mapper.insertSelective(new Device(null, uid, "海康显示器", "杭州总部",(double) 3000+i,"开拓视界！！！" ));
		}
		for(int i = 0;i<30;i++){
			String uid = UUID.randomUUID().toString().substring(0,8)+i;
			mapper.insertSelective(new Device(null, uid, "萤石摄像头", "杭州总部",(double) 4000+i,"追求卓越！！！" ));
		}
		for(int i = 0;i<30;i++){
			String uid = UUID.randomUUID().toString().substring(0,8)+i;
			mapper.insertSelective(new Device(null, uid, "萤石运动相机", "杭州总部",(double) 5000+i,"诚信务实！！！" ));
		}
		for(int i = 0;i<30;i++){
			String uid = UUID.randomUUID().toString().substring(0,8)+i;
			mapper.insertSelective(new Device(null, uid, "网络红外高速智能球机", "杭州总部",(double) 6000+i,"好好好！！！" ));
		}
		for(int i = 0;i<30;i++){
			String uid = UUID.randomUUID().toString().substring(0,8)+i;
			mapper.insertSelective(new Device(null, uid, "红外防水半球型摄像机", "杭州总部",(double) 3640+i,"啥都好！！！" ));
		}
		for(int i = 0;i<30;i++){
			String uid = UUID.randomUUID().toString().substring(0,8)+i;
			mapper.insertSelective(new Device(null, uid, "CCD日夜型高清数字摄像机", "杭州总部",(double) 9900+i,"很好啊好！！！" ));
		}
		for(int i = 0;i<30;i++){
			String uid = UUID.randomUUID().toString().substring(0,8)+i;
			mapper.insertSelective(new Device(null, uid, "CCD高清数字摄像机", "杭州总部",(double) 38800+i,"外观好！！！" ));
		}
		for(int i = 0;i<30;i++){
			String uid = UUID.randomUUID().toString().substring(0,8)+i;
			mapper.insertSelective(new Device(null, uid, "ICR日夜型高清数字摄像机", "杭州总部",(double) 72100+i,"品质好！！！" ));
		}


	}
	//添加人员
	@Test
	public void addPerson() {
		PersonMapper mapper = sqlSession.getMapper(PersonMapper.class);
/*		for(int i = 0;i<10;i++){
			String uid = UUID.randomUUID().toString().substring(0,4)+i;
			mapper.insertSelective(new Person(null,uid,"hik",20+i,uid+"@hikvision.com","公安事业部",null,null));
		}*/
		String uid = UUID.randomUUID().toString().substring(0,4);
		mapper.insertSelective(new Person(null,uid,"hik",20,uid+"@hikvision.com","公安事业部",1,null));
		System.out.println("批量完成");
	}
	

}
