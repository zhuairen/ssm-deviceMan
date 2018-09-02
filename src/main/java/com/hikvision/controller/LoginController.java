package com.hikvision.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

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
import com.hikvision.utils.MD5utils;

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
	public String checkLogin(Model model,Person person,HttpServletRequest request) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		if(person.getName()==null) {
			return "login";
		}
		MD5utils md5utils = new MD5utils();
		HttpSession session = request.getSession();
		Person personCallBack = new Person();
		String newPwd = md5utils.EncoderByMd5(person.getPassword());
		personCallBack = loginService.loginCheck(person.getName());
		
		
		if(personCallBack != null && personCallBack.getPassword().equals(newPwd)) {
			
				session.setAttribute("person", personCallBack);
				session.setMaxInactiveInterval(30*60);
				
				if(personCallBack.getPower().equals("admin")) {
					
					return "tag";
				}else if(personCallBack.getPower().equals("normal")){
					
					return "tagFrame";
				}
		}else {
			return "login";
		}
		return "tag";

	}
	
	//注销用户
	@RequestMapping("/outLogin")
	public String outLogin(HttpSession session){
		//通过session.invalidata()方法来注销当前的session
		session.invalidate();
		return "login";
	}
}
