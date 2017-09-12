package com.acorn.shoopse.order.dao;

import java.util.List;

import com.acorn.shoopse.order.dto.OrderActionDto;
import com.acorn.shoopse.order.dto.OrderCartDto;
import com.acorn.shoopse.users.dto.UsersDto;

public interface OrderCartDao {
	public List<OrderCartDto> getCartList(int mem_num);
	public OrderCartDto itemCount(OrderCartDto dto);
	public UsersDto getAddr(int mem_num);
	public void orderInsert(OrderActionDto dto);
	public void orderDeleteAjax(List<OrderCartDto> dto);
	public String cartInsert(OrderCartDto dto);
}
