package com.acorn.shoopse.agency.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dao.AgencyDao;
import com.acorn.shoopse.agency.dto.AgencyDto;

@Service
public class AgencyServiceImpl implements AgencyService {

	@Autowired
	private AgencyDao agencyDao;
	//회원가입
	@Override
	public void insert(AgencyDto dto) {
		agencyDao.insert(dto);		
	}
	@Override
	public ModelAndView getList() {
		List<AgencyDto> list = agencyDao.getList();
		ModelAndView mView = new ModelAndView();
		mView.addObject("list", list);
		return mView;
	}
}
