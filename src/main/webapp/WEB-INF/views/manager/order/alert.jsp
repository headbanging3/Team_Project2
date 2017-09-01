<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../navbar.jsp"></jsp:include>
	
	<div>
		<h3>주문이 완료 되었습니다.</h3>
	</div>
	<li><a href="">돌아가기</a></li>
<jsp:include page="../../footer.jsp"></jsp:include>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/fotorama.js"></script>
</body>
</html>