package com.hikvision.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hikvision.bean.Person;
import com.hikvision.service.LoginService;

@Controller
//@SessionAttributes("person")
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/checkLogin")
	public String checkLogin(Model model,Person person,HttpServletRequest request) {
		HttpSession session = request.getSession();
		//System.out.println(person.getName());
		person = loginService.loginCheck(person.getName(),person.getPassword());
		if(person != null){
			//model.addAttribute("person1",person.getName());
			session.setAttribute("person", person);
			//System.out.println(person.getName());
			return "index";
		}
		return "fail";
	}
	
	@RequestMapping("/anotherpage")
	public String hrefpage(){
		
		return "anotherpage";
	}
	
	@RequestMapping("/noLogin")
	public String noLogin(){
		
		return "login";
	}
}
