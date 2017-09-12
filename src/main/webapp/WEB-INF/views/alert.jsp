<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>㈜슙스 공식 온라인스토어</title>
<jsp:include page="/resources/resources.jsp"/>
<style>
	div{
		
		margin-top:30px;
	}
	
</style>
</head>
<body>
<div class="container">
	<p>${msg }</p>
	<a class="alert-link" href="${pageContext.request.contextPath }/home.do">확인</a>
</div>

</body>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script>
//팝업 띄우는 함수 
function showPopup(){
	window.open("${pageContext.request.contextPath }/popup/signinform.do","팝업창","width=600,height=400,top=200,left=700");
}

</script>
</html>