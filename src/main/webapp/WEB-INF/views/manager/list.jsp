<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	#tb {
		margin-left : 50px;
		margin-right: 50px;
	}
	#tb2 {
		margin-left : 50px;
	}
	.listContainer{
		width:80%;
		float: left;
		margin-left: 310px;
	}
</style>
<title>Insert title here</title>
<jsp:include page="nav/m_nav.jsp"></jsp:include>
<jsp:include page="nav/sidebar.jsp"></jsp:include>
</head>
<body>
<div class="listContainer">
	<h3 id="tb2">회원 목록</h3>
	<table border="1" class="table table-striped table-hover" id="tb">
		<thead>
			<tr class="info">
				<th>#</th>
				<th>회원구분</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>주소</th>
				<th>가입날짜</th>
				<th>마일리지</th>
				<th>주문상세</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }" begin="0" end="${list.size() }" step="1" varStatus="status">
			<c:set var="one" value="1"/>
			<c:set var="two" value="2"/>
			<c:set var="three" value="3"/>
			<c:set var="four" value="4"/>
			<c:set var="five" value="5"/>
			<c:set var="six" value="6"/>
			<c:set var="count1" value="1+${status.count}"/>
			<c:choose>
				<c:when test="${count1 == one }">
					<c:set var="color" value="success"/>
					<script>console.log(count)</script>
				</c:when>
				<c:when test="${count1 == two }">
					<c:set var="color" value="info"/>
				</c:when>
				<c:when test="${count1 == three }">
					<c:set var="color" value="warning"/>
				</c:when>
			
				<c:when test="${count1 == five }">
					<c:set var="color" value="danger"/>
				</c:when>
				<c:when test="${count1 == six }">
					<c:set var="color" value="active"/>
					<c:set var="count1" value="1"/>
				</c:when>
			</c:choose>
			<c:set var="root" value="3"/>
			<tr class="${color }">
				<td>${tmp.mem_num }</td>
				<c:choose>
					<c:when test="${tmp.mem_flag == root }">
						<td>관리자</td>
					</c:when>
					<c:otherwise>
						<td>일반 회원</td>
					</c:otherwise>
				</c:choose>
				<td>${tmp.id }</td>
				<td>${tmp.pwd }</td>
				<td>${tmp.name }</td>
				<td>${tmp.phone }</td>
				<td>${tmp.email }</td>
				<td>${tmp.addr }</td>
				<td>${tmp.regdate }</td>
				<td>${tmp.point }</td>
				<td><a href="userOrderList.do?mem_num=${tmp.mem_num }">보기</a></td>
				<td><a href="updateform.do?mem_num=${tmp.mem_num}">수정</a></td>
				<td><a href="delete.do?mem_num=${tmp.mem_num} ">삭제</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<ul class="pagination">
		<c:choose>
			<c:when test="${startPageNum ne 1 }">
				<li>
					<a href="list.do?pageNum=${startPageNum-1 }">&laquo;</a>
				</li>
			</c:when>
			<c:otherwise>
				<li class="disabled">
					<a href="javascript:">&laquo;</a>
				</li>
			</c:otherwise>
		</c:choose>
		
		<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
			<c:choose>
				<c:when test="${i eq pageNum }">
					<li class="active">
						<a href="list.do?pageNum=${i }">${i }</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a href="list.do?pageNum=${i }">${i }</a>
					</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:choose>
			<c:when test="${endPageNum lt totalPageCount }">
				<li>
					<a href="list.do?pageNum=${endPageNum+1 }">&raquo;</a>
				</li>
			</c:when>
			<c:otherwise>
				<li class="disabled">
					<a class="muted" href="javascript:">&raquo;</a>
				</li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>

</body>
</html>