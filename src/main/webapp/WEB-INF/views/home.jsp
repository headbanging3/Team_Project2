<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="/resources/resources.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/home1.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fotorama.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/slick/slick.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/slick/slick-theme.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/semantic/semantic.min.css" />
<script src="${pageContext.request.contextPath }/resources/js/fotorama.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/slick.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/semantic/semantic.min.js"></script>
<script src="https://code.jquery.com/jquery-migrate-3.0.0.js"></script>
<title>㈜슙스 공식 온라인스토어</title>
<style>

@import url('https://fonts.googleapis.com/css?family=Cairo');

.en-font{
	font-family: 'Cairo', sans-serif;
}
.article::before { 
  content:"";
  width: 100%;
  border-top: 1px solid #aaa;
  height: 50px;
}
.article::after { 
  content:"";
  width: 100%;
  border-bottom: 1px solid #aaa;
  height: 50px;
}
.slick-prev:before, .slick-next:before{
    color: red;
    font-size: 20px;
}
.container-fluid#slickscope{
	padding-left: 60px;
	padding-right: 60px;
}
#slickscope::after{
	content:"";
	width: 100%;
	height: 58px;
}
#topslider > div img{
	height: 550px;
	border-radius: 5px;
}

.affix{
	right:20px;
		
}

#productTag{
	background: #fff;
	text-align: center;
	position: absolute;
	bottom: 20px;
}

.imgWrapper{
	padding: 10px;
	
}
.imgWrapper img{
	border: 1px solid #cecece;
}
#topLeft img{
	width:100%;
	height:100%;
}
#topRight img{
	width:100%;
	height:100%;
}
.bottom img{
	width:100%;
	height:100%;
}
#tabmenu{
	height: 50px;
	margin-bottom: 30px;
}
#slickscope{
	margin-top:100px;
}

</style>
</head>
<body>
<!-- 네비게이션 -->
<!-- branch upst -->
<jsp:include page="navbar.jsp"></jsp:include>
<!-- slick scope -->
<div class="container-fluid" id="slickscope">
	<div class="slider" id="topslider">	
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg.jpg" alt="" /></div>
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg1.jpg" alt="" /></div>
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg2.jpg" alt="" /></div>
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg3.jpg" alt="" /></div>
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg4.jpg" alt="" /></div>
	  <div><img src="${pageContext.request.contextPath }/resources/img/slickimg5.jpg" alt="" /></div>
	</div>
</div>

<div class="affix ui vertical buttons pull-right" data-offset="15" data-spy="affix" data-offset-top="700">
	<button class="ui black button top">	  
	  <span class="glyphicon glyphicon-menu-up"></span><br />맨위로
	</button>
	<button class="ui black button bottom">
	  <span class="glyphicon glyphicon-menu-down"></span><br />맨아래로
	</button>
</div>

