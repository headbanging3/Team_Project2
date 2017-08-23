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
<h3>loginresult 페이지</h3>
<c:choose>
	<c:when test="${not empty sessionScope.id}">
		<script>
			opener.location.href="${pageContext.request.contextPath}/home.do"
			self.close();
			
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("아이디 비밀번호를 확인해 주세요");
			location.href="${pageContext.request.contextPath}/popup/signinform.do";
			
		</script>
	</c:otherwise>

</c:choose> 

</body>
</html>