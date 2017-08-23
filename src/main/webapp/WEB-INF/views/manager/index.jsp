<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<title>Insert title here</title>
</head>
<jsp:include page="nav/m_nav.jsp"></jsp:include>
<body>
<ul>
	<li><a href="manager/m_list.do">회원목록보기</a></li>
	<li><a href="manager/m_list2.do">list2.jsp</a></li>
	<li><a href="home.do">유저페이지</a></li>
	<li><a href="manager/m_nav2.do">nav2</a></li>
	<li><a href="manager/products/p_list.do">상품 목록</a></li>
	<li><a href="manager/warehousing.do">입고</a></li>
	<li><a href="">주문</a></li>
</ul>
</body>
</html>