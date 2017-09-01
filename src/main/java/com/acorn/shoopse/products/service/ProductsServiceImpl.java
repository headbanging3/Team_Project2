package com.acorn.shoopse.products.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.products.dao.ProductsDao;
import com.acorn.shoopse.products.dto.ProductsDto;

@Service
public class ProductsServiceImpl implements ProductsService{

	@Autowired
	private ProductsDao productsDao;
	
	@Override
	public ModelAndView getList() {
		ModelAndView mView=new ModelAndView();		
		List<ProductsDto> list=productsDao.getList();
		mView.addObject("list", list);
		return mView;
	}
	
	@Override
	public ModelAndView getpList(int p_kind_code) {
		ModelAndView mView= new ModelAndView();
		List<ProductsDto> plist= productsDao.getpList();
		List<ProductsDto> kindList= productsDao.getKindList(p_kind_code);
		mView.addObject("plist",plist);
		mView.addObject("kindList",kindList);
		return mView;
	}

	@Override
	public ModelAndView getDetail(int p_code) {
		ModelAndView mView= new ModelAndView();
		List<String> list=productsDao.getdetail(p_code);
		List<String> subImg=productsDao.subImg(p_code);
		String mainImg = productsDao.mainImg(p_code);
		ProductsDto getinfo = productsDao.getinfo(p_code);
		

		mView.addObject("list",list);
		mView.addObject("subImg",subImg);
		mView.addObject("mainImg", mainImg);
		mView.addObject("getinfo",getinfo);
		
		System.out.println("serviceImple mainImg::"+mainImg);
		System.out.println("serviceImple subImg::"+subImg);
		System.out.println("serviceImple list::"+list);
		System.out.println("serviceImple getinfo::"+getinfo);
		System.out.println("serviceImple:::"+mView);
		return mView;
	}

	

	
	
}
