<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String cPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/home1.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fotorama.css" />
<style>
.row_b{
	width:768px;
	margin:auto;
}
.row_b:before{
	content:" ";
	display:table;
	clear:both;
}
.row_b:after{
	content:" ";
	display:table;
	clear:both;
}
.row_b > .col_b{
	width:50%;
	float:left;
}
</style>
<title>장바구니</title>
</head>
<body>
		<!-- 네비게이션 -->
<jsp:include page="../navbar.jsp"></jsp:include>
<form action="order_insert.do" method="post">
	<div class="row_b">
		<div class="col_b">
			<div> 주문결제</div>
				<c:if test="${mem_flag!=2}">
					<label for="defaultAddr">회원가입정보 입력</label>
					<input type="checkbox" name="defaultAddr" id="defaultAddr"/><br />
				</c:if> 
				<label for="name">받는분</label>
				<input type="text" name="res_name" id="name"/><br />
				<label for="phone">휴대전화</label>
				<input type="text" name="res_phone" id="phone"/><br />
				<label for="addr">주소</label>
				<input type="text" name="res_address" id="addr"/><br />
						
		</div>
		<div class="col_b">
			<div>
				<table class="table">
					<tr>
						<td>상품</td>
						<td>사이즈</td>
						<td>수량</td>
						<td>단위가격</td>
						<td>합계가격</td>
					</tr>
					<c:forEach var="tmp" items="${cartList }">
					<tr>
						<td>${tmp.p_name }</td>
						<td>${tmp.p_size }</td>
						<td>${tmp.o_count }</td>
						<td>${tmp.o_sub_price }</td>
						<td class="price">${tmp.o_sub_total_price}</td>
					</tr>
					</c:forEach>
					<tr><td colspan="5">총 <b>${cartList.size()}</b>건</td></tr>
				</table>
			</div>
			
		</div>
		
		<div id="paymentWrap">
				<table class="table">
					<tr>
						<th bgcolor="grey"></th>
							<th bgcolor="grey">결제 예정금액</th>
					</tr>
					<tr>
						<td>상품가격</td>
						<td><b id="totalPrice"></b> 원</td>
					</tr>
					<tr>
						<td >적립포인트</td>
						<td><b id="point"></b> point</td>
					</tr>
					<tr>
						<td>결제금액</td>
						<td><b id="totalSumPrice"></b>원</td>
					</tr>
				</table>
					<input type="hidden" name="o_no" value="${cartList.get(0).getO_no()}"/>
					<input type="submit" value="최종결제"/>
			</div>
	</div>
</form>

<!-- ****************footer**************** -->
<jsp:include page="../footer.jsp"></jsp:include>
<c:if test="${sessionScope.id eq root }">
	<script>
		document.querySelector("#bg").style.visibility = "visible";
	</script>
</c:if>
<script>
	var totalSum = function(){
		var priceDom=document.getElementsByClassName('price');
		var totalPrice=0;
		for(var i=0; i<priceDom.length; i++){
			totalPrice += parseFloat(priceDom[i].textContent);
			//console.log("pp",totalPrice);
		}
		$("#totalPrice").text(totalPrice);
		$("#point").text(totalPrice/100);
		$("#totalSumPrice").text(totalPrice+3000);
	}
	totalSum();
	
	$("#defaultAddr").on("change",function(e){
		if(e.target.checked){
			$.ajax({
				url:'default_addr_ajax.do',
				type:'post',
				success:function(result){
					console.log(result);
					$("#name").val(result.name);
					$("#phone").val(result.phone);
					$("#addr").val(result.addr);					
				}
			});
		}else{
			$("#name").val('');
			$("#phone").val('');
			$("#addr").val('');	
		}
		
		
	})
</script>
</body>
</html>
