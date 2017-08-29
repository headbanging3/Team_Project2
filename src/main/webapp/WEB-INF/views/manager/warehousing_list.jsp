<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath }/resources/semantic/semantic.min.css?version=1" />
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resources/semantic/semantic.min.js"></script>
<title>입고리스트</title>
</head>
<style>
	#article{
		padding-top: 50px;
	}
	table{
		width: 100%;
	}
	table, th, td {
	    border: 1px solid black;
	    border-collapse: collapse;
	}
</style>
<body>

<div class="ui secondary  menu">
	<div class="top attached menu">
	  <a class="item">
	    <i class="sidebar icon"></i> Menu
	  </a>
	</div>
  <a class="active item">
    Home
  </a>
  <a class="item">
    Messages
  </a>
  <a class="item">
    Friends
  </a>
  <div class="right menu">
    <div class="item">
      <div class="ui icon input">
        <input type="text" placeholder="Search...">
        <i class="search link icon"></i>
      </div>
    </div>
    <a class="ui item">
      Logout
    </a>
  </div>
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
  	<!-- end menu -->
  	<!-- 본문내용 -->
	<div class="ui pusher">
		<div class="ui container">	
			<div class="ui centered banner test ad"></div>
			<div class="ui" id="article">
				<h1 class="ui center aligned header">입고 List</h1>
			</div>	
			
			<table class="ui celled table">
				<thead>
					<tr>
						<th>입고 번호</th>
						<td><input type="text" /></td>
						<th>납품사 코드</th>
						<td><input type="text" /></td>
						<th>입고날짜</th>
						<td><input type="date" /></td>
						<td>
							<div class="ui small labeled icon button">
	         				<i class="search icon"></i> 검색
	        				</div>
						</td>
					</tr>
				</thead>
			</table>
				
			<table class="ui olive selectable celled fixed unstackable table">
				<thead>
					<tr class="center aligned">
						<th>입고 번호</th>
						<th>입고 일자</th>
						<th>입고 총수량</th>
						<th>입고 금액</th>
						<th>납품사 코드</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
			           	<c:when test="${empty list }">
			   				<tr>
			   					<td colspan="5">입고목록이 없습니다.</td>
			   				</tr>	
			           	</c:when>	
			           	<c:otherwise>
			           		<c:forEach var="tmp" items="${list }">
			         			<tr>
				                    <td>${tmp.w_no }</td>
				                    <td>${tmp.w_date }</td>
				                    <td>${tmp.w_total_count } EA</td>
				                    <td>${tmp.w_total_price } 원</td>
				                   	<td>${tmp.a_code }</td>
				                </tr>
				      		</c:forEach>			
			           	</c:otherwise>
					</c:choose>
				</tbody>
				<tfoot class="full-width">
					<tr>
						<th colspan="5">
							<div class="ui right floated small primary labeled icon button">
	         				<i class="print icon"></i> PRINT
	        				</div>
						</th>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>
<script>
/* 사이드바 관련 js */
$('.ui.sidebar').sidebar({
    context: $('.bottom.segment')
  })
  .sidebar('attach events','.top.attached.menu');
</script>
</body>
</html>