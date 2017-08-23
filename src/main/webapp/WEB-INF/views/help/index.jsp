<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객센터</title>
<style>
	.help div{
		
		height:250px;
		background-color: #888;
		margin: 15px 15px;
	}
</style>
</head>
<body>
	<jsp:include page="../navbar.jsp"></jsp:include>

	<div class="container">
		<div class="row help">
			<div class="col-md-3">
				<h3>회원정보</h3>
			</div>
			<div class="col-md-3">
				<h3>배송</h3>
			</div>
			<div class="col-md-3">
				<h3>결제</h3>
			</div>
			<div class="col-md-3">
				<h3>서비스</h3>
			</div>
			<div class="col-md-3">
				<h3>자주묻는질문</h3>
			</div>
			<div class="col-md-3">
				<h3>버그</h3>
			</div>
		</div>
	</div>
</body>
</html>