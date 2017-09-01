<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#pInsertForm, #insertText{
		margin-left:400px;
	}
</style>
</head>
<body>
<jsp:include page="../nav/m_nav.jsp"></jsp:include>
<jsp:include page="../nav/sidebar.jsp"></jsp:include>
<h3 id="insertText">상품 등록 폼 입니다.</h3>
<form action="p_insert.do" method="post" enctype="multipart/form-data" id="pInsertForm">
	<select id="category">
		<option value="#">브랜드</option>
		<c:forEach var="tmp" items="${categoryList}">		
			<option value="${tmp.p_kind_code }">${tmp.kind_name }</option>
		</c:forEach>
	</select>	
	
	<select name="p_kind_code" id="division">
		<option value="#">분류</option>
		<c:forEach var="tmp" items="${divisionList}">		
			<option value="${tmp.p_kind_code }">${tmp.kind_name }</option>
		</c:forEach>
	</select><br />
	
	<label for="p_name">상품명</label>
	<input type="text" name="p_name" id="p_name"/><br /><br />	
	
	<label for="p_price">가격</label>
	<input type="text" name="p_price" id="p_price" /><br />
	<label for="point">마일리지</label>
	<input type="text" class="point" disabled="disabled"/><br />
	<input type="hidden" name="point" class="point" />
	
	<label for="p_comment">상품 간단 설명</label><br />
	<textarea name="p_comment" id="p_comment" cols="30" rows="10"></textarea><br />
	<label for="p_detail_comment">상품 상세 설명</label><br />
	<textarea name="p_detail_comment" id="p_detail_comment" cols="50" rows="20"></textarea><br />
	
	<label for="p_main_img">메인 이미지 파일</label>
	<input type="file" name="file" id="file" /><br/>
	<button type="submit">상품 등록</button>
</form>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script>

	$("#category").change(function(){
		var code = "";
		code=$("#category option:selected").val();
		  console.log(code);
		if(code=='#'){
			$("#division").empty();
			return false;
		}
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
	
	$("#p_price").keyup(function(){
		var price=$(this).val();
		var point=price*0.05;
		$(".point").val(point);
		
	});
	
	$("#pInsertForm").submit(function(){
		var categoryNum=$("#category option:selected").val();
		var divisionNum=$("#division option:selected").val();
		var name=$("#p_name").val();
		var price=$("#p_price").val();
		var comment=$("#p_comment").val();
		var detailComment=$("p_detail_comment").val();
		var file=$("#file").val();
		
		if(categoryNum=='#' || divisionNum=='#'){
			alert("브랜드 및 분류를 선택하세요!");
			return false;
		}else if(name=='' || price==''){
			alert("제품명 또는 가격을 입력하세요!");
			return false;
		}else if(file==''){
			alert("이미지 파일을 선택하세요!");
			return false;
		}
			
		
	});
</script>
</body>
</html>