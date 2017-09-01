package com.acorn.shoopse.help.dao;

import java.util.List;

import com.acorn.shoopse.help.dto.HelpDto;
import com.acorn.shoopse.help.dto.HelpQnaListDto;


public interface HelpDao {
	//재두형
	public void insert(HelpDto dto);
	public int getNum(String id);
	public void delete(int num);
	public HelpDto getData(String id);
	public List<HelpDto> getList(int mem_num);
	public void increaseViewCount(int num);
	public int getCount();
	//웅환
	public List<HelpQnaListDto> getQnaList(HelpQnaListDto dto);
	public HelpQnaListDto getQnaDetail(int listnum);
	public int getQnaCount();
	public void qnaInsert(HelpQnaListDto dto);
	public HelpQnaListDto qnaDetail(int listnum);
	public void qnaDelete(int listnum);
	public void qnaUpdate(HelpQnaListDto dto);
}
