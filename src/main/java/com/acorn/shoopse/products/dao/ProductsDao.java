package com.acorn.shoopse.products.dao;

import java.util.List;

import com.acorn.shoopse.products.dto.ProductsDto;

public interface ProductsDao {
	public List<ProductsDto> getList();
	public List<ProductsDto> getpList(ProductsDto dto);
	public List<ProductsDto> getKindList(ProductsDto dto);
	public List<String> getdetail(int p_code);
	public List<String> subImg(int p_code);
	public String mainImg(int p_code);
	public ProductsDto getinfo(int p_code);
	
	
}
