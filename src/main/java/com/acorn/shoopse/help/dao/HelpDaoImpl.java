package com.acorn.shoopse.help.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.shoopse.help.dto.HelpDto;
import com.acorn.shoopse.help.dto.HelpQnaListDto;

@Repository
public class HelpDaoImpl implements HelpDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(HelpDto dto) {
		session.insert("help.insert", dto);
	}

	@Override
	public int getNum(String id) {
		int num=session.selectOne("help.getNum", id);
		return num;
	}

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public HelpDto getData(String id) {
		
		return null;
	}

	@Override
	public List<HelpDto> getList(int mem_num) {
		List<HelpDto> list=session.selectList("help.getList",mem_num);
		return list;
	}

	@Override
	public void increaseViewCount(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return 0;
	}
	//웅환 ================================================================
	@Override
	public List<HelpQnaListDto> getQnaList(HelpQnaListDto dto) {
		List<HelpQnaListDto> list=session.selectList("help.getQnaList",dto);
		return list;
	}

	@Override
	public int getQnaCount() {
		int count=0;
		count=session.selectOne("help.getQnaCount");
		
		return count;
	}

	@Override
	public boolean qnaInsert(HelpQnaListDto dto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public HelpQnaListDto qnaDetail(int listnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void qnaDelete(int listnum) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public HelpQnaListDto getQnaDetail(int listnum) {
		HelpQnaListDto resultDto=session.selectOne("help.getQnaDetail",listnum);
		return resultDto;
	}

}
