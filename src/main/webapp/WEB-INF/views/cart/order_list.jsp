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
<c:when test="${not empty cartList }">
<table class="table">
	
	<c:forEach var="tmp" items="${cartList }">
	<tr>
		<td><input type="checkbox" name="del" class="del"/><br/></td>
		<td>${tmp.p_name }</td>
		<td>${tmp.p_size }</td>
		<td>${tmp.o_count }</td>
		<td><button class="counter">+</button><button class="counter">-</button></td>
		<td>${tmp.o_sub_price }</td>
		<td class="price">${tmp.o_sub_total_price}</td>
		
	</tr>
	</c:forEach>
</table>

</c:when>
<c:when test="${empty cartList}">
	장바구니가 비었습니다
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
