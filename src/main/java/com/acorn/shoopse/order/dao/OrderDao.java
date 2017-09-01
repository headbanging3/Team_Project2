package com.acorn.shoopse.order.dao;
import java.util.List;
import com.acorn.shoopse.order.dto.OrderDto;
import com.acorn.shoopse.order.dto.WholeOrderDto;



public interface OrderDao {
	public List<OrderDto> getList();
	public void o_Insert(OrderDto dto);
	public OrderDto getData(String id);
	public OrderDto mgetData(String id);
	public List<WholeOrderDto> orderGetList();
}
