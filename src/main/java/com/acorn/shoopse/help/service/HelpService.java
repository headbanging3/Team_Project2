package com.acorn.shoopse.help.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.help.dto.HelpDto;
import com.acorn.shoopse.help.dto.HelpQnaListDto;

public interface HelpService {
	public void insert(HelpDto dto);//문의 insert
	public int getNum(String id);//회원번호 조회
	public void delete(int num);
	public void increaseViewCount(int num);
	public ModelAndView getList(int mem_num); //나의 list 불러오기
	public int getCount();
	
	//웅환 
	public ModelAndView getQnaList(HttpServletRequest request);
	public ModelAndView getQnaDetail(HttpServletRequest request);
	public int getQnaCount();
	public boolean qnaInsert(HelpQnaListDto dto);
	public HelpQnaListDto qnaDetail(int listnum);
	public void qnaDelete(int listnum);
}
