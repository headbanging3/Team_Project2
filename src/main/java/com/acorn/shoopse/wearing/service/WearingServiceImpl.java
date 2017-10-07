package com.acorn.shoopse.wearing.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dao.AgencyDao;
import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsSubDto;
import com.acorn.shoopse.wearing.dao.WearingDao;
import com.acorn.shoopse.wearing.dto.WearingDto;
import com.acorn.shoopse.wearing.dto.WearingSubDto;

@Service
public class WearingServiceImpl implements WearingService {

	@Autowired
	private WearingDao wearingDao;
	//회원가입
	@Override
	public void insert(WearingDto dto) {
		wearingDao.insert(dto);		
	}
	@Override
	public ModelAndView getList() {
		List<WearingDto> list = wearingDao.getList();
		ModelAndView mView = new ModelAndView();
		mView.addObject("list", list);
		return mView;
	}
	@Override
	public ModelAndView getpName(String p_kind_code) {
		List<ProductsDto> list2 = wearingDao.getpName(p_kind_code);
		ModelAndView mView = new ModelAndView();
		mView.addObject("list2", list2);
		return mView;
	}
	@Override
	public ModelAndView getProductCode(HttpServletRequest request) {
		List<ProductsDto> list=wearingDao.getProductCode();
		ModelAndView mView=new ModelAndView();
		int w_no=Integer.parseInt(request.getParameter("w_no"));
		mView.addObject("list",list);
		mView.addObject("w_no", w_no);
		return mView;
	}
	@Override
	public void insertWareDetail(HttpServletRequest request) {
		String[] p_sizes=request.getParameterValues("p_size");
		String[] p_stocks=request.getParameterValues("ea");
		String p_code=request.getParameter("p_code");
		int w_no=Integer.parseInt(request.getParameter("w_no"));
		int w_count=Integer.parseInt(request.getParameter("countEa"));
		int w_price=Integer.parseInt(request.getParameter("up"));
		
		WearingSubDto dto=new WearingSubDto();
		
		
		dto.setP_code(p_code);
		dto.setW_count(w_count);
		dto.setW_price(w_price);
		dto.setW_no(w_no);
		for(int i=0; i<p_sizes.length; i++){
			System.out.println("사이즈 : "+p_sizes[i]);
			System.out.println("사이즈 : "+p_stocks[i]);
			System.out.println("입고번호 : "+w_no);
			System.out.println("상품코드 : "+p_code);
			System.out.println("입고수량 : "+w_count);
			System.out.println("입고단가 : "+w_price);
			dto.setP_size(p_sizes[i]);
			dto.setP_stock(p_stocks[i]);
			wearingDao.insertWareDetail(dto);
		}
		
		
		
	}
	@Override
	public ModelAndView getDetailList() {
		List<WearingSubDto> list=wearingDao.getDetailList();
		ModelAndView mView=new ModelAndView();
		mView.addObject("list", list);
		return mView;
	}
}
