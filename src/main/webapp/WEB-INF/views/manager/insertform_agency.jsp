<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath }/resources/semantic/semantic.min.css" />
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resources/semantic/semantic.min.js"></script>
<title>업체등록 페이지</title>
</head>
<style>
	#article{
		padding-top: 50px;
	}
</style>
<body>
<div class="ui top attached menu">
  <a class="item">
    <i class="sidebar icon"></i> Menu
  </a>
</div>
<div class="ui bottom attached segment">
  	<div class="ui labeled left vertical sidebar menu">
	    <a class="item">입고관리</a>
	    <a class="item">업체관리</a>
	    <a href="${pageContext.request.contextPath }/m_home.do" class="item">
	    	관리자 페이지
	    </a>
	    <a href="insertformwarehousing.do" class="item">
	        입고등록
	    </a>
	    <a href="warehousing.do" class="item">
	    	입고 리스트
	    </a>
	    <a href="agencylist.do" class="item">
	    	업체 리스트
	    </a>
	    <a href="insertformagency.do" class="item">
	    	업체 등록
	    </a>
  	</div>
	<div class="pusher">
		<div class="ui" id="article">
			<h1 class="ui header">업체 등록</h1>
		</div>		
		<form class="ui form" action="insertagency.do" method="post">
			<div class="required inline field">
				<label>납품사명 </label>
				<input type="text" name="company"/>
			</div>
			<div class="required inline field">
				<label>담당자 </label>
				<input type="text" name="name"/>
			</div>
			<div class="required inline field">
				<label>연락처 </label>
				<input type="text" name="phone"/>
			</div>
			<div class="required inline field">
				<label>이메일 </label>
				<input type="text" name="email"/>
			</div>
			<button type="submit" class="ui button">등록</button>
			<a class="ui button" href="agencylist.do">취소</a>
		</form>		
	</div>
</div>
<script>
/* 사이드바 관련 js */
$('.ui.sidebar').sidebar({
    context: $('.bottom.segment')
  })
  .sidebar('attach events', '.menu .item');

</script>
</body>
</html>