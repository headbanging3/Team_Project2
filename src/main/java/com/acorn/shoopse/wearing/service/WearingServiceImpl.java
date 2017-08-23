package com.acorn.shoopse.wearing.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dao.AgencyDao;
import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.wearing.dao.WearingDao;
import com.acorn.shoopse.wearing.dto.WearingDto;

@Service
public class WearingServiceImpl implements WearingService {

	@Autowired
	private WearingDao wearingDao;
	//회원가입
	@Override
	public void insert(WearingDto dto) {
		wearingDao.insert(dto);		
	}
	@Override
	public ModelAndView getList() {
		List<WearingDto> list = wearingDao.getList();
		ModelAndView mView = new ModelAndView();
		mView.addObject("list", list);
		return mView;
	}
}
