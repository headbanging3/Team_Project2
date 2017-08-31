package com.acorn.shoopse.order.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.order.dto.OrderActionDto;
import com.acorn.shoopse.order.dto.OrderCartDto;
import com.acorn.shoopse.order.service.OrderService;

@Controller
public class OrderCartController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/cart/cart_list")
	public ModelAndView cartList(HttpServletRequest request){
		//System.out.println("cartList?");
		int mem_num=(int)request.getSession().getAttribute("mem_num");
		//System.out.println("mem_num:"+mem_num);
		ModelAndView mView=orderService.list(mem_num);
		mView.setViewName("cart/cart_list");
		return mView;
	}
	@RequestMapping("/cart/item_count_ajax")
	public ModelAndView itemCountAjax(@ModelAttribute OrderCartDto dto){
		//System.out.println("count:"+dto.getO_count()+":pno:"+dto.getP_no()+":ono:"+dto.getO_no()+":pcode:"+dto.getP_code());

		ModelAndView mView=orderService.itemCount(dto);
		mView.setViewName("cart/item_count_ajax");
		return mView;		
	}
	@RequestMapping("/cart/order_insertform")
	public ModelAndView orderPayment(HttpServletRequest request){
		System.out.println("orderinsert?");
		int mem_num=(int)request.getSession().getAttribute("mem_num");
		//System.out.println("mem_num:"+mem_num);
		ModelAndView mView=orderService.list(mem_num);
		mView.setViewName("cart/order_insertform");
		return mView;
	}
	@RequestMapping("/cart/default_addr_ajax")
	public ModelAndView defaulAddrAjax(HttpServletRequest request){
		int mem_num=(int)request.getSession().getAttribute("mem_num");
		//System.out.println(":ajax_memnum::"+mem_num);
		ModelAndView mView=orderService.getAddr(mem_num);
		mView.setViewName("cart/default_addr_ajax");
		return mView;		
	}
	@RequestMapping("/cart/order_insert")
	public ModelAndView orderInsert(@ModelAttribute OrderActionDto dto, HttpSession session){
		//System.out.println("OrderActionDto::"+dto.toString());
		int mem_num=(int)session.getAttribute("mem_num");
		dto.setMem_num(mem_num);
		orderService.orderInsert(dto);
		return null;
		//return "redirect:";	
	}
}
