<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String cPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/home1.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fotorama.css" />
<title>㈜슙스 공식 온라인스토어</title>
</head>
<body>
		<!-- 네비게이션 -->
<jsp:include page="navbar.jsp"></jsp:include>
		<!-- 캐러셀 -->
<div class="container-fluid">
	<div class="fotorama" data-loop="true" data-autoplay="true" data-nav="false">
	  <img src="${pageContext.request.contextPath }/resources/img/bgimg2.jpg"/>
	  <img src="${pageContext.request.contextPath }/resources/img/bgimg5.jpg"/>
	  <img src="${pageContext.request.contextPath }/resources/img/bgimg1.jpg"/>
	  <img src="${pageContext.request.contextPath }/resources/img/bgimg4.jpg"/>
	  <img src="${pageContext.request.contextPath }/resources/img/bgimg6.jpg"/>
	  <img src="${pageContext.request.contextPath }/resources/img/bgimg3.jpg"/>
	</div>
</div>
	    <!-- best/new/sale/....-->
<div id="con">
	<ul>
		<li><a href="#">BEST</a></li>
		<li><a href="#">NEW</a></li>
		<li><a href="#">SALE</a></li>
	</ul>
	<div class="row">
	  <div class="col-sm-2">
	    <div class="thumbnail">
	      <img src="${pageContext.request.contextPath }/resources/img/no_detail_img.gif"/>
	      <div class="caption">
	        <h3>Thumbnail label</h3>
	        <p>베스트 메뉴</p>
	        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-2">
	    <div class="thumbnail">
	      <img src="${pageContext.request.contextPath }/resources/img/no_detail_img.gif"/>
	      <div class="caption">
	        <h3>Thumbnail label</h3>
	        <p>베스트 메뉴</p>
	        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-2">
	    <div class="thumbnail">
	      <img src="${pageContext.request.contextPath }/resources/img/no_detail_img.gif"/>
	      <div class="caption">
	        <h3>Thumbnail label</h3>
	        <p>베스트 메뉴</p>
	        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
	      </div>
	    </div>
	  </div>
	</div>
</div>

	    <!-- news -->
	    
<div class="continer">

</div>
<div>
	<a id="bg" class="btn" href="m_home.do" role="button">관리자페이지</a>
</div>

<!-- ****************footer**************** -->
<jsp:include page="footer.jsp"></jsp:include>
<c:if test="${sessionScope.id eq root }">
	<script>
		document.querySelector("#bg").style.visibility = "visible";
	</script>
</c:if>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/fotorama.js"></script>
</body>
</html>
