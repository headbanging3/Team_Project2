package com.acorn.shoopse.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.manager.dao.ManagerDao;
import com.acorn.shoopse.order.dao.OrderCartDao;
import com.acorn.shoopse.order.dao.OrderDao;
import com.acorn.shoopse.order.dto.OrderCartDto;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderCartDao cartDao;
	
	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private ManagerDao managerDao;
	
	@Override
	public ModelAndView list(int mem_num) {
		List<OrderCartDto> cartList = cartDao.getCartList(mem_num);
		ModelAndView mView = new ModelAndView();
		mView.addObject("cartList", cartList);
		return mView;
	}
	@Override
	public ModelAndView list() {
		
		return null;
	}

	@Override
	public ModelAndView getData(String id) {
		ModelAndView mView = new ModelAndView();
		
		return null;
	}

	@Override
	public ModelAndView mgetData(String id) {
		// TODO Auto-generated method stub
		return null;
	}	
}

