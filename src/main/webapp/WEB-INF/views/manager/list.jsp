<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String cPath = request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=cPath %>/resources/css/bootstrap.css" />
<style>
	#tb {
		margin-left : 50px;
		margin-right: 50px;
	}
	#tb2 {
		margin-left : 50px;
	}
</style>
<title>Insert title here</title>
<jsp:include page="nav/m_nav.jsp"></jsp:include>
</head>
<body>

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
		<tr class="${color }">
			<td>${tmp.mem_num }</td>
			<td>${tmp.mem_flag }</td>
			<td>${tmp.id }</td>
			<td>${tmp.pwd }</td>
			<td>${tmp.name }</td>
			<td>${tmp.phone }</td>
			<td>${tmp.email }</td>
			<td>${tmp.addr }</td>
			<td>${tmp.regdate }</td>
			<td>${tmp.point }</td>
			<td><a href="updateform.do?mem_num=${tmp.mem_num}">수정</a></td>
			<td><a href="delete.do?mem_num=${tmp.mem_num} ">삭제</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>