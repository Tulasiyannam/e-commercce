package com.niit.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/loginsuccess")
	public String login_session_attributes(HttpSession session,Model model) 
	{
		//System.out.println("Hello");
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		
		String role="ROLE_USER";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 
		    	 session.setAttribute("UserLoggedIn", "true");
		    	 session.setAttribute("Username", userid);
		    	 page="User";
		    	 break;
		     }
		     else 
		     {
		    	 session.setAttribute("LoggedIn", "true");
		    	 session.setAttribute("Administrator", "true");
		    	 page="Admin";
		    	 break;
		    }
		}
		return page;

	}
}