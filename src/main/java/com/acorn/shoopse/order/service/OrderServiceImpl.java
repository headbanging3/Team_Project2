package com.acorn.shoopse.order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.manager.dao.ManagerDao;
import com.acorn.shoopse.manager.dto.ManagerDto;
import com.acorn.shoopse.order.dao.OrderDao;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private ManagerDao managerDao;
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
