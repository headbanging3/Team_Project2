package com.acorn.shoopse.agency.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.users.dto.UsersDto;

@Repository
public class AgencyDaoImpl implements AgencyDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(AgencyDto dto) {
		session.insert("agency.insert", dto);
	}

	@Override
	public List<AgencyDto> getList() {
		List<AgencyDto> list = session.selectList("agency.getList");
		return list;
	}

	@Override
	public List<ProductsDto> getpList() {
		List<ProductsDto> list = session.selectList("agency.getpList");
		return list;
	}
}
