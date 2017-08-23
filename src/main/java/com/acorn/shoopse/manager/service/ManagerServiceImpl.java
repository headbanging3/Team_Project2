package com.acorn.shoopse.manager.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.manager.dao.ManagerDao;
import com.acorn.shoopse.manager.dto.ManagerDto;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsKindDto;
import com.acorn.shoopse.users.dao.UsersDao;
import com.acorn.shoopse.users.dto.UsersDto;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	private ManagerDao managerDao;
	
	@Override
	public void insert(HttpServletRequest request, UsersDao dao) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ModelAndView list() {
		List<ManagerDto> list  = managerDao.getList();
		ModelAndView mView = new ModelAndView();
		mView.addObject("list", list);

		return mView;
	}


	@Override
	public void delete(int mem_num) {
		managerDao.delete(mem_num);
		
	}

	@Override
	public ModelAndView getData(int mem_num) {
		ModelAndView mView = new ModelAndView();
		if(mem_num>=1) {
			ManagerDto dto = managerDao.getData(mem_num);
			mView.addObject("dto", dto);
		}
		return mView;
	}

	@Override
	public void update(ManagerDto dto) {
		managerDao.update(dto);
	}

	@Override
	public ModelAndView p_list() {
		List<ProductsDto> p_list= managerDao.p_list();
		ModelAndView mView= new ModelAndView();
		mView.addObject("list",p_list);
		return mView;
	}

	@Override
	public ModelAndView getCategory() {
		ModelAndView mView=new ModelAndView();
		List<ProductsKindDto> categoryList=managerDao.getCategory();
		mView.addObject("categoryList", categoryList);
		return mView;
	}
	

	@Override
	public List<ProductsKindDto> getDivision(int parent_kind_code) {
		List<ProductsKindDto> divisionList=managerDao.getDivision(parent_kind_code);
		return divisionList;
	}

	@Override
	public void productsInsert(ProductsDto dto) {
		
		
		
		
		managerDao.productsInsert(dto);
		
	}




}
