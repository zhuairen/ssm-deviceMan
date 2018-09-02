package com.hikvision.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TimeController {

	@RequestMapping("/time")
	@ResponseBody
	public void startTime(HttpServletRequest req,HttpServletResponse rsp) throws IOException {
		rsp.setHeader("Content-type", "text/html;charset=UTF-8");
		//这句话的意思，是告诉servlet用UTF-8转码，而不是用默认的ISO8859
		rsp.setCharacterEncoding("UTF-8");

		PrintWriter writer = rsp.getWriter();
		DeadTime dt = new DeadTime();
		Thread a = new Thread(dt,"线程一");
		Thread b = new Thread(dt,"线程二");
		Thread c = new Thread(dt,"线程三");
		Thread d = new Thread(dt,"线程四");
		a.start();
		b.start();
		c.start();
		d.start();
		writer.println("倒计时开始，请看控制台");
	}
	
	class DeadTime implements Runnable{
		
		private int c = 999;

		public void startTime() {
			synchronized(this) {
				if(c>0) {
					c--;
					System.out.println(c);
					
				}else {
					System.out.println("结束");

				}
			}
			
			
		}
		


		@Override
		public void run() {
			 while (c > 0)
				         {
				 startTime();

				            try
				            {
				                 Thread.sleep(1000);
				             }
				             catch (InterruptedException e)
				             {
				                  e.printStackTrace();
				             }
				         }
				     }
			
		}
		
	
}
