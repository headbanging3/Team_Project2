<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<title>유저 주문 상세</title>
</head>
<body>
		<table border="1">
			<thead>
				<tr>
					<th>#</th>
					<th>이름</th>
					<th>아이디</th>
					<th>회원 주소</th>
					<th>전화번호</th>
					<th>가입날짜</th>
					<th>마일리지</th>
				</tr>
			</thead>
			<tbody>
				<tr class="">
					<td>${dto.mem_num }</td>
					<td>${dto.name }</td>
					<td>${dto.id}</td>
					<td>${dto.addr }</td>
					<td>${dto.phone }</td>
					<td>${dto.regdate }</td>
					<td>${dto.point }</td>
				</tr>
			</tbody>
		</table>
<br>
		<table border="1">
		<thead>
			<tr>
				<th>주문 번호</th>
				<th>받는 사람</th>
				<th>전화 번호</th>
				<th>배송 주소</th>
				<th>구입 수량</th>
				<th>구입 가격</th>
				<th>배송 상태</th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${dtoa.o_no }</td>
				<td>${dtoa.res_name }</td>
				<td>${dtoa.res_phone }</td>
				<td>${dtoa.res_address }</td>
				<td>${dtoa.o_total_count }</td>
				<td>${dtoa.o_total_price }</td>
				<c:choose>
					<c:when test="${dtoa.delivery_flag == 1}">
						<td>장바구니</td>
					</c:when>
					<c:when test="${dtoa.delivery_flag == 2}">
						<td>입금대기</td>
					</c:when>
					<c:when test="${dtoa.delivery_flag == 3}">
						<td>입금완료</td>
					</c:when>
					<c:when test="${dtoa.delivery_flag == 4}">
						<td>배송준비</td>
					</c:when>
					<c:when test="${dtoa.delivery_flag == 5}">
						<td>배송출발</td>
					</c:when>
					<c:when test="${dtoa.delivery_flag == 6}">
						<td>배송완료</td>
					</c:when>
				</c:choose>
			</tr>
		</tbody>
	</table>
</body>
</html>