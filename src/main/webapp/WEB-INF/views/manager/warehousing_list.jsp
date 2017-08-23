<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입고리스트</title>
</head>
<style>
	table{
		width: 100%;
	}
	table, th, td {
	    border: 1px solid black;
	    border-collapse: collapse;
	}
</style>
<body>
<h1>입고 List</h1>
<a href="insertformwarehousing.do">입고등록</a>
<table>
	<thead>
		<tr>
			<th>입고 번호</th>
			<th>입고 일자</th>
			<th>입고 총수량</th>
			<th>입고 금액</th>
			<th>납품사코드</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
           	<c:when test="${empty list }">
   				<tr>
   					<td colspan="5">입고목록이 없습니다.</td>
   				</tr>	
           	</c:when>	
           	<c:otherwise>
           		<c:forEach var="tmp" items="${list }">
         			<tr>
	                    <td>${tmp.w_no }</td>
	                    <td>${tmp.w_date }</td>
	                    <td>${tmp.w_total_count }</td>
	                    <td>${tmp.w_total_price }</td>
	                   	<td>${tmp.a_code }</td>
	                </tr>
	      		</c:forEach>			
           	</c:otherwise>
		</c:choose>
	</tbody>
</table>
</body>
</html>