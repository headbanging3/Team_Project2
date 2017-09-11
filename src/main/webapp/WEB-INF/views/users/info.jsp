<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" />
<style>
	#infoTable{
		padding:50px;
	}
	
		#footer {
		position: absolute;
		bottom: 200;
		left: 0;
		right: 0;
	}
	.contentArea {
		position: relative;
		padding-bottom: 50px;
	}
</style>
</head>
<body>
<jsp:include page="../navbar.jsp"></jsp:include>

<div class="container-fluid">
	<div class="" id="infoTable">
	<table class="table table-hover" border="1">
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>가입일</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${dto.id }</td>
				<td>${dto.name }</td>
				<td>${dto.email }</td>
				<td>${dto.phone }</td>
				<td>${dto.addr }</td>			
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

<div class="contentArea">
<footer id="footer">
		<div class=footer-top></div>
		<div class=footer-bottom>
			<ul>
				<li>대표: 에이콘아카데미</li>
				<li>주소: 동아빌딩15F</li>
				<li>ⓒ 2017. Acorn all rights reserved.</li>
				<li>Copyright(c)2017 by Acorn. All Page content is property of Acorn</li>
				<li>Copyright(c)2017 by Acorn. All pictures cannot be copied without permission. </li>
			</ul>
		</div>
</footer>
	</div>	
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