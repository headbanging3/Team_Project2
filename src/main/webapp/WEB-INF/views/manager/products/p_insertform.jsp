<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	body{
		padding :30px;
	}
</style>
</head>
<body>
<h3>상품 등록 폼 입니다.</h3>
<form action="p_insert.do" method="post" enctype="multipart/form-data">
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
	
	<br />
	<label for="kind_name">상품명</label>
	<input type="text" name="kind_name" /><br />
	
	<label for="brand">제조사</label>
	<select id="category">
		<option value="#">브랜드</option>
		<c:forEach var="tmp" items="${categoryList}">		
			<option value="${tmp.p_kind_code }">${tmp.kind_name }</option>
		</c:forEach>
	</select>
	<br />	
	<label for="price">가격</label>
	<input type="text" name="price" id="price" /><br />
	<label for="point">마일리지</label>
	<input type="text" name="point" id="point" disabled="disabled" /><br />
	
	<label for="comment">상품 간단 설명</label><br />
	<textarea name="comment" id="comment" cols="30" rows="10"></textarea><br />
	<label for="comment">상품 상세 설명</label><br />
	<textarea name="detailComment" id="detailComment" cols="50" rows="20"></textarea><br />
	
	<label for="file">메인 이미지 파일</label>
	<input type="file" name="file" id="file" /><br/>
	<button type="submit">상품 등록</button>
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
				
				$("#division").empty();
				for(var i=0; i<data.length; i++){
					$('<option value="'+ data[i].p_kind_code +'">' + data[i].kind_name + '</option>').appendTo('#division');
				}
			}			
		});
	});
	
	
	$("#division").change(function(){
		var code = "";
		code=$("#division option:selected").val();
		  console.log(code);
	});
	
	$("#price").keyup(function(){
		var price=$(this).val();
		var point=price*0.05;
		$("#point").val(point);
		
	});
</script>
</body>
</html>