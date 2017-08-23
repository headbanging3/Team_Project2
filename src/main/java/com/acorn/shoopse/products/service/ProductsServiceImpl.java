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
	
}
