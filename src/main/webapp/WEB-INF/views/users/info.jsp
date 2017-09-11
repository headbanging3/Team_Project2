<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="/resources/resources.jsp"/>
<style>
	#infoTable{
		padding:50px;
	}
	
</style>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container-fluid">
	<div class="col-sm-6 col-sm-offset-3" id="infoTable">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>항목</th>
				<th>정보</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>아이디</th>
				<td>${dto.id }</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${dto.name }</td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td>${dto.email }</td>
			</tr>
			
			<tr>
				<th>전화번호</th>
				<td>${dto.phone }</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>${dto.addr }</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${dto.regdate }</td>
			</tr>
		</tbody>
	</table>
	
	<ul>
		<li><a href="${pageContext.request.contextPath }/users/updateform.do">가입 정보 수정</a></li>
		<li><a href="javascript:memberConfirm()">회원 탈퇴</a></li>
		<li><a href="${pageContext.request.contextPath }/home.do">메인 페이지로 가기</a></li>
	</ul>
</div>
</div>
<jsp:include page="../footer.jsp"/>	
<script>
	function memberConfirm(){
		var isDelete=confirm("탈퇴 하시겠습니까?");
		if(isDelete){
			location.href="delete.do?num=${dto.mem_num}";
		}
	}
</script>

</body>
</html>