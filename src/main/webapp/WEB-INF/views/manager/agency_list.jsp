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
<title>업체리스트</title>
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
			<h1 class="ui header">업체 List</h1>
		</div>		
		<table class="ui olive selectable celled fixed unstackable table">
			<thead>
				<tr class="center aligned">
					<th>납품사코드</th>
					<th>납품사명</th>
					<th>담당자</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
		           	<c:when test="${empty list }">
		   				<tr>
		   					<td colspan="6">업체가 없습니다.</td>
		   				</tr>	
		           	</c:when>	
		           	<c:otherwise>
		           		<c:forEach var="tmp" items="${list }">
		         			<tr>
			                    <td>${tmp.a_code }</td>
			                    <td>${tmp.company }</td>
			                    <td>${tmp.name }</td>
			                    <td>${tmp.phone }</td>
			                   	<td>${tmp.email }</td>
			                   	<td>${tmp.regdate }</td>
			                </tr>
			      		</c:forEach>			
		           	</c:otherwise>
				</c:choose>
			</tbody>
		</table>
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