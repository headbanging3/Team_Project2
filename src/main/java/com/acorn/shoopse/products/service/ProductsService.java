package com.acorn.shoopse.products.service;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.products.dto.ProductsDto;

public interface ProductsService {
	public ModelAndView getList();
	public ModelAndView getDetail(int p_code);
	public ModelAndView getpList(ProductsDto dto);
	public ModelAndView getBestList();
}
