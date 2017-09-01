<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<table border="1">
			<thead>
				<tr>
					<th>#</th>
					<th>이름</th>
					<th>아이디</th>
					<th>회원 주소</th>
					<th>전화번호</th>
					<th>가입날짜</th>
					<th>마일리지</th>
				</tr>
			</thead>
			<tbody>
				<tr class="">
					<td>${tmp.mem_num }</td>
					<c:choose>
						<c:when test="${tmp.mem_num != 3 }">
							<td>관리자</td>
						</c:when>
						<c:otherwise>
							<td>일반 회원</td>
						</c:otherwise>
					</c:choose>
					<td>${tmp.name }</td>
					<td>${tmp.id}</td>
					<td>${tmp.addr }</td>
					<td>${tmp.phone }</td>
					<td>${tmp.regdate }</td>
					<td>${tmp.point }</td>

				</tr>
			</tbody>
		</table>
<br>
		<table border="1">
		<thead>
			<tr>
				<th>받는 사람</th>
				<th>전화 번호</th>
				<th>배송 주소</th>
				<th>회원 주소</th>
				<th>구입 수량</th>
				<th>구입 가격</th>
				<th>배송 상태</th>
				<th>구입자 정보</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
			</tr>
		</tbody>
	</table>
</body>
</html>