package com.acorn.shoopse.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
	
	@RequestMapping("/products/orderPage")
	public String orderPage() {
		return "/manager/order/order_insert";
	}
	
	
}
