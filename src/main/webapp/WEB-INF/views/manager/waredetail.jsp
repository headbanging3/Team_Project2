<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table, td, th{
		border: 1px solid black;
		margin:30px;
	}
	#ea, #up{
		text-align:right;
	}
	
</style>
</head>
<body>
<h1>입고 디테일</h1>
	<h3>입고 번호 : ${w_no }</h3>
	<button id="addWare">입고 상품 추가</button>
	<div id="wrapper">
		
	</div>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resources/semantic/semantic.min.js"></script>
<script>
	
	$("#addWare").click(function(){
		var a=$('<div class="wareDiv">'+
				'<table>'+
					'<thead>'+
					'<tr>'+
						'<th>상품 코드</th>'+
						'<th>사이즈</th>'+
						'<th>수량</th>'+
						'<th>단가</th>'+
						'<th>사이즈 추가</th>'+
					'</tr>'+
				'</thead>'+
				'<tfoot>'+
					'<tr>'+
						'<td colspan="2">총 수량 : </td>'+
						'<td colspan="2">총 금액 : </td>'+
					'</tr>'+
				'</tfoot>'+
				'<tbody>'+
					'<tr>'+
						'<td>'+
						'<select name="p_code" id="p_code">'+
							'<option value="#">제품</option>'+
							'<c:forEach var="tmp" items="${list}">'+		
								'<option value="${tmp.p_code }">${tmp.p_name }</option>'+
							'</c:forEach>'+
						'</select>'+
						'</td>'+
						'<td>'+
							'<select name="p_size" id="p_size">'+
								'<option value="#">사이즈</option>'+
								'<c:forEach var="i" begin="220" end="300" step="10">'+		
									'<option value="${i}">${i}</option>'+
								'</c:forEach>'+
							'</select>'+
						'</td>'+
						'<td>'+
							'<input type="text" name="ea" id="ea" />'+
						'</td>'+
						'<td>'+
							'<input type="text" name="up" id="up" />'+
						'</td>'+
						'<td>'+
							'<button class="addSize">사이즈 추가</button>'+
						'</td>'+
					'</tr>'+
				'</tbody>'+
			'</table>'+
			'</div>');
		$("#wrapper").append(a);
		
	});

	$(document).on("click",".addSize",function(){
		console.log("asd");
		$(this).closest("tbody")
		.append('<tr>'+
				'<td></td>'+
				'<td>'+
					'<select name="p_size" id="p_size">'+
						'<option value="#">사이즈</option>'+
						'<c:forEach var="i" begin="220" end="300" step="10">'+		
							'<option value="${i}">${i}</option>'+
						'</c:forEach>'+
					'</select>'+
				'</td>'+
				'<td>'+
					'<input type="text" name="ea" id="ea" />'+
				'</td>'+
				'<td></td>'+
				'<td><a href="#" class="deleteAn">삭제</a></td>'+
				'</tr>');
	});
	
	$(document).on("click",".deleteAn",function(){
		$(this).closest("tr").remove();
		
	});
	
	$()
</script>
</body>
</html>