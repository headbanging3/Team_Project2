<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나의 문의 내역</title>
<jsp:include page="/resources/resources.jsp"/>
</head>
<style>
	#itembox{
		text-align: center;
	}
	.item3{
		display: inline-block;
		width: 200px;
		height: 150px;
		background-color: green;
		margin: 35px auto;
	}
</style>
<body>
<jsp:include page="../navbar.jsp"></jsp:include>

<div class="container" id="itembox">
<h3>1:1 문의</h3>
	<div class="item3"><h3>1:1문의 수</h3></div>
	<div class="item3"><h3>문의 처리중</h3></div>
	<div class="item3"><h3>답변 완료</h3></div>
</div>
<div class="table-responsive">
	<table class="table table-condensed">
		<tr>
			<th>내용</th>
			<th>등록일</th>
			<th>처리 상태</th>
		</tr>
		<c:choose>
  			<c:when test="${empty list }">
  				<tr>
  					<td colspan="5">게시글이 없습니다.</td>
  				</tr>	
  			</c:when>	
   			<c:otherwise>
   				<c:forEach var="tmp" items="${list }">
					<tr>
	                    <td>[${tmp.type}] ${tmp.title }</td>
	                   	<td>${tmp.regdate }</td>
	                   	<c:choose>
	                   		<c:when test="${tmp.state}">
	                   			<td>답변완료</td>
	                   		</c:when>
	                   		<c:otherwise>
	                  			<td>처리중</td>
	                   		</c:otherwise>	
	                   	</c:choose>
	                   	                   	
	                </tr>
   				</c:forEach>			
   			</c:otherwise>
   		</c:choose>
	</table>
</div>
<button><a href="${pageContext.request.contextPath }/helpinsertform.do">1:1문의하기</a></button>
<jsp:include page="../footer.jsp"/>
</body>
</html>