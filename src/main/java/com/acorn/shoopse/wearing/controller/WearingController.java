package com.acorn.shoopse.wearing.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.agency.service.AgencyService;
import com.acorn.shoopse.wearing.dto.WearingDto;
import com.acorn.shoopse.wearing.service.WearingService;

@Controller
public class WearingController {
	
	@Autowired
	private WearingService wearingService;

	
	@RequestMapping("manager/insertwarehousing")
	public String insert(@ModelAttribute WearingDto dto){
		System.out.println(dto.getA_code()+"ㅡㅡ"+dto.getW_date()+"ㅡㅡ"+dto.getW_no()+"ㅡㅡ"+dto.getW_total_count()+"ㅡㅡ"+dto.getW_total_price()+"ㅡㅡ");
		wearingService.insert(dto);
		return "redirect:warehousing.do";
	}
	
	@RequestMapping("manager/warehousing")
	public ModelAndView getList(){
		ModelAndView mView=wearingService.getList();
		mView.setViewName("manager/warehousing_list");
		return mView;
	}
}






