<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>네비게이션</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/navbar.css?ver=13" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" />
</head>
<div class="container" id="content2">
		<!-- 메인 로고자리 -->
   	 <div class="navbar-left">
   	 	<a class="navbar-brand" href="${pageContext.request.contextPath }/home.do">
   	 		<img id="logo" src="${pageContext.request.contextPath }/resources/img/homelogo.png"/>
   	 	</a>
   	 </div>
   	 	<!-- 메인메뉴 -->
   	 <div class="header" id="topMenu">
   	 	 <a href="javascript:" id="menu"><i class="fa fa-bars fa-2x" aria-hidden="true"></i></a>
	   	 <ul id="nav">
	   	 	<li><a class="menuLink" href="${pageContext.request.contextPath }/products/products_list.do?p_kind_code=01">NIKE</a></li>
	   	 	<li><a class="menuLink" href="${pageContext.request.contextPath }/products/products_list.do?p_kind_code=02">ADIDAS</a></li>
	   	 	<li><a class="menuLink" href="${pageContext.request.contextPath }/products/products_list.do?p_kind_code=03">Reebok</a></li>
	   	 	<li><a class="menuLink" href="${pageContext.request.contextPath }/products/products_list.do?p_kind_code=04">NewBalance</a></li>
	   	 	<li><a class="menuLink" href="${pageContext.request.contextPath }/products/products_list.do?p_kind_code=05">VANS</a></li>
	   	 	<li><a class="menuLink" href="${pageContext.request.contextPath }/products/products_list.do?p_kind_code=06">FILA</a></li>
	   	 </ul>
   	 </div>
   	 	<!-- 유틸메뉴 -->
   	 <nav id="utility">
		<ul id="toprightMenu">
			<c:choose>
		      	<c:when test="${not empty sessionScope.id }">
		      		<li><a href="${pageContext.request.contextPath }/users/info.do">${sessionScope.id } 님</a></li>
		      		<li><a href="${pageContext.request.contextPath }/logout.do"> 로그아웃 </a></li>
		      		<li><a href="#">주문배송 조회</a></li>
		      		<li><a href="${pageContext.request.contextPath }/cart/cart_list.do">장바구니</a></li>
		      	</c:when>
		      	<c:otherwise>
		      		<li><a href="javascript:showPopup()">회원가입/로그인</a></li>
		      		<li><a href="#">주문배송 조회</a></li>
		      		<li><a href="${pageContext.request.contextPath }/cart/cart_list.do">장바구니</a></li>
		      	</c:otherwise>
	      	</c:choose>
	    
	      	<!-- 드랍메뉴 -->	      	
			<li class="dropdown">
		       <a href="javascript:">고객센터<span class="caret"></span></a>    	 
		       <ul class="submenu">
		       <c:choose>
			      	<c:when test="${not empty sessionScope.id }">
			      		<li><a href="${pageContext.request.contextPath }/helplist.do">나의 문의내역</a></li>
			      	</c:when>
			      	<c:otherwise>
			      		<li><a href="#">BEST FAQ</a></li>
			      	</c:otherwise>
	      		</c:choose>		       		
			        <li><a href="${pageContext.request.contextPath }/help/qnalist.do">상품문의</a></li>
			        <li><a href="${pageContext.request.contextPath }/helpinsertform.do">문의하러 가기</a></li>			 
		       </ul> 
		    </li>
		</ul>
   	 </nav>
</div>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<script>
	//고객센터 드롭메뉴 js
	$('.dropdown').click(function(){
		$('.submenu').toggleClass('submenuShow')
	});
	$('#menu').click(function(){
		$( '#nav' ).slideToggle( 'fast' );
	});
	
 	//팝업 띄우는 함수 
	function showPopup(){
		window.open("${pageContext.request.contextPath }/popup/signinform.do","팝업창","width=600,height=400,top=200,left=700");
	}
 	
 	// 팝업을 닫는 함수
	//function closePopup() {
	//	 window.close();
	//}
 	
 	function menuClick(menu) {
 		if(menu=='userMain'){			
 			location.href='${pageContext.request.contextPath }/userpage/index.jsp';
 		}	
 		if(menu=='shop'){	
 			//alert(menu);
 			location.href='${pageContext.request.contextPath }/userpage/shop/shop.do';
 		}	
 		if(menu=='nike'){
 			//alert(menu);
 			location.href='${pageContext.request.contextPath }/products/test.do';
 		}	
 	}
</script>