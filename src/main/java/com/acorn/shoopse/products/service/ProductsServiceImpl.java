package com.acorn.shoopse.products.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.manager.dao.ManagerDao;
import com.acorn.shoopse.products.dao.ProductsDao;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsKindDto;

@Service
public class ProductsServiceImpl implements ProductsService{

	@Autowired
	private ProductsDao productsDao;
	
	@Autowired
	private ManagerDao managerDao;
	
	@Override
	public ModelAndView getList() {
		ModelAndView mView=new ModelAndView();		
		List<ProductsDto> list=productsDao.getList();
		mView.addObject("list", list);
		
		return mView;
	}
	
	@Override
	public ModelAndView getpList(ProductsDto dto) {
		ModelAndView mView= new ModelAndView();
		
		List<ProductsDto> plist= productsDao.getpList(dto);
		List<ProductsDto> kindList= productsDao.getKindList(dto);
		
		mView.addObject("plist",plist);
		mView.addObject("kindList",kindList);

		return mView;
	}

	@Override
	public ModelAndView getDetail(int p_code )  {
		ModelAndView mView= new ModelAndView();
		List<String> psize= productsDao.psize(p_code);
		String pstock= productsDao.pstock(p_code);
		List<String> list=productsDao.getdetail(p_code);
		List<String> subImg=productsDao.subImg(p_code);
		String mainImg = productsDao.mainImg(p_code);
		ProductsDto getinfo = productsDao.getinfo(p_code);
		

		mView.addObject("list",list);
		mView.addObject("subImg",subImg);
		mView.addObject("psize",psize);
		mView.addObject("pstock",pstock);
		mView.addObject("mainImg", mainImg);
		mView.addObject("getinfo",getinfo);
		
		return mView;
	}

	@Override
	public ModelAndView getBestList() {
		ModelAndView mView=new ModelAndView();		
		List<ProductsDto> bestList=productsDao.getBestList();
		List<ProductsDto> newList=productsDao.getList();
		mView.addObject("bestList", bestList);
		mView.addObject("newList", newList);
		
		return mView;
	}

	

	
	
}
