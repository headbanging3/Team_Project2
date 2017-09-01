package com.acorn.shoopse.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.order.dao.OrderCartDao;
import com.acorn.shoopse.order.dto.OrderActionDto;
import com.acorn.shoopse.order.dto.OrderCartDto;
import com.acorn.shoopse.users.dto.UsersDto;

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

	@Override
	public ModelAndView itemCount(OrderCartDto dto) {
		OrderCartDto cartDto = cartDao.itemCount(dto);
		ModelAndView mView = new ModelAndView();
		mView.addObject("cartDto",cartDto);
		return mView;
	}

	@Override
	public ModelAndView getAddr(int mem_num) {
		UsersDto dto = cartDao.getAddr(mem_num);
		ModelAndView mView = new ModelAndView();
		mView.addObject("userDto",dto);
		return mView;
	}

	@Override
	public void orderInsert(OrderActionDto dto) {
		cartDao.orderInsert(dto);		
	}

	@Override
	public void orderDeleteAjax(List<OrderCartDto> dto) {
		cartDao.orderDeleteAjax(dto);
		
	}
}
