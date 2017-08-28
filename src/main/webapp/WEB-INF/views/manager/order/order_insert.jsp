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
	
<form action="" method="post">
	<label for="name" value="name">이름 : </label>
	<input type="text" name="name" id="name" value=""/>
	<br />
	<label for="phone">연락처 : </label>
	<input type="text" name="phone" id="phone" value="" />
	<br />
	<input type="radio" name="chk_info" value="myAddr" checked="checked">내주소
	<input type="radio" name="chk_info" value="aAddr">다른주소
	<br>
	<label for="addr">주소 : </label>
	<input type="text" name="addr" id="addr" value=""/>
	<br />
	<button type="submit">확인</button>
</form>
	
<jsp:include page="../../footer.jsp"></jsp:include>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/fotorama.js"></script>
</body>
</html>