package com.acorn.shoopse.wearing.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.wearing.dto.WearingDto;

public interface WearingDao {
	public void insert(WearingDto dto);
	public List<WearingDto> getList();
}


