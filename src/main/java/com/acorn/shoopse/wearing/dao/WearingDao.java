package com.acorn.shoopse.wearing.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsSubDto;
import com.acorn.shoopse.wearing.dto.WearingDto;
import com.acorn.shoopse.wearing.dto.WearingSubDto;

public interface WearingDao {
	public void insert(WearingDto dto);
	public List<WearingDto> getList();
	public List<ProductsDto> getpName(String p_kind_code);
	public List<ProductsDto> getProductCode();
	public void insertWareDetail(WearingSubDto dto);
	public List<WearingSubDto> getDetailList();
}


