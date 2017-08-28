package com.acorn.shoopse.order.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.order.dao.OrderDao;

public interface OrderService {
	/* ************************* 주문 CRUD ************************* */
	public void insert(HttpServletRequest request, OrderDao dao);
	public ModelAndView getList();
	
	
	/* ************************* 상품 CRUD ************************* */
	public ModelAndView list(int mem_num);
}