<!-- best/new/sale/....-->
<div class="container article ">
	<div class="ui fluid massive three item menu" id="tabmenu">
	  <a class="item active" data-tab="best"><h4 class="en-font">BEST</h4></a>
	  <a class="item" data-tab="new"><h4 class="en-font">NEW</h4></a>
	  <a class="item" data-tab="sales"><h4 class="en-font">SALES</h4></a>
	</div>
	<!-- BEST 메뉴 탭 -->
	<div class="ui massive bottom attached tab segment active" data-tab="best">
	  <div class="row">			
			<div class="col-xs-8 imgWrapper" id="topLeft">
				<img class="img-responsive ui fluid image" src="${pageContext.request.contextPath }/resources/img/productImgs/${bestList[0].p_main_img}"/>
				<div class="col-xs-10 col-xs-push-1 hidden-sm hidden-xs" id="productTag">
					<span><strong>${bestList[0].p_brand}</strong></span><br/>
					<span>${bestList[0].p_name} ||</span>
					<span>${bestList[0].p_price}</span>
		        </div>			   
			</div>
			<div class="col-xs-4">
				<c:forEach var="tmp" items="${bestList }" begin="1" end="2">
					<div class="row">	
						<div class="col-xs-12 imgWrapper" id="topRight">
							<img class="img-responsive ui fluid image" src="${pageContext.request.contextPath }/resources/img/productImgs/${tmp.p_main_img}">
							<div class="col-xs-10 col-xs-push-1 hidden-sm hidden-xs" id="productTag">
								<span><strong>${tmp.p_brand}</strong></span><br/>
								<span>${tmp.p_name} ||</span>
								<span>${tmp.p_price}</span>
					        </div>	
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="row">
			<c:forEach var="tmp" items="${bestList }" begin="3" end="5">
				<div class="col-xs-4 imgWrapper bottm">
					<img class="img-responsive ui fluid image" src="${pageContext.request.contextPath }/resources/img/productImgs/${tmp.p_main_img}">
					<div class="col-xs-10 col-xs-push-1 hidden-sm hidden-xs" id="productTag">
						<span><strong>${tmp.p_brand}</strong></span><br/>
						<span>${tmp.p_name} ||</span>
						<span>${tmp.p_price}</span>
			        </div>	
				</div>
			</c:forEach>
		</div>
		<div class="row">
			<c:forEach var="tmp" items="${bestList }" begin="6" end="8">
				<div class="col-xs-4 imgWrapper bottm">
					<img class="img-responsive ui fluid image" src="${pageContext.request.contextPath }/resources/img/productImgs/${tmp.p_main_img}">
					<div class="col-xs-10 col-xs-push-1 hidden-sm hidden-xs" id="productTag">
						<span><strong>${tmp.p_brand}</strong></span><br/>
						<span>${tmp.p_name} ||</span>
						<span>${tmp.p_price}</span>
			        </div>	
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- NEW 메뉴 탭 -->
	<div class="ui massive bottom attached tab segment" data-tab="new" id="new">
	  <div class="row">			
			<div class="col-xs-8 imgWrapper" id="topLeft">
				<img class="img-responsive ui fluid image" src="${pageContext.request.contextPath }/resources/img/productImgs/${newList[0].p_main_img}"/>
				<div class="col-xs-10 col-xs-push-1 hidden-sm hidden-xs" id="productTag">
					<span><strong>${newList[0].p_brand}</strong></span><br/>
					<span>${newList[0].p_name} ||</span>
					<span>${newList[0].p_price}</span>
		        </div>			   
			</div>
			<div class="col-xs-4">
				<c:forEach var="tmp" items="${newList }" begin="1" end="2">
					<div class="row">	
						<div class="col-xs-12 imgWrapper" id="topRight">
							<img class="img-responsive ui fluid image" src="${pageContext.request.contextPath }/resources/img/productImgs/${tmp.p_main_img}">
							<div class="col-xs-10 col-xs-push-1 hidden-sm hidden-xs" id="productTag">
								<span><strong>${tmp.p_brand}</strong></span><br/>
								<span>${tmp.p_name} ||</span>
								<span>${tmp.p_price}</span>
					        </div>	
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="row">
			<c:forEach var="tmp" items="${newList }" begin="3" end="5">
				<div class="col-xs-4 imgWrapper bottm">
					<img class="img-responsive ui fluid image" src="${pageContext.request.contextPath }/resources/img/productImgs/${tmp.p_main_img}">
					<div class="col-xs-10 col-xs-push-1 hidden-sm hidden-xs" id="productTag">
						<span><strong>${tmp.p_brand}</strong></span><br/>
						<span>${tmp.p_name} ||</span>
						<span>${tmp.p_price}</span>
			        </div>	
				</div>
			</c:forEach>
		</div>
		<div class="row">
			<c:forEach var="tmp" items="${newList }" begin="6" end="8">
				<div class="col-xs-4 imgWrapper bottm">
					<img class="img-responsive ui fluid image" src="${pageContext.request.contextPath }/resources/img/productImgs/${tmp.p_main_img}">
					<div class="col-xs-10 col-xs-push-1 hidden-sm hidden-xs" id="productTag">
						<span><strong>${tmp.p_brand}</strong></span><br/>
						<span>${tmp.p_name} ||</span>
						<span>${tmp.p_price}</span>
			        </div>	
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="ui massive bottom attached tab segment" data-tab="sales">
	  <h3>세일중인 상품이 없습니다.</h3>
	</div>
