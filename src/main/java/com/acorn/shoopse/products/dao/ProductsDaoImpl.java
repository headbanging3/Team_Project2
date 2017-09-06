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
	@Override
	public List<ProductsDto> getpList(ProductsDto dto) {
		List<ProductsDto> plist = session.selectList("products.getpList", dto);
		for(ProductsDto temp:plist){
			System.out.println("getpList::"+temp.toString());
		}
		return plist;
	}
	@Override
	public List<ProductsDto> getKindList(ProductsDto dto) {
		List<ProductsDto> kindList = session.selectList("products.getKindList",dto);
		return kindList;
	}

	@Override
	public List<String> getdetail(int p_code) {
		List<String> list=session.selectList("products.getdetail", p_code);
		return list;
	}

	@Override
	public List<String> subImg(int p_code) {
		List<String> dto=session.selectList("products.subImg", p_code);
		return dto;
	}

	@Override
	public String mainImg(int p_code) {
		String mainImg = session.selectOne("products.mainImg", p_code);
		return mainImg;
	}

	@Override
	public ProductsDto getinfo(int p_code) {
		
		ProductsDto dto=  session.selectOne("products.getinfo", p_code);
		return dto;
	}


}
