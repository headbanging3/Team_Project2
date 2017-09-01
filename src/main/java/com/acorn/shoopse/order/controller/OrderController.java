package com.acorn.shoopse.order.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.order.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	/* ************************* 주문 List CRUD ************************* */
//	@RequestMapping("/products/orderAction")
//	public String orderAction() {
//		return "/manager/order/alert";
//	}
	
	@RequestMapping("/products/orderAction")
	public ModelAndView orderAction(HttpServletRequest request) {
		try {
			int mem_num = (Integer)request.getSession().getAttribute("mem_num");
			ModelAndView mView = new ModelAndView();
			mView.setViewName("/manager/order/alert");
			return mView;
		} catch(NullPointerException ne) {
			ModelAndView mView = new ModelAndView();
			mView.setViewName("/popup/signinform");
			return mView;
		} 
		
		
	}
	
	@RequestMapping("/products/orderPage")
	public String orderPage() {
		return "/manager/order/order_insert";
	}
	
	@RequestMapping("/manager/orderList")
	public ModelAndView orderList() {
		ModelAndView mView = new ModelAndView();
		mView = orderService.wholeOrderList();
		mView.setViewName("/manager/order/order_list");
		return mView;
	}
	
	
}
