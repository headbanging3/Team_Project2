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
<jsp:include page="/resources/resources.jsp"/>
<style>
.counter { width:20px; height:20px; boder: 1px solid grey; }
* {
    box-sizing:border-box;
    /*padding:0;
    margin:0;*/
  }


</style>
<title>주문조회</title>
</head>
<body>
		<!-- 네비게이션 -->
<jsp:include page="../navbar.jsp"></jsp:include>
<c:choose>
<c:when test="${not empty orderList }">
<div style="font-size:50px">주문 내역</div>
<table class="table">
	<tr>
		<td>체크박스</td>
		<td>상품</td>
		<td>사이즈</td>
		<td>수량</td>
		<td>단위가격</td>
		<td>합계가격</td>
		<td>주문날짜</td>
		<td>배송상태</td>
	</tr>
	<c:forEach var="tmp" items="${orderList }">
	<tr>
		<td><input type="checkbox" name="del" class="del"/><br/></td>
		<td>${tmp.p_name }</td>
		<td>${tmp.p_size }</td>
		<td>${tmp.o_count }</td>
		<td>${tmp.o_sub_price }</td>
		<td class="price">${tmp.o_sub_total_price}</td>
		<td>${tmp.o_date }</td>
		<td>발송 준비중</td>
	</tr>
	</c:forEach>
</table>

</c:when>
<c:when test="${empty orderList}">
	<div style="font-size:50px">주문목록이 없습니다.</div>
</c:when>
</c:choose>

<!-- ****************footer**************** -->
<jsp:include page="../footer.jsp"></jsp:include>
<c:if test="${sessionScope.id eq root }">
	<script>
		document.querySelector("#bg").style.visibility = "visible";
	</script>
</c:if>

</body>
</html>
