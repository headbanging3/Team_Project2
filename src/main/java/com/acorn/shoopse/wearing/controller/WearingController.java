package com.acorn.shoopse.wearing.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.agency.service.AgencyService;
import com.acorn.shoopse.manager.service.ManagerService;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsKindDto;
import com.acorn.shoopse.wearing.dto.WearingDto;
import com.acorn.shoopse.wearing.service.WearingService;

@Controller
public class WearingController {
	
	@Autowired
	private WearingService wearingService;

	@Autowired
	private ManagerService managerService;
	
	@RequestMapping("manager/insertwarehousing")
	public String insert(@ModelAttribute WearingDto dto){
		wearingService.insert(dto);
		return "redirect:warehousing.do";
	}
	
	@RequestMapping("manager/warehousing")
	public ModelAndView getList(){
		ModelAndView mView=wearingService.getList();
		mView.setViewName("manager/warehousing_list");
		return mView;
	}
	
	@RequestMapping("manager/waredetail")
	public ModelAndView detail(HttpServletRequest request){
		
		ModelAndView mView=wearingService.getProductCode(request);
		//ModelAndView mView=wearingService.getDetailList();
		
		mView.setViewName("manager/waredetail");
		return mView;	
	}
	
	@RequestMapping(value="/manager/getDivision")
	@ResponseBody
	public List<ProductsKindDto> getDivision(
			@RequestParam int parent_kind_code){
		List<ProductsKindDto> divisionList=managerService.getDivision(parent_kind_code);
		return divisionList;
	}
	
	@RequestMapping("/manager/getpName")
	public ModelAndView getpName(@RequestParam String p_kind_code) {
		ModelAndView mView = wearingService.getpName(p_kind_code);
		return mView;
	}
	
	@RequestMapping("/manager/insertWareDetail")
	public String insertWareDetail(HttpServletRequest request){
		wearingService.insertWareDetail(request);
		return "redirect:manager/warehousing.do";
	}
	
	
}






