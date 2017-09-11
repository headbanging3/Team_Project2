package com.acorn.shoopse.agency.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dto.AgencyDto;


public interface AgencyService {
	public void insert(AgencyDto dto);
	public ModelAndView getList();
	public ModelAndView getpList();
}
