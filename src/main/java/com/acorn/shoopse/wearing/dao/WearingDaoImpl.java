package com.acorn.shoopse.wearing.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsSubDto;
import com.acorn.shoopse.users.dto.UsersDto;
import com.acorn.shoopse.wearing.dto.WearingDto;
import com.acorn.shoopse.wearing.dto.WearingSubDto;

@Repository
public class WearingDaoImpl implements WearingDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(WearingDto dto) {
		session.insert("wearing.insert", dto);
	}

	@Override
	public List<WearingDto> getList() {
		List<WearingDto> list = session.selectList("wearing.getList");
		return list;
	}

	@Override
	public List<ProductsDto> getpName(String p_kind_code) {
		List<ProductsDto> list = session.selectList("wearing.getpName", p_kind_code);
		return list;
	}

	@Override
	public List<ProductsDto> getProductCode() {
		List<ProductsDto> list=session.selectList("wearing.getProductCode");
		return list;
	}

	@Override
	public void insertWareDetail(WearingSubDto dto) {
		session.insert("wearing.insertDetailPS",dto);
		session.insert("wearing.insertDetailWS",dto);
		
		
	}

	@Override
	public List<WearingSubDto> getDetailList() {
		List<WearingSubDto> list=session.selectList("wearing.getDetailList");
		return list;
	}
}
