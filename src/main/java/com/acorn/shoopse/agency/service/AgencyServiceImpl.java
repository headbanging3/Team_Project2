package com.acorn.shoopse.agency.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dao.AgencyDao;
import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.manager.dao.ManagerDao;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsKindDto;

@Service
public class AgencyServiceImpl implements AgencyService {

	@Autowired
	private AgencyDao agencyDao;

	@Autowired
	private ManagerDao managerDao;
	
	//회원가입
	@Override
	public void insert(AgencyDto dto) {
		agencyDao.insert(dto);		
	}
	@Override
	public ModelAndView getList() {
		List<AgencyDto> list = agencyDao.getList();
		List<ProductsKindDto> categoryList = managerDao.getCategory();
		ModelAndView mView = new ModelAndView();
		mView.addObject("list", list);
		mView.addObject("categoryList", categoryList);
		return mView;
	}
	
	public ModelAndView getpList() {
		List<ProductsDto> list2 = agencyDao.getpList();
		ModelAndView mView = new ModelAndView();
		mView.addObject("list2", list2);
		
		return mView;
	}
}
