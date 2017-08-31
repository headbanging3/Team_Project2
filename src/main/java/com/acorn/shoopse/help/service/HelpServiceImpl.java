package com.acorn.shoopse.help.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.help.dao.HelpDao;
import com.acorn.shoopse.help.dto.HelpDto;
import com.acorn.shoopse.help.dto.HelpQnaListDto;

@Service
public class HelpServiceImpl implements HelpService{
	//한 페이지에 나타낼 로우의 갯수
	private static final int PAGE_ROW_COUNT=10;
	//하단 디스플레이 페이지 갯수
	private static final int PAGE_DISPLAY_COUNT=5;

	@Autowired
	private HelpDao helpDao;

	@Override
	public void insert(HelpDto dto) {
		helpDao.insert(dto);
	}

	@Override
	public int getNum(String id) {
		int num=helpDao.getNum(id);
		return num;
	}

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void increaseViewCount(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ModelAndView getList(int mem_num) {
		List<HelpDto> list=helpDao.getList(mem_num);
		ModelAndView mView=new ModelAndView();
		mView.addObject("list", list);		
		return mView;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//웅환 =====================================================
	@Override
	public ModelAndView getQnaList(HttpServletRequest request) {
		
		//보여줄 페이지의 번호
		int pageNum=1;		
		
		//보여줄 페이지의 번호가 파라미터로 전달되는지 읽어온다.
		String strPageNum=request.getParameter("pageNum");
		
		if(strPageNum != null){//페이지 번호가 파라미터로 넘어온다면
			//페이지 번호를 설정한다.
			pageNum=Integer.parseInt(strPageNum);
		}
		
		
		//보여줄 페이지 데이터의 시작 ResultSet row 번호
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		//보여줄 페이지 데이터의 끝 ResultSet row 번호
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		
		//전체 row의 갯수를 DB에서 얻어온다.
		int totalRow=helpDao.getQnaCount();
		//전체 페이지의 갯수 구하기
		int totalPageCount=
				(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
		//시작페이지 번호
		int startPageNum=
				1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
		//끝 페이지 번호
		int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
		//끝 페이지 번호가 잘못된 값이라면
		if(totalPageCount < endPageNum){
			endPageNum=totalPageCount;
		}
		//시작 row번호와 끝 row번호를 dto에 담는다.
		HelpQnaListDto dto=new HelpQnaListDto();
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
				
		//1. MemberDao객체를 이용해서 글목록을 얻어온다.
		List<HelpQnaListDto> list=helpDao.getQnaList(dto);
		request.setAttribute("list", list);
	
		ModelAndView mView=new ModelAndView();
		mView.addObject("list",list);
		mView.addObject("pageNum", pageNum);
		mView.addObject("startPageNum",startPageNum);
		mView.addObject("endPageNum", endPageNum);
		mView.addObject("totalPageCount", totalPageCount);
		return mView;
	}

	@Override
	public int getQnaCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void qnaInsert(HelpQnaListDto dto, HttpServletRequest request) {
		String id=(String)request.getSession().getAttribute("id");
		String content=request.getParameter("ir1");
		
		dto.setQna_writer(id);
		dto.setQna_content(content);
		
		helpDao.qnaInsert(dto);
	}

	@Override
	public HelpQnaListDto qnaDetail(int listnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void qnaDelete(int listnum) {
		helpDao.qnaDelete(listnum);
		
	}

	@Override
	public ModelAndView getQnaDetail(HttpServletRequest request) {
		int listnum=Integer.parseInt(request.getParameter("qna_listnum"));
		HelpQnaListDto dto=helpDao.getQnaDetail(listnum);
		ModelAndView mView=new ModelAndView();
		mView.addObject("dto", dto);
		return mView;
	}

	@Override
	public void qnaUpdate(HelpQnaListDto dto, HttpServletRequest request) {
		String content=request.getParameter("ir1");
		dto.setQna_content(content);
		
		helpDao.qnaUpdate(dto);
	}

	

}
