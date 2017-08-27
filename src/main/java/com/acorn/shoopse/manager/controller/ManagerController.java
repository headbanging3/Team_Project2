package com.acorn.shoopse.manager.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.RequestContext;
import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.manager.dto.ManagerDto;
import com.acorn.shoopse.manager.service.ManagerService;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsKindDto;

@Controller
public class ManagerController {

	
	@Autowired
	private ManagerService managerService;

	/* ************************* 회원 List CRUD ************************* */
	
	@RequestMapping("/manager/m_list2")
	public String m_list2() {
		return "manager/nav/m_nav";
	}
	
	@RequestMapping("/manager/m_nav2")
	public String m_nav2() {
		return "manager/nav/m_nav2";
	}
	
	@RequestMapping("/manager/m_list")
	public ModelAndView m_list() {
		ModelAndView mView = managerService.list();
		mView.setViewName("manager/list");
		return mView;
	}
	
	@RequestMapping("m_home")
	public String m_home() {
		return "manager/index";
	}
	
	
	@RequestMapping("/manager/updateform")
	public ModelAndView updateform(@RequestParam int mem_num) {
		ModelAndView mView = managerService.getData(mem_num);
		mView.setViewName("manager/updateform");
		return mView;
	}
	
	@RequestMapping("/manager/delete")
	public String delete(@RequestParam int mem_num) {
		managerService.delete(mem_num);
		return "redirect:/manager/m_list.do";	
	}
	
	@RequestMapping("/manager/update")
	public String update(@ModelAttribute ManagerDto dto) {
		List<ManagerDto> list = new ArrayList<>();
		list.add(dto);
		System.out.println(list);
		System.out.println(dto.getEmail());
		System.out.println(dto.getAddr());
		System.out.println(dto.getMem_num());
		managerService.update(dto);
		return "redirect:/manager/m_list.do";
	}
	
	
	
	/* ************************* 상품 List CRUD ************************* */
	
	// 관리자 상품 목록
	@RequestMapping("/manager/products/p_list")
	public ModelAndView p_list(){
		ModelAndView mView=managerService.p_list();
		mView.setViewName("/manager/products/p_list");
		return mView;
	}
	// 관리자 상품 등록 페이지 이동(카테고리 포함)
	@RequestMapping("/manager/products/p_insertform")
	public ModelAndView p_insertform(){
		ModelAndView mView=managerService.getCategory();
		mView.setViewName("/manager/products/p_insertform");
		return mView;
	}
	// 관리자 상품 등록(소분류)
	@RequestMapping(value="/manager/products/getDivision")
	@ResponseBody
	public List<ProductsKindDto> getDivision(
			@RequestParam int parent_kind_code){
		List<ProductsKindDto> divisionList=managerService.getDivision(parent_kind_code);
		return divisionList;
	}
	// 관리자 상품 등록
	@RequestMapping("/manager/products/p_insert")
	public String productsInsert(HttpServletRequest request, @ModelAttribute ProductsDto dto){
		managerService.productsInsert(dto, request);
		
		return "redirect:/manager/products/p_list.do";
	}
	
	// 관리자 상품 삭제
	@RequestMapping("/manager/products/p_delete")
	public String productsDelete(HttpServletRequest request){
	
	
		managerService.productsDelete(request);
		return "redirect:/manager/products/p_list.do";
	}




}
