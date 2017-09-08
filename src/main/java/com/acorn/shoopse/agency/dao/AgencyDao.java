package com.acorn.shoopse.agency.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.products.dto.ProductsDto;

public interface AgencyDao {
	public void insert(AgencyDto dto);
	public List<AgencyDto> getList();
	public List<ProductsDto> getpList();
}


