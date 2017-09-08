package com.acorn.shoopse.products.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.service.ProductsService;

@Controller
public class ProductsController {
	
	@Autowired
	private ProductsService productsService;
	
	@RequestMapping("/products/products_list")
	public ModelAndView test(@ModelAttribute ProductsDto dto){
		
		ModelAndView mView=productsService.getpList(dto);
		mView.setViewName("products/products_list");
		return mView;
	}
	
	@RequestMapping("/products/products_detail")
	public ModelAndView detail(@RequestParam int p_code){
		ModelAndView mView= new ModelAndView();
		mView=productsService.getDetail(p_code);
		mView.setViewName("products/products_detail");
		
		return mView;
	}
	
	@RequestMapping("/products/popup")
	public String popup(){
		return "products/popup";
	}
	
	
	
	
	
}
