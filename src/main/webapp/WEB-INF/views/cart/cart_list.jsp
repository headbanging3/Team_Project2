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
<title>장바구니</title>
</head>
<body>
		<!-- 네비게이션 -->
<jsp:include page="../navbar.jsp"></jsp:include>

<table class="table">
	<tr>
		<td>체크박스</td>
		<td>상품</td>
		<td>사이즈</td>
		<td>수량</td>
		<td>단위가격</td>
		<td>합계가격</td>
	</tr>
	<c:forEach var="tmp" items="${cartList }">
	<tr>
		<td></td>
		<td>${tmp.p_name }</td>
		<td>${tmp.p_size }</td>
		<td>${tmp.o_count }</td>
		<td>${tmp.o_sub_price }</td>
		<td>${tmp.o_sub_total_price}</td>
	</tr>
	</c:forEach>
</table>

<!-- ****************footer**************** -->
<jsp:include page="../footer.jsp"></jsp:include>
<c:if test="${sessionScope.id eq root }">
	<script>
		document.querySelector("#bg").style.visibility = "visible";
	</script>
</c:if>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/fotorama.js"></script>
</body>
</html>
