<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>product_sub 페이지</title>
</head>
<body>
<div class="container">
	<form action="subinsert.do" method="post" >
		<input type="hidden" id="subform" />
		<label for="">상품번호</label>
		<input type="text" id="pno" value="" disabled="disabled"/>
		<label for="">상품코드</label>
		<input type="text" id="pcode" value="" disabled="disabled"/>
		
		<div>
			<label for="">사이즈</label>
			<input type="text" />
		</div>
		<div>
			<label for="">수량</label>
			<input type="text" />
		</div>
	</form>
	
</div>
</body>
</html>