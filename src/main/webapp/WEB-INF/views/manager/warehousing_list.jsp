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
			<th>입고 금액</th>
			<th>납품사코드</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>2017-08-22</td>
			<td>20,153,789원</td>
			<td>01 나이키</td>
		</tr>
	</tbody>
</table>
</body>
</html>