package com.acorn.shoopse.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.shoopse.manager.dto.ManagerDto;
import com.acorn.shoopse.order.dto.OrderDto;
import com.acorn.shoopse.order.dto.OrderListDto;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsImgsDto;
import com.acorn.shoopse.products.dto.ProductsKindDto;


@Repository
public class ManagerDaoImpl implements ManagerDao{

	
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(ManagerDto dto) {
		session.insert("manager.insert", dto);
		
	}

	@Override
	public ManagerDto getData(int mem_num) {
		ManagerDto dto = session.selectOne("manager.getData", mem_num);
		return dto;
	}

	@Override
	public List<ManagerDto> getList() {
		List<ManagerDto> list = session.selectList("manager.getList");
		return list;
	}

	@Override
	public void update(ManagerDto dto) {
		session.update("manager.update", dto);
		
	}

	@Override
	public void delete(int mem_num) {
		session.delete("manager.delete", mem_num);
		
	}

	@Override
	public List<ProductsDto> p_list() {
		List<ProductsDto> p_list=session.selectList("products.getList");
		return p_list;
	}

	@Override
	public List<ProductsKindDto> getCategory() {
		List<ProductsKindDto> list=session.selectList("products.getCategory");
		return list;
	}
	@Override
	public List<ProductsKindDto> getDivision(int parent_kind_code) {
		List<ProductsKindDto> list=session.selectList("products.getDivision",parent_kind_code);
		return list;
	}

	@Override
	public void productsInsert(ProductsDto dto) {
		session.insert("products.productsInsert",dto);
		
	}

	@Override
	public void productsDelete(String p_code) {
		//String p_code_st=Integer.toString(p_code);
		session.delete("products.productsDelete",p_code);
		
	}

	@Override
	public ProductsDto productsUpdateForm(String p_code) {
		ProductsDto dto=session.selectOne("products.getPdData",p_code);
		return dto;
	}

	@Override
	public void productsUpdate(ProductsDto dto) {
		session.update("products.productsUpdate", dto);
	}

	@Override
	public OrderListDto userOrderList(int mem_num) {
		OrderListDto dto = session.selectOne("manager.userOrderList", mem_num);
		return dto;
	}

	@Override
	public void subImgsInsert(ProductsImgsDto imgsDto) {
		session.insert("products.subImgsInsert", imgsDto);
		
	}



}
