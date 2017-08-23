package com.acorn.shoopse.products.dao;

import java.util.List;

import com.acorn.shoopse.products.dto.ProductsDto;

public interface ProductsDao {
	public List<ProductsDto> getList();
}
