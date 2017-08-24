package com.acorn.shoopse.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.shoopse.order.dto.OrderCartDto;

@Repository
public class OrderCartDaoImpl implements OrderCartDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<OrderCartDto> getCartList(int mem_num) {
		System.out.println("dao memnum"+mem_num);
		System.out.println("dao?");
		List<OrderCartDto> cartList = session.selectList("cart.getList",mem_num);
		System.out.println("dao2?"+cartList.size());
		for(int i=0; i<cartList.size(); i++){
			System.out.println(i+":"+cartList.get(i).toString());
		}
		return cartList;
	}

}
