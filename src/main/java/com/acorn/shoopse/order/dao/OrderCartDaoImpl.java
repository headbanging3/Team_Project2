package com.acorn.shoopse.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.shoopse.order.dto.OrderActionDto;
import com.acorn.shoopse.order.dto.OrderCartDto;
import com.acorn.shoopse.users.dto.UsersDto;

@Repository
public class OrderCartDaoImpl implements OrderCartDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<OrderCartDto> getCartList(int mem_num) {
		List<OrderCartDto> cartList = session.selectList("cart.getList",mem_num);
		return cartList;
	}

	@Override
	public OrderCartDto itemCount(OrderCartDto dto) {
		session.update("cart.countUpdate",dto);//개수늘리고
		OrderCartDto cartDto = session.selectOne("cart.countSelect",dto);//json뿌리려면 셀릭트해온다
		return cartDto;
	}

	@Override
	public UsersDto getAddr(int mem_num) {
		UsersDto dto =session.selectOne("cart.getAddr",mem_num);
		return dto;
	}

	@Override
	public void orderInsert(OrderActionDto dto) {
		session.update("cart.orderUpdate",dto);
		session.insert("cart.reqAddrInsert",dto);
	}

	@Override
	public void orderDeleteAjax(List<OrderCartDto> dto) {
		for(OrderCartDto temp:dto){	
			session.delete("cart.orderDelete",temp);
		}	
	}

	@Override
	public String cartInsert(OrderCartDto dto) {
		String result="ok";
		OrderCartDto cart = session.selectOne("cart.isOrder",dto);//장바구니상태있나확인
		if(cart==null){//장바구니상태가 없으면
			System.out.println("카트널");
			session.insert("cart.orderTB_insert",dto);//장바구니 만들어준다
			cart = session.selectOne("cart.isOrder",dto);//장바구니번호 가져오고
		}
	
		dto.setO_no(cart.getO_no());//세팅
		System.out.println("o_no::"+dto.getO_no());
		try{
			session.insert("cart.orderSUB_insert",dto);//그리고나서 서브 인서트
		}catch (Exception e) {
			result="fail";
		}
		return result;
	}

	@Override
	public List<OrderCartDto> getOrderList(int mem_num) {
		List<OrderCartDto> orderList = session.selectList("cart.getOrderList",mem_num);
		for(OrderCartDto temp:orderList){
			System.out.println("getpList::"+temp.toString());
		}
		
		return orderList;
	}
}
