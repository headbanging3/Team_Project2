
package com.acorn.shoopse.users.controller;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.RSAPublicKeySpec;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.users.dto.UsersDto;
import com.acorn.shoopse.users.service.UsersService;

@Controller
public class UsersController {

	private static String RSA_WEB_KEY = "_RSA_WEB_Key_"; // 개인키 session key
    private static String RSA_INSTANCE = "RSA"; // rsa transformation
	
    @Autowired
	private UsersService usersService;

	// 로그인/회원가입 팝업 페이지 이동
	
	@RequestMapping("/popup/loginresult")
	public ModelAndView loginresult(HttpServletRequest request) throws Exception{
        String userId = (String) request.getParameter("USER_ID");
        String userPw = (String) request.getParameter("USER_PW");
 
//        HttpSession session = request.getSession();
//        PrivateKey privateKey = (PrivateKey) session.getAttribute("_RSA_WEB_Key_");
//        
//        // 복호화
//        userId = decryptRsa(privateKey, userId);
//        userPw = decryptRsa(privateKey, userPw);
//        
//        // 개인키 삭제
//        session.removeAttribute("_RSA_WEB_Key_");
 
        UsersDto dto=new UsersDto();
        dto.setId(userId);
        dto.setPwd(userPw);
        
        ModelAndView mView= usersService.signin(dto, request);
		mView.setViewName("/popup/loginresult");
		return mView;
	}
	// 로그인 폼 이동
	@RequestMapping("/popup/signinform")
	public String signinForm(HttpServletRequest request) throws Exception{
        // RSA 키 생성
        //initRsa(request);

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
		dto.setMem_flag("1");
		usersService.usersSignup(dto);
		
		return "redirect:/home.do";
	}
	//비회원가입 lks
	@RequestMapping("/products/notuserSignup")
	public String notuserSignup(@ModelAttribute UsersDto dto, HttpServletRequest request){
		//System.out.println("mem_flag"+dto.getMem_flag());
		usersService.notusersSignup(dto, request);
		System.out.println("notUserMem"+request.getSession().getAttribute("mem_num"));
		System.out.println("notUserFlag"+request.getSession().getAttribute("mem_flag"));
		return "/products/products_detail";
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
		return mView;
	}
	//비밀번호 찾기
	@RequestMapping("/users/find_pwd_ajax")
	public ModelAndView findPwdAjax(@ModelAttribute UsersDto dto){
		ModelAndView mView=usersService.findPwd(dto);
		mView.setViewName("users/find_pwd_ajax");
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
	
	//=======================로그인 암호화(RSA) 메소드=======================
	/**
     * 복호화
     * 
     * @param privateKey
     * @param securedValue
     * @return
	 * @throws NoSuchPaddingException 
	 * @throws NoSuchAlgorithmException 
	 * @throws InvalidKeyException 
	 * @throws BadPaddingException 
	 * @throws IllegalBlockSizeException 
	 * @throws UnsupportedEncodingException 
     * @throws Exception
     */
//    private String decryptRsa(PrivateKey privateKey, String securedValue) throws NoSuchAlgorithmException, 
//    			NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
//        
//    	Cipher cipher = Cipher.getInstance("RSA");
//        byte[] encryptedBytes = hexToByteArray(securedValue);
//        cipher.init(Cipher.DECRYPT_MODE, privateKey);
//        byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
//        String decryptedValue = new String(decryptedBytes, "utf-8"); // 문자 인코딩 주의.
//        
//        return decryptedValue;
//    }
// 
    /**
     * 16진 문자열을 byte 배열로 변환한다.
     * 
     * @param hex
     * @return
     */
//    public static byte[] hexToByteArray(String hex) {
//        if (hex == null || hex.length() % 2 != 0) { return new byte[] {}; }
// 
//        byte[] bytes = new byte[hex.length() / 2];
//        for (int i = 0; i < hex.length(); i += 2) {
//            byte value = (byte) Integer.parseInt(hex.substring(i, i + 2), 16);
//            bytes[(int) Math.floor(i / 2)] = value;
//        }
//        return bytes;
//    }
// 
    /**
     * rsa 공개키, 개인키 생성
     * 
     * @param request
     */
//    public void initRsa(HttpServletRequest request) {
//        HttpSession session = request.getSession();
// 
//        KeyPairGenerator generator;
//        try {
//            generator = KeyPairGenerator.getInstance("RSA");
//            generator.initialize(2048);
// 
//            KeyPair keyPair = generator.genKeyPair();
//            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
//            PublicKey publicKey = keyPair.getPublic();
//            PrivateKey privateKey = keyPair.getPrivate();
// 
//            session.setAttribute("_RSA_WEB_Key_", privateKey); // session에 RSA 개인키를 세션에 저장
// 
//            RSAPublicKeySpec publicSpec = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);
//            String publicKeyModulus = publicSpec.getModulus().toString(16);
//            String publicKeyExponent = publicSpec.getPublicExponent().toString(16);
// 
//            request.setAttribute("RSAModulus", publicKeyModulus); // rsa modulus 를 request 에 추가
//            request.setAttribute("RSAExponent", publicKeyExponent); // rsa exponent 를 request 에 추가
//        } catch (Exception e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//    }
	
}






