package com.acorn.shoopse.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.users.dao.UsersDao;
import com.acorn.shoopse.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersDao usersDao;
	//회원가입
	@Override
	public void usersSignup(UsersDto dto) {
		usersDao.usersSignup(dto);
		
	}
	//아이디 찾기
	@Override
	public ModelAndView findId(UsersDto dto) {
		String id=usersDao.findId(dto);
		ModelAndView mView=new ModelAndView();
		mView.addObject("id",id);
		return mView;
	}
	//비밀번호 찾기
	@Override
	public ModelAndView findPwd(UsersDto dto) {
		String pwd=usersDao.findPwd(dto);
		ModelAndView mView=new ModelAndView();
		mView.addObject("pwd",pwd);
		return mView;
	}
	//회원 가입시 아이디 중복 확인
	@Override
	public ModelAndView isOverlab(String id) {
		String resultswssId=usersDao.isOverlab(id);
		ModelAndView mView=new ModelAndView();
		mView.addObject("id", resultswssId);
		return mView;
	}

	@Override
	public ModelAndView signin(UsersDto dto, HttpServletRequest request) {
		
		//Dao 를 이용해서 유효한 정보인지 확인한다.
		UsersDto user=usersDao.isValid(dto);
		
		ModelAndView mView=new ModelAndView();
		String url=request.getParameter("url");
		
		if(user!=null){
			request.getSession().setAttribute("id", dto.getId());
			request.getSession().setAttribute("mem_num", user.getMem_num());
			request.getSession().setAttribute("mem_flag", user.getMem_flag());
			mView.addObject("url",url);
		}else{			
			String location=request.getContextPath()+
					"/popup/signinform.do?url="+url;
			
			mView.addObject("url",location);
		}
		
		return mView;
	}

	@Override
	public ModelAndView getData(HttpServletRequest request) {
		String id=(String)request.getSession().getAttribute("id");
		ModelAndView mView=new ModelAndView();
		if(id!=null){
			UsersDto dto=usersDao.getData(id);
			mView.addObject("dto", dto);
			System.out.println(id+" 님 로그인중");
		}
		return mView;
		
	}

	@Override
	public void delete(int num, HttpServletRequest request) {
		usersDao.delete(num);
		request.getSession().invalidate();
	}

	@Override
	public void update(UsersDto dto) {
		usersDao.update(dto);
		
	}

	

}
