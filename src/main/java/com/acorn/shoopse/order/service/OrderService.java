package com.acorn.shoopse.order.service;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.order.dto.OrderActionDto;
import com.acorn.shoopse.order.dto.OrderCartDto;

public interface OrderService {
	public ModelAndView list(int mem_num);
	public ModelAndView itemCount(OrderCartDto dto);
	public ModelAndView getAddr(int mem_num);
	public void orderInsert(OrderActionDto dto);
}
