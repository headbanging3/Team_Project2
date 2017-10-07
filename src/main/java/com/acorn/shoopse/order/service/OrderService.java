package com.acorn.shoopse.order.service;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.order.dto.OrderActionDto;
import com.acorn.shoopse.order.dto.OrderCartDto;

import com.acorn.shoopse.order.dao.OrderDao;

public interface OrderService {
	/* ************************* 주문 CRUD ************************* */
	public void insert(HttpServletRequest request, OrderDao dao);
	public ModelAndView getList();
	
	
	/* ************************* 장바구니 CRUD ************************* */
	public ModelAndView list(int mem_num);//장바구니 리스트
	public ModelAndView itemCount(OrderCartDto dto);//카트 개수조절
	public ModelAndView getAddr(int mem_num);//주문주소가져오기
	public void orderInsert(OrderActionDto dto);//주문인서트
	public void orderDeleteAjax(List<OrderCartDto> dto);//주문삭제
	public ModelAndView wholeOrderList();//
	public ModelAndView cartInsert(OrderCartDto dto);//장바구니 입력
	
	public ModelAndView orderlist(int mem_num);//주문 리스트
	public ModelAndView orderListDetail(int o_no);
}
