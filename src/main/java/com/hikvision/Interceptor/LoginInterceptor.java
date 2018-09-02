package com.hikvision.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.hikvision.bean.Person;

public class LoginInterceptor implements HandlerInterceptor{
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler) throws Exception {  
        Person person1=  (Person) request.getSession().getAttribute("person");

        
        if (person1 != null) {
        	 /*request.getRequestDispatcher("/tag.jsp").forward(request, response);*/
            return true;
           
        }
        
        request.getRequestDispatcher("/login.jsp").forward(request, response);
        
        return false;   
        
    }




	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}


}