<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입고등록 페이지</title>
</head>
<body>
<h1>입고 등록</h1>
<a href="agencylist.do">업체 추가 및 관리</a>
<form action="insertWarehousing.do" method="post">
	<label for="agency">업체 선택 : </label>
	<select name="a_code" id="agency">
	    <option value="">업체선택</option>
	    <option value="01">나이키</option>
	</select>
	<br />
	<label for="w_date">입고날짜 : </label>
	<input type="date" name="w_date" id="w_date" />
	<br />
	<label for="w_total_count">입고총수량 : </label>
	<input type="text" name="w_total_count" id="w_total_count" />
	<br />
	<label for="w_total_price">입고금액 : </label>
	<input type="text" name="w_total_price" id="w_total_price" />
	<br />
	<button type="submit">제출</button>
</form>
</body>
</html>