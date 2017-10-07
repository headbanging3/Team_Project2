<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문 제품 정보</title>
</head>
<jsp:include page="../nav/m_nav.jsp"></jsp:include>
<jsp:include page="../nav/sidebar.jsp"></jsp:include>
<body>
	<table>
	<thead>
		<tr>
			<th>제품 이름</th>
			<th>주문 번호</th>
			<th>제품 번호</th>
			<th>제품 코드</th>
			<th>주문수량</th>
			<th>주문총금액</th>
			<th>제품총금액</th>
			<th>사이즈</th>
			<th>제품 가격</th>
			<th>마일리지</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="tmp" items="${list }">
			<tr>
				<td>tmp.p_name</td>
				<td>tmp.o_no</td>
				<td>tmp.p_no</td>
				<td>tmp.p_code</td>
				<td>tmp.o_count</td>
				<td>tmp.o_sub_total_price</td>
				<td>tmp.o_sub_price</td>
				<td>tmp.p_size</td>
				<td>tmp.p_price</td>
				<td>tmp.point</td>
			</tr>
		</c:forEach>
	</tbody>	
	</table>
</body>
</html>