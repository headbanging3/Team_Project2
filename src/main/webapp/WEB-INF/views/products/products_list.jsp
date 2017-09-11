<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="/resources/resources.jsp"/>
<style>
	.main{
		background-color: #fff;
		padding: 20px;
	}
	.contents{
		background-color: #fff;
		padding: 20px;
		text-align: center;
		
	}
	.conTop{
		border-bottom: 1px solid #e8e8e8;
	}

	.contents a{
		cursor: pointer;
		text-decoration:none; 
		color:#000;
	}
	.contents h5{
		text-align: left;
		padding-left: 12px;
	}
	.content{
		float:left;
		padding-left: 15px;
		margin-top:50px;
	}
	.content img{
		width:350px;
		height:320px;
		border: 1px solid red;
	}
	/*a:hover{color:#000;}*/                     
	.midMenu ul li a{
		 
		color:#000;
		font-size: 15px;
	}    
	.midMenu ul{padding-top:10px;}                     /*  상단 여백 10px  */
	.midMenu ul li {
            display:inline;                         /*  세로나열을 가로나열로 변경 */
            border-left:1px solid #999;             /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
            font:bold 12px Dotum;                     /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
            padding:0 10px;                         /* 각 메뉴 간격 */
        }
   .midMenu ul li:first-child{border-left:none;}     /* 메뉴 분류중 제일 왼쪽의 "|"는 삭제*/
  	html a:hover{
   		color:#000;
   		text-decoration: underline;
   }

</style>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container-fluid">
	<div class="main">
		<div class="row">
			<div class="col-sm-8 col-sm-push-2">
				<div class="midMenu">
					
					<ul>
						<c:forEach var="tmp" items="${kindList }">
						<li class="active"><a href="products_list.do?p_kind_code=${tmp.p_kind_code }&parent_kind_code=${tmp.parent_kind_code }">${tmp.kind_name }</a></li>
						</c:forEach>
					
					</ul>
				</div>
			</div>
		</div>
		<div class="row" id="conTop">
			<div class="col-sm-10 col-sm-push-1">
				<div class="contents">
					<div class="conTop">
						<h4 style="text-align:left; margin-left:50px; position:absolute;"><strong>상품 목록</strong></h4>
						<div class="dropdown col-xs-push-5">
							<button data-toggle="dropdown" class="btn btn-default dropdown-toggle">정렬순
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">추천순</a></li>
								<li><a href="#">가격 높은 순</a></li>
								<li><a href="#">가격 낮은 순</a></li>
							</ul>
						</div>
					</div>
					<c:choose>
           				<c:when test="${empty plist }">
	           				<h3>상품이 없습니다.</h3>
           				</c:when>	
           				<c:otherwise>
							<c:forEach var="tmp" items="${plist}">
								<div class="content">
									<a href="products_detail.do?p_code=${tmp.p_code }">
										<img src="${pageContext.request.contextPath }/resources/img/productImgs/${tmp.p_main_img}" />
									</a>
									<h3>${tmp.p_name }</h3>
									<h4>가격 : <span>${tmp.p_price }</span></h4>
								</div>
							</c:forEach>
						</c:otherwise>
           			</c:choose>
				<!--
					<div class="content">
						<a href="products_detail.do">
							<img src="${pageContext.request.contextPath }/resources/img/no_detail_img.gif" />
						</a>
						<h4>가격 : <span>100,000원</span></h4>
					</div>
				 -->	
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>