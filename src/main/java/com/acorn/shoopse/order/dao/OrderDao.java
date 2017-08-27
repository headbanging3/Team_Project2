package com.acorn.shoopse.order.dao;
import java.util.List;
import com.acorn.shoopse.order.dto.OrderDto;



public interface OrderDao {
	
	public void insert(OrderDto dto);
	public List<OrderDto> getList();
}
