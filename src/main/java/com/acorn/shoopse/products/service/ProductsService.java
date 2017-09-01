package com.acorn.shoopse.products.service;

import org.springframework.web.servlet.ModelAndView;

public interface ProductsService {
	public ModelAndView getList();
	public ModelAndView getDetail(int p_code);
	public ModelAndView getpList(int p_kind_code);
}
