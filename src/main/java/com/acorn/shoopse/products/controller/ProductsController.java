package com.acorn.shoopse.products.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.products.service.ProductsService;

@Controller
public class ProductsController {
	
	@Autowired
	private ProductsService productsService;
	
	@RequestMapping("/products/products_list")
	public ModelAndView test(@RequestParam int p_kind_code){
		System.out.println("p_kind_code::"+p_kind_code);
		ModelAndView mView=new ModelAndView();
		mView=productsService.getList();
		mView.setViewName("products/products_list");
		return mView;
	}
//	@RequestMapping("/products/products_list")
//	public ModelAndView test2(int p_kind_code){
//		ModelAndView mView=new ModelAndView();
//		mView=productsService.getpList(p_kind_code);
//		mView.setViewName("products/products_list");
//		return mView;
//	}
	
	@RequestMapping("/products/products_detail")
	public ModelAndView detail(@RequestParam int p_code){
		ModelAndView mView= new ModelAndView();
		mView=productsService.getDetail(p_code);
		mView.setViewName("products/products_detail");
		
		return mView;
	}
	
	
}
