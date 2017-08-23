package com.acorn.shoopse.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.users.dto.UsersDto;



public interface UsersService {
	public void usersSignup(UsersDto dto);
	public ModelAndView findId(UsersDto dto);
	public ModelAndView findPwd(UsersDto dto);
	public ModelAndView isOverlab(String id);
	public ModelAndView getData(HttpServletRequest request);
	public void delete(int num, HttpServletRequest request);
	public void update(UsersDto dto);
	public ModelAndView signin(UsersDto dto, HttpServletRequest request);
}
