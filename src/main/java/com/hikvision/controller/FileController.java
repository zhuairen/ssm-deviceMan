package com.hikvision.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class FileController {

	@RequestMapping("/upload")
	@ResponseBody
	public String upload(MultipartFile file,HttpServletRequest request) throws IllegalStateException, IOException {
		 String path = request.getSession().getServletContext().getRealPath("upload");  
	        String fileName = file.getOriginalFilename();
	        File dir = new File(path,fileName);          
	        if(!dir.exists()){  
	            dir.mkdirs();  
	        }  
	        file.transferTo(dir);  
	        return "ok!";  
	}
	@RequestMapping("/time111")
	@ResponseBody
	public String deadTime() throws IllegalStateException, IOException {

	        return "ok!";  
	}
}
