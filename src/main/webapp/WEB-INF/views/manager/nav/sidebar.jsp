<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#sideBar{
		position:fixed;
		background-color: #080808;
		width: 300px;
		height: 100%;
		display: inline-block;
	}
	#sideBar ul li{
		padding : 20px;
		font-size: 20px;
		color: #fff;
		text-align: center;
	}
	#sideBar ul li a{
		text-decoration:none;
		color: #fff;
	}
</style>
</head>
<body>
<div id="sideBar">
	<ul>
		<li><a href="${pageContext.request.contextPath }/manager/m_list.do">회원목록보기</a></li>
		<li><a href="${pageContext.request.contextPath }/home.do">유저페이지</a></li>
		<li><a href="${pageContext.request.contextPath }/manager/m_nav2.do">nav2</a></li>
		<li><a href="${pageContext.request.contextPath }/manager/products/p_list.do">상품 목록</a></li>
		<li><a href="${pageContext.request.contextPath }/manager/warehousing.do">입고</a></li>
		<li><a href="">주문</a></li>
	</ul>
</div>
</body>
</html>