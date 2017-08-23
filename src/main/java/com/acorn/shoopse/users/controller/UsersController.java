
package com.acorn.shoopse.users.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.users.dto.UsersDto;
import com.acorn.shoopse.users.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	private UsersService usersService;

	// 로그인/회원가입 팝업 페이지 이동
	
	@RequestMapping("/popup/loginresult")
	public ModelAndView loginresult(@ModelAttribute UsersDto dto, HttpServletRequest request){

		ModelAndView mView= usersService.signin(dto, request);
		mView.setViewName("/popup/loginresult");
		return mView;
	}

	@RequestMapping("/popup/signinform")
	public String signinForm(){
		return "popup/signinform";

	}
	@RequestMapping("/logout")
	public ModelAndView signout(HttpSession session){
		session.invalidate();
		ModelAndView mView=new ModelAndView();
		mView.addObject("url", session.getServletContext().getContextPath());
		mView.setViewName("redirect:/home.do");
		return mView;

	}

	//사용자 정보 제공 동의 페이지 이동
	@RequestMapping("/users/agree_info")
	public String agreeInfo(){
		return "users/agree_info";
	}
	//회원가입 폼 이동
	@RequestMapping("/users/signup_form")
	public String signupForm(){
		return "users/signup_form";
	}
	//회원가입시 아이디 중복확인
	@RequestMapping("/users/overlab")
	public ModelAndView overLab(@RequestParam String id){
		ModelAndView mView=new ModelAndView();
		mView=usersService.isOverlab(id);
		mView.setViewName("users/overlab");
		return mView;
	}
	//회원가입 이후 홈 리다이렉트
	@RequestMapping("/users/signup")
	public String signup(@ModelAttribute UsersDto dto){
		usersService.usersSignup(dto);
		return "redirect:/home.do";
	}
	//아이디 찾는 페이지로 이동
	@RequestMapping("/users/find_id")
	public String findIdForm(){
		return "users/find_id";
	}
	//아이디 찾기
	@RequestMapping("/users/find_id_ajax")
	public ModelAndView findIdAjax(@ModelAttribute UsersDto dto){
		ModelAndView mView=usersService.findId(dto);
		mView.setViewName("users/find_id_ajax");
		System.out.println("mView 리턴전");
		return mView;
	}
	//비밀번호 찾기
	@RequestMapping("/users/find_pwd_ajax")
	public ModelAndView findPwdAjax(@ModelAttribute UsersDto dto){
		ModelAndView mView=usersService.findPwd(dto);
		mView.setViewName("users/find_pwd_ajax");
		System.out.println("mView 리턴전");
		return mView;
	}
	
	@RequestMapping("/users/info")
	public ModelAndView privateinfo(HttpServletRequest request){
		ModelAndView mView=usersService.getData(request);
		mView.setViewName("users/info");
		return mView;
	}
	
	@RequestMapping("/users/updateform")
	public ModelAndView privateupdateForm(HttpServletRequest request){
		String id=(String)request.getSession().getAttribute("id");
		ModelAndView mView=usersService.getData(request);
		mView.setViewName("users/updateform");
		return mView;
	}
	
	@RequestMapping("/users/delete")
	public String privatedelete(@RequestParam int num, HttpServletRequest request){
		usersService.delete(num, request);
		
		return "redirect:/home.do";
	}
	
	@RequestMapping("/users/update")
	public String privateupdate(@ModelAttribute UsersDto dto){
		usersService.update(dto);	
		
		return "redirect:/home.do";
	}
}






