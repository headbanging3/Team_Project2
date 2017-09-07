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
	public String detail(){
		return "manager/waredetail";			
	}
	
	@RequestMapping(value="/manager/getDivision")
	@ResponseBody
	public List<ProductsKindDto> getDivision(
			@RequestParam int parent_kind_code){
		List<ProductsKindDto> divisionList=managerService.getDivision(parent_kind_code);
		return divisionList;
	}
}






