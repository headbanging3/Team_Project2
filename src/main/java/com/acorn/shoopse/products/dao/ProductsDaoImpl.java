package com.acorn.shoopse.products.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.shoopse.products.dto.ProductsDto;

@Repository
public class ProductsDaoImpl implements ProductsDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public List<ProductsDto> getList() {
		List<ProductsDto> list=session.selectList("products.getList");
		
		return list;
	}

}
