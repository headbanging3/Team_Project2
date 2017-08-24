package com.acorn.shoopse.order.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.order.service.OrderService;

@Controller
public class OrderCartController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/cart/cart_list")
	public ModelAndView cartList(HttpServletRequest request){
		System.out.println("cartList?");
		int mem_num=(int)request.getSession().getAttribute("mem_num");
		System.out.println("mem_num:"+mem_num);
		ModelAndView mView=orderService.list(mem_num);
		mView.setViewName("cart/cart_list");
		return mView;
	}
}
