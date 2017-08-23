<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품 등록 폼 입니다.</h3>
<form action="p_insert.do" method="post">
	<label for="p_code">상품 코드</label>
	<input type="text" name="p_code" id="p_code" /><br /><br />
	
	<select id="category">
		<option value="#">대분류</option>
		<c:forEach var="tmp" items="${categoryList}">		
			<option value="${tmp.p_kind_code }">${tmp.kind_name }</option>
		</c:forEach>
	</select>	
	
	<select id="division">
		<option value="#">소분류</option>
		<c:forEach var="tmp" items="${divisionList}">		
			<option value="${tmp.p_kind_code }">${tmp.kind_name }</option>
		</c:forEach>
	</select>	
	
	<p>대분류</p>
	<c:forEach var="tmp" items="${categoryList}">
		<label for="p_kind_code">${tmp.kind_name }</label>
		<input type="checkbox" value="${tmp.p_kind_code }" />
	</c:forEach>
	
	<p>중분류</p>
	<c:forEach var="tmp" items="${ divisionList}">
		<label for="p_kind_code">${tmp.kind_name }</label>
		<input type="checkbox" value="${tmp.parent_kind_code }" />
	</c:forEach>
	
	
	

</form>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script>
	$("#category").change(function(){
		var code = "";
		code=$("#category option:selected").val();
		  console.log(code);
		  
		$.ajax({
			url:"getDivision.do",
			method:"POST",
			data:{parent_kind_code:code},
			success:function(data){
				console.log("ajax통신 성공!");
				console.log(data);
				console.log(length(data))
				$("#division").empty();
				for(var i=0; i<5; i++){
					$('<option value="'+ i +'">' + i + '</option>').appendTo('#콤보객체ID');
					}
				
			}			
		});
		
		
	});
</script>
</body>
</html>