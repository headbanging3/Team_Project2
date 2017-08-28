package com.acorn.shoopse.help.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.help.dto.HelpDto;
import com.acorn.shoopse.help.dto.HelpQnaListDto;
import com.acorn.shoopse.help.service.HelpService;
import com.acorn.shoopse.users.dto.UsersDto;
import com.acorn.shoopse.users.service.UsersService;
import com.sun.tracing.dtrace.ModuleAttributes;

@Controller
public class HelpController {

	@Autowired
	private HelpService helpService;
	@Autowired
	private UsersService usersService;
	
	//고객센터 인덱스페이지로 이동 (삭제)
	@RequestMapping("/help")
	public String home(HttpServletRequest request){
		
		return "help/index";
	}
	//문의폼 이동ㄴ
	@RequestMapping("/helpinsertform")
	public ModelAndView insertform(HttpServletRequest request){
		//유저의 정보 가져오는 메소드 생성할것!
		//로그인된 아이디를 얻어온다.
		ModelAndView mView=usersService.getData(request);
		mView.setViewName("help/helpinsertform");
		return mView;
	}
	//문의 폼 전송
	@RequestMapping("/helpinsert")
	public String insert(HttpServletRequest request,
			@ModelAttribute HelpDto dto){
		
		helpService.insert(dto);
		request.setAttribute("dto", dto);
		return "redirect:/helplist.do";
	}
	//insert 후 list.do
	@RequestMapping("/helplist")
	public ModelAndView getHelpList(HttpSession session){
		String id=(String) session.getAttribute("id");
		int mem_num=helpService.getNum(id); //회원번호 조회
		ModelAndView mView=helpService.getList(mem_num); //나의 게시글 가져오기
		mView.setViewName("help/helplist");
		return mView;
	}
	
	
	//웅환 ==============================================================
	// 상품문의 목록
	@RequestMapping("/help/qnalist")
	public ModelAndView getQnaList(HttpServletRequest request){
		ModelAndView mView=helpService.getQnaList(request);
		mView.setViewName("help/qnalist");
		return mView;
	}
	// 상품문의 자세히 보기
	@RequestMapping("/help/qnadetail")
	public ModelAndView getQnaDetail(HttpServletRequest request){
		ModelAndView mView=helpService.getQnaDetail(request);
		mView.setViewName("help/qnadetail");
		return mView;
	}
	// 상품문의 등록 폼
	@RequestMapping("/help/qnainsert_form")
	public String qnaInsertForm(){
		return "help/qnainsert_form";
	}
	// 상품문의 등록
	@RequestMapping("/help/qnainsert")
	public String qnaInsert(@ModelAttribute HelpQnaListDto dto, HttpServletRequest request){
		helpService.qnaInsert(dto,request);
		return "redirect:/help/qnalist.do";
	}
	// 상품문의 삭제
	@RequestMapping("/help/qnadelete")
	public String qnaDelete(@RequestParam int listnum){
		helpService.qnaDelete(listnum);
		return "redirect:/help/qnalist.do";
	}
	// 상품문의 수정 폼
	@RequestMapping("/help/qnaupdate_form")
	public ModelAndView qnaUpdateForm(HttpServletRequest request){
		ModelAndView mView=helpService.getQnaDetail(request);
		mView.setViewName("help/qnaupdate_form");
		return mView;
	}
	// 상품문의 수정
	@RequestMapping("/help/qnaupdate")
	public String qnaUpdate(@ModelAttribute HelpQnaListDto dto, HttpServletRequest request){
		helpService.qnaUpdate(dto, request);
		String location="/help/qnadetail.do?qna_listnum="+dto.getQna_listnum();
		return "redirect:/"+location;
	}
}
