package com.hikvision.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hikvision.bean.Device;
import com.hikvision.bean.Msg;
import com.hikvision.bean.Person;
import com.hikvision.mapper.PersonMapper;
import com.hikvision.service.PersonService;



/**
 * @author Book
 *
 */
@Controller
public class PersonController {

	@Autowired
	PersonService personService;
	
	
	@RequestMapping("/persons")
	public String getPerson(
			@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		// 这不是一个分页查询；
		// 引入PageHelper分页插件
		// 在查询之前只需要调用，传入页码，以及每页的大小
		PageHelper.startPage(pn, 5);
		// startPage后面紧跟的这个查询就是一个分页查询
		List<Person> persons = personService.getAll();
		// 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
		// 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
		PageInfo page = new PageInfo(persons, 5);
		model.addAttribute("pageInfo", page);

		return "list";
	}
	
	//@RequestMapping("/init")
	public String init(
			@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		// 这不是一个分页查询；
		// 引入PageHelper分页插件
		// 在查询之前只需要调用，传入页码，以及每页的大小
		PageHelper.startPage(pn, 5);
		// startPage后面紧跟的这个查询就是一个分页查询
		List<Person> persons = personService.getCount();
		// 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
		// 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
		PageInfo page = new PageInfo(persons, 5);
		model.addAttribute("pageInfo", page);

		return "list1";
	}
	
	/**
	 * @author 第一次初始
	 *
	 */
	@RequestMapping("/init")
	@ResponseBody
	public Msg init(
			@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 这不是一个分页查询
		// 引入PageHelper分页插件
		// 在查询之前只需要调用，传入页码，以及每页的大小
		PageHelper.startPage(pn, 10);
		// startPage后面紧跟的这个查询就是一个分页查询
		List<Person> persons = personService.getCount();
		// 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
		// 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
		PageInfo page = new PageInfo(persons, 10);
		return Msg.success().add("pageInfo", page);
	}
	

	/**
	 * @author 查询个人拥有设备
	 *
	 */
	@RequestMapping(value="/getPsnDev",method=RequestMethod.POST)
	@ResponseBody
	public Msg getPsnDev(@RequestParam(value = "name") String name) {
		List<Person> psnDev = personService.getPsnDev(name);
		return Msg.success().add("data", psnDev);
	}
	/**
	 * @author 根据id查到个人信息
	 *
	 */
	@RequestMapping(value="/getPsn",method=RequestMethod.GET)
	//@GetMapping("/getPsn/{id}")
	@ResponseBody
	public Msg getPsn(@RequestParam(value = "id") Integer id) {
		Person person = personService.getPsn(id);
		return Msg.success().add("data", person);
	}
	/**
	 * @author 保存修改人员信息
	 *
	 */
	@RequestMapping(value="/updatePsn/{id}",method=RequestMethod.PUT)
	@ResponseBody
	public Msg updatePsn(Person person, HttpServletRequest request) {
		int up = 0;
		up = personService.updatePsn(person);
		if(up>0) {
			return Msg.success().add("data", "修改人员信息成功");
		}
		return Msg.fail().add("data", "修改人员信息失败");
	}
	/**
	 * @author 模糊查询
	 *
	 */
	@RequestMapping(value="/findPsnByName",method=RequestMethod.POST)
	@ResponseBody
	public Msg findPsnByName(Person person) {


		List<Person> personList = personService.findPsnByName(person.getName());

		return Msg.success().add("data", personList);
	}
	/**
	 * @author 批量删除人员
	 *
	 */
	@RequestMapping(value="/delPerson/{ids}",method=RequestMethod.DELETE)
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
			more = personService.delPersonMore(del_ids);
			if(more!=0) {
				return Msg.success().add("data", "批量删除成功");
			}else {
			    return Msg.fail().add("data", "批量删除失败");
			}
			
		}else{
			Integer id = Integer.parseInt(ids);
			int one = 0;
			one = personService.delPerson(id);
			if(one<0) {
				return Msg.success().add("data", "删除单个成功");
			}else {
				return Msg.success().add("data", "删除单个失败");
			}
		}
		
	}
	/**
	 * @author 新增人员
	 *
	 */
	@RequestMapping(value="/addPsn",method=RequestMethod.POST)
	@ResponseBody
	public Msg addPsn(Person person) {
		int i = 0;
		i = personService.addPsn(person);
		if(i<0) {
			return Msg.success().add("data", "添加成功");
		}else {
			return Msg.fail().add("data", "添加失败");
		}
	}
}