</div>

<!-- 관리자가 추천하는 상품 컨텐츠 -->
<div class="container article">
	<h1 class="en-font">MD's choice! </h1>
	<div class="mdslider">	
	  <div class="thumbnail">
	      <img src="${pageContext.request.contextPath }/resources/img/image.png" alt="...">
	      <div class="caption">
	        <h3>엠디 초이스!</h3>
	        <p>이거 짱좋음!! 사셈!!</p>
	        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
	      </div>
	    </div>
	  <div class="thumbnail">
	      <img src="${pageContext.request.contextPath }/resources/img/image.png" alt="...">
	      <div class="caption">
	        <h3>엠디 초이스!</h3>
	        <p>이거 짱좋음!! 사셈!!</p>
	        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
	      </div>
	    </div>
	  <div class="thumbnail">
	      <img src="${pageContext.request.contextPath }/resources/img/image.png" alt="...">
	      <div class="caption">
	        <h3>엠디 초이스!</h3>
	        <p>이거 짱좋음!! 사셈!!</p>
	        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
	      </div>
	    </div>
	  <div class="thumbnail">
	      <img src="${pageContext.request.contextPath }/resources/img/image.png" alt="...">
	      <div class="caption">
	        <h3>엠디 초이스!</h3>
	        <p>이거 짱좋음!! 사셈!!</p>
	        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
	      </div>
	    </div>
	  <div class="thumbnail">
	      <img src="${pageContext.request.contextPath }/resources/img/image.png" alt="...">
	      <div class="caption">
	        <h3>엠디 초이스!</h3>
	        <p>이거 짱좋음!! 사셈!!</p>
	        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
	      </div>
	    </div>
	  <div class="thumbnail">
	      <img src="${pageContext.request.contextPath }/resources/img/image.png" alt="...">
	      <div class="caption">
	        <h3>엠디 초이스!</h3>
	        <p>이거 짱좋음!! 사셈!!</p>
	        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
	      </div>
	    </div>
	</div>
</div>
		<!-- 공지사항 이벤트 콘텐츠 -->
<div class="container article">
	<div class="col-sm-6">
		<h1 class="en-font">EVENT </h1>
	</div>
	<div class="col-sm-6">
		<h1 class="en-font"><span class="glyphicon glyphicon-tag" aria-hidden="true"></span> NOTICE</h1>
		<ul class="list-group">
		  <div class="alert alert-danger" role="alert">
			  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
			  <span class="sr-only">Error:</span>
			  Enter a valid email address
		  </div>
		  <li class="list-group-item list-group-item-info">Dapibus ac facilisis in</li>
		  <li class="list-group-item list-group-item-info">Morbi leo risus</li>
		  <li class="list-group-item list-group-item-info">Porta ac consectetur ac</li>
		  <li class="list-group-item list-group-item-info">Vestibulum at eros</li>
		</ul>
	</div>
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
<script>
var sliderSwitch=false;

$(document).ready(function() {
	$("#topslider").slick({
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

	$('#topslider').on('click', function(){	
		if(sliderSwitch==false){
			$(this).slick('slickPause');
			sliderSwitch=true;
		}else{
			$(this).slick('slickPlay');
			sliderSwitch=false;
		}	
	});
	
	$('.mdslider').slick({
		  slidesToShow: 5,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
	});
	
	$('#tabmenu .item').tab();
	
	$('.top').click(function(){
		$('html, body').animate({ scrollTop : 0}, 400);
		return false;
	});
	$('.bottom').click(function(){
		$('html, body').animate({ scrollTop: $(document).height()},800);
		return false;
	})
});

//고객센터 드롭메뉴 js
$('.dropdown').click(function(){
	$('.submenu').toggleClass('submenuShow')
});
$('#menu').click(function(){
	$( '#nav' ).slideToggle( 'fast' );
});



</script>
</body>
</html>
