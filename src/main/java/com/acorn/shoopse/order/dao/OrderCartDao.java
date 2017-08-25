package com.acorn.shoopse.order.dao;

import java.util.List;

import com.acorn.shoopse.order.dto.OrderCartDto;

public interface OrderCartDao {
	public List<OrderCartDto> getCartList(int mem_num);
}
