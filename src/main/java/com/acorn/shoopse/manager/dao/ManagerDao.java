package com.acorn.shoopse.manager.dao;

import java.util.List;

import com.acorn.shoopse.manager.dto.ManagerDto;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsKindDto;

public interface ManagerDao {

	public void insert(ManagerDto dto);
	public ManagerDto getData(int mem_num);
	public List<ManagerDto> getList();
	public void update(ManagerDto dto);
	public void delete(int mem_num);
	public List<ProductsDto> p_list();
	public List<ProductsKindDto> getCategory();
	public List<ProductsKindDto> getDivision(int parent_kind_code);
	public void productsInsert(ProductsDto dto);
	public void productsDelete(String p_code);
}
