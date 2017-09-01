package com.acorn.shoopse.products.controller;

import javax.servlet.http.HttpServletRequest;

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
	public ModelAndView test(){
		ModelAndView mView=new ModelAndView();
		mView=productsService.getList();
		mView.setViewName("products/products_list");
		return mView;
	}
	
	@RequestMapping("/products/products_detail")
	public String detail(){
		return "products/products_detail";
	}
	
	
}
