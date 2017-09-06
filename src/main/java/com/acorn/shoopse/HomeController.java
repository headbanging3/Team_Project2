package com.acorn.shoopse;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.products.service.ProductsService;


@Controller
public class HomeController {
	
	@Autowired
	private ProductsService productsService;
	
	@RequestMapping("/home.do")
	public ModelAndView home(HttpServletRequest request){
		request.setAttribute("manager", "hide");
		// home best 상품 목록
		
		ModelAndView mView=new ModelAndView();
		mView=productsService.getList();
		//System.out.println("mView::::"+mView);
		mView.setViewName("home");
		return mView;
	}
}














