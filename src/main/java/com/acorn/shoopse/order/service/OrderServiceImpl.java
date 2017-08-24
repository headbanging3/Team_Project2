package com.acorn.shoopse.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.order.dao.OrderCartDao;
import com.acorn.shoopse.order.dto.OrderCartDto;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderCartDao cartDao;
	
	@Override
	public ModelAndView list(int mem_num) {
		List<OrderCartDto> cartList = cartDao.getCartList(mem_num);
		ModelAndView mView = new ModelAndView();
		mView.addObject("cartList", cartList);
		return mView;
	}
}
