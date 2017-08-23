<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>업체 등록</title>
</head>
<body>
<h1>업체 등록</h1>
<form action="insertagency.do" method="post">
	<label for="company">납품사명 : </label>
	<input type="text" name="company" id="company"/>
	<br />
	<label for="name">담당자 : </label>
	<input type="text" name="name" id="name"/>
	<br />
	<label for="phone">연락처 : </label>
	<input type="text" name="phone" id="phone" />
	<br />
	<label for="email">이메일 : </label>
	<input type="text" name="email" id="email" />
	<br />
	<button type="submit">제출</button>
</form>
</body>
</html>