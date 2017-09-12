<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	#container {
		margin-left: 350px;
	}
</style>
<title>주문 내역</title>
</head>
<jsp:include page="../nav/m_nav.jsp"></jsp:include>
<jsp:include page="../nav/sidebar.jsp"></jsp:include>
<body>
<div id="container">
	<table border="1">
		<thead>
			<tr>
				<th>#</th>
				<th>주문자</th>
				<th>주문자 ID</th>
				<th>주문자 Email</th>
				<th>주문자 전화번호</th>
				<th>수신인</th>
				<th>수신자 전화번호</th>
				<th>배송지 주소</th>
				<th>주문 날짜</th>
				<th>주문 수량</th>
				<th>주문 가격</th>
				<th>주문 제품 상세보기</th>
				<th>배송 상태</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }">
			<tr>
					<td>${tmp.o_no }</td>
					<td>${tmp.name }</td>
					<td>${tmp.id }</td>
					<td>${tmp.email }</td>
					<td>${tmp.phone }</td>
					<td>${tmp.res_name }</td>
					<td>${tmp.res_phone }</td>
					<td>${tmp.res_address }</td>
					<td>${tmp.o_date }</td>
					<td>${tmp.o_total_count }</td>
					<td>${tmp.o_total_price }</td>
					<td><c:if test="${tmp.o_total_count ne 1 }">
							<a href="${pageContext.request.contextPath }/manager/orderListDetail.do?o_no=${tmp.o_no }">${tmp.p_name }외  ${tmp.o_total_count - 1}개</a></c:if></td>
					<c:choose>
						<c:when test="${tmp.o_status == 1 }">
							<td>장바구니 상태</td>
						</c:when>
						<c:when test="${tmp.o_status == 2 }">
							<td>입금 대기</td>
						</c:when>
						<c:when test="${tmp.o_status == 3 }">
							<td>입금 완료</td>
						</c:when>
						<c:when test="${tmp.o_status == 4 }">
							<td>배송 준비</td>
						</c:when>
						<c:when test="${tmp.o_status == 5 }">
							<td>배송 출발</td>
						</c:when>
						<c:when test="${tmp.o_status == 6 }">
							<td>배송 완료</td>
						</c:when>
					</c:choose>
				
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>