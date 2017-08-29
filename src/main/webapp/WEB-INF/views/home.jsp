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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/slick/slick.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/slick/slick-theme.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/semantic/semantic.min.css" />
<title>㈜슙스 공식 온라인스토어</title>
<style>
.slick-prev:before, .slick-next:before{
    color: red;
    font-size: 20px;
}
.container-fluid#slickscope{
	padding-left: 60px;
	padding-right: 60px;
}
#bestbox div.row{
	margin: 20px auto;
}
</style>
</head>
<body>
		<!-- 네비게이션 -->
		<!-- branch upst -->
<jsp:include page="navbar.jsp"></jsp:include>
		<!-- slick scope -->
<div class="container-fluid" id="slickscope">
	<div class="slider">	
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg.jpg" style="height: 720px;" alt="" /></div>
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg1.jpg" alt="" /></div>
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg2.jpg" alt="" /></div>
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg3.jpg" alt="" /></div>
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg4.jpg" alt="" /></div>
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg5.jpg" alt="" /></div>
	</div>
</div>
	    <!-- best/new/sale/....-->
<div class="container-fluid" id="slickscope">
	<div class="ui massive top attached tabular menu">
	  <a class="item active" data-tab="best">
	    BEST
	  </a>
	  <a class="item" data-tab="new">
	    NEW
	  </a>
	  <a class="item" data-tab="sales">
	    SALES
	  </a>
	</div>
	<div id="bestbox" class="ui massive bottom attached tab segment active" data-tab="best">
		<div class="row">
			<div class="col-xs-6">
				<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
			</div>
			<div class="col-xs-6">
				<div class="row">
					<div class="col-xs-6">
						<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
					</div>
					<div class="col-xs-6">
						<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6">
						<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
					</div>
					<div class="col-xs-6">
						<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
					</div>
				</div>
			</div>
	
		</div>
		<div class="row">
			<div class="col-xs-3">
				<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
			</div>
			<div class="col-xs-3">
				<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
			</div>
			<div class="col-xs-3">
				<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
			</div>
			<div class="col-xs-3">
				<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3">
				<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
			</div>
			<div class="col-xs-3">
				<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
			</div>
			<div class="col-xs-3">
				<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
			</div>
			<div class="col-xs-3">
				<img class="ui fluid image" src="${pageContext.request.contextPath }/resources/img/image.png">
			</div>
		</div>
	</div>
	<div class="ui massive bottom attached tab segment" data-tab="new">
	  2There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.
	</div>
	<div class="ui massive bottom attached tab segment" data-tab="sales">
	  3There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.
	</div>
</div>

	    <!-- news -->


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
<script src="${pageContext.request.contextPath }/resources/js/slick.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/semantic/semantic.min.js"></script>
<script>
var sliderSwitch=false;

$('.slider').on('click', function(){	
	if(sliderSwitch==false){
		$(this).slick('slickPause');
		sliderSwitch=true;
	}else{
		$(this).slick('slickPlay');
		sliderSwitch=false;
	}	
});
$(document).ready(function() {
	$(".slider").slick({
		  infinite: true,
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  dots: true,
		  speed: 100,
		  centerMode: true,
		  variableWidth: true,
		  adaptiveHeight: true,
		  autoplay: true,
		  autoplaySpeed: 2000,		  
	});	
});

$('.menu .item')
.tab()
;
</script>
</body>
</html>


















