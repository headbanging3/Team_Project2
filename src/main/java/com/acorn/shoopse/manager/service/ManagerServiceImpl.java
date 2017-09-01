package com.acorn.shoopse.manager.service;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.manager.dao.ManagerDao;
import com.acorn.shoopse.manager.dto.ManagerDto;
import com.acorn.shoopse.order.dto.OrderListDto;
import com.acorn.shoopse.products.dto.ProductsDto;
import com.acorn.shoopse.products.dto.ProductsImgsDto;
import com.acorn.shoopse.products.dto.ProductsKindDto;
import com.acorn.shoopse.users.dao.UsersDao;
import com.acorn.shoopse.users.dto.UsersDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	private ManagerDao managerDao;
	
	@Override
	public void insert(HttpServletRequest request, UsersDao dao) {
		// TODO Auto-generated method stub
		
	}

	
	
	@Override
	public ModelAndView list() {
		List<ManagerDto> list  = managerDao.getList();
		ModelAndView mView = new ModelAndView();
		mView.addObject("list", list);

		return mView;
	}


	@Override
	public void delete(int mem_num) {
		managerDao.delete(mem_num);
		
	}

	@Override
	public ModelAndView getData(int mem_num) {
		ModelAndView mView = new ModelAndView();
		if(mem_num>=1) {
			ManagerDto dto = managerDao.getData(mem_num);
			mView.addObject("dto", dto);
		}
		return mView;
	}

	@Override
	public void update(ManagerDto dto) {
		managerDao.update(dto);
	}

	@Override
	public ModelAndView p_list() {
		List<ProductsDto> p_list= managerDao.p_list();
		ModelAndView mView= new ModelAndView();
		mView.addObject("list",p_list);
		return mView;
	}

	@Override
	public ModelAndView getCategory() {
		ModelAndView mView=new ModelAndView();
		List<ProductsKindDto> categoryList=managerDao.getCategory();
		mView.addObject("categoryList", categoryList);
		return mView;
	}
	

	@Override
	public List<ProductsKindDto> getDivision(int parent_kind_code) {
		List<ProductsKindDto> divisionList=managerDao.getDivision(parent_kind_code);
		return divisionList;
	}

	
	@Override		//상품 등록
	public void productsInsert(ProductsDto dto, 
				HttpServletRequest request) {
	
		//파일을 저장할 폴더의 절대 경로를 얻어온다.
		String realPath=request.getSession()
				.getServletContext().getRealPath("/resources/img");
		
		//MultipartFile 객체의 참조값 얻어오기
		//FileDto 에 담긴 MultipartFile 객체의 참조값을 얻어온다.
		MultipartFile mFile=dto.getFile();
		String orgFileName=mFile.getOriginalFilename();
	
		//p_main_img에 파일 이름 설정
		//dto.setP_main_img(orgFileName);
	
		//저장할 파일의 상세 경로
		String filePath=realPath+File.separator;
		//디렉토리를 만들 파일 객체 생성
		File file=new File(filePath);
		if(!file.exists()){//디렉토리가 존재하지 않는다면
			file.mkdir();//디렉토리를 만든다.
		}
		//파일 시스템에 저장할 파일명을 만든다. (겹치치 않게)
		String saveFileName=System.currentTimeMillis()+orgFileName;
		try{
			// /resources/img 폴더에 파일을 저장한다.
			mFile.transferTo(new File(filePath+saveFileName));
		}catch(Exception e){
			e.printStackTrace();
		}
		dto.setP_main_img(saveFileName);
		
		managerDao.productsInsert(dto);
		
	}
	
	
	
	
	@Override		// 상품 삭제
	public void productsDelete(HttpServletRequest request) {
		String[] chs=request.getParameterValues("chname");

		for(int i=0; i<chs.length; i++){
			String[] tmp=chs[i].split(":");
		
			//1. 파일 시스템에서 물리적인 삭제
			String path="";
			try{
				path=request.getServletContext().getRealPath("/resources/img")+
						File.separator+tmp[1];
				new File(path).delete();
			}catch(Exception e){}
			
			managerDao.productsDelete(tmp[0]);
		}
	}

	@Override		// 업데이트 폼 이동
	public ModelAndView productsUpdateForm(String p_code) {
		ProductsDto dto=managerDao.productsUpdateForm(p_code);
		List<ProductsKindDto> categoryList=managerDao.getCategory();
		
		ModelAndView mView=new ModelAndView();
		mView.addObject("categoryList", categoryList);
		mView.addObject("dto",dto);
		return mView;
	}

	@Override		//상품 업데이트
	public void productsUpdate(ProductsDto dto, HttpServletRequest request) {
		//파일을 저장할 폴더의 절대 경로를 얻어온다.
		String realPath=request.getSession()
				.getServletContext().getRealPath("/resources/img");
		System.out.println(realPath);
			
		//MultipartFile 객체의 참조값 얻어오기
		//FileDto 에 담긴 MultipartFile 객체의 참조값을 얻어온다.
		MultipartFile mFile=dto.getFile();
		String orgFileName=mFile.getOriginalFilename();
					//p_main_img에 파일 이름 설정
		//dto.setP_main_img(orgFileName);
					//저장할 파일의 상세 경로
		String filePath=realPath+File.separator;
		//디렉토리를 만들 파일 객체 생성
		File file=new File(filePath);
		if(!file.exists()){//디렉토리가 존재하지 않는다면
			file.mkdir();//디렉토리를 만든다.
		}
		//파일 시스템에 저장할 파일명을 만든다. (겹치치 않게)
		String saveFileName=System.currentTimeMillis()+orgFileName;
			try{
			// /resources/img 폴더에 파일을 저장한다.
			mFile.transferTo(new File(filePath+saveFileName));
		}catch(Exception e){
			e.printStackTrace();
		}
		dto.setP_main_img(saveFileName);
				
		managerDao.productsUpdate(dto);
	}

	@Override
	public ModelAndView userOrderList(int mem_num) {
		ModelAndView mView = new ModelAndView();
		ManagerDto dto = managerDao.getData(mem_num);
		OrderListDto dtoa = managerDao.userOrderList(mem_num);
		mView.addObject("dto", dto);
		mView.addObject("dtoa", dtoa);
		return mView;
	}

	@Override
	public void subimgsInsert(HttpServletRequest request, ProductsImgsDto imgsDto) {
		List<MultipartFile> imgs=imgsDto.getSubImgs();
		
		//파일을 저장할 폴더의 절대 경로를 얻어온다.
		String realPath=request.getSession()
				.getServletContext().getRealPath("/resources/img");
		
		for(int i=0; i<imgs.size(); i++){
			//MultipartFile 객체의 참조값 얻어오기
			//FileDto 에 담긴 MultipartFile 객체의 참조값을 얻어온다.
			MultipartFile mFile=imgs.get(i);
			String orgFileName=mFile.getOriginalFilename();
		
			//p_main_img에 파일 이름 설정
			//dto.setP_main_img(orgFileName);
		
			//저장할 파일의 상세 경로
			String filePath=realPath+File.separator;
			//디렉토리를 만들 파일 객체 생성
			File file=new File(filePath);
			if(!file.exists()){//디렉토리가 존재하지 않는다면
				file.mkdir();//디렉토리를 만든다.
			}
			//파일 시스템에 저장할 파일명을 만든다. (겹치치 않게)
			String saveFileName=System.currentTimeMillis()+orgFileName;
			try{
				// /resources/img 폴더에 파일을 저장한다.
				mFile.transferTo(new File(filePath+saveFileName));
			}catch(Exception e){
				e.printStackTrace();
			}
			
			imgsDto.setP_sub_img(saveFileName);
			
			managerDao.subImgsInsert(imgsDto);
		}
		
				
		
		
		
		
//		MultipartRequest multi=null;
//		File file=null;
//		
//		int sizeLimit=30*1024*1024;
//		String formName="";
//		String fileName="";
//		
//		String realPath=request.getSession()
//				.getServletContext().getRealPath("/resources/img");
//		
//		try{
//			multi=new MultipartRequest(request, realPath, sizeLimit, "UTF-8", 
//							new DefaultFileRenamePolicy());
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		if(multi==null){
//			response.setContentType("text/html; charset=UTF=8");
//			response.setCharacterEncoding("UTF-8");
//			response.getWriter().write("<script>alert('업로드 실패'); location.href='';</script>");
//			return;
//		}
//		
//		Enumeration forms=multi.getFileNames();
//		
//
//		while(forms.hasMoreElements()){
//			formName=(String)forms.nextElement();
//			fileName=multi.getFilesystemName(formName);
//			if(fileName !=null);
//			file=multi.getFile(formName);
//		}
//		
		
		
	}
}
