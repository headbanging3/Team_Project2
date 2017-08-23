<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>업체 추가 및 관리</title>
<style>
	table{
		width: 100%;
	}
	table, th, td {
	    border: 1px solid black;
	    border-collapse: collapse;
	}
</style>
</head>
<body>
<h1>업체 list</h1>
<a href="insertformagency.do">업체 등록</a>
<table>
	<thead>
		<tr>
			<th>납품사코드</th>
			<th>납품사명</th>
			<th>담당자</th>
			<th>연락처</th>
			<th>이메일</th>
			<th>등록일</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
           	<c:when test="${empty list }">
   				<tr>
   					<td colspan="6">게시글이 없습니다.</td>
   				</tr>	
           	</c:when>	
           	<c:otherwise>
           		<c:forEach var="tmp" items="${list }">
         			<tr>
	                    <td>${tmp.a_code }</td>
	                    <td>${tmp.company }</td>
	                    <td>${tmp.name }</td>
	                    <td>${tmp.phone }</td>
	                   	<td>${tmp.email }</td>
	                   	<td>${tmp.regdate }</td>
	                </tr>
	      		</c:forEach>			
           	</c:otherwise>
		</c:choose>
	</tbody>
</table>
</body>
</html>