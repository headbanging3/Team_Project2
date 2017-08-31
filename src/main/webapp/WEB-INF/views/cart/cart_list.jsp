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
.counter { width:20px; height:20px; boder: 1px solid grey; }
* {
    box-sizing:border-box;
    /*padding:0;
    margin:0;*/
  }
#paymentWrap{
	margin: 0 auto;
	width:20%;
	height:250px;
	border: 3px solid blue;
}


</style>
<title>장바구니</title>
</head>
<body>
		<!-- 네비게이션 -->
<jsp:include page="../navbar.jsp"></jsp:include>

<table class="table">
	<tr>
		<td>체크박스</td>
		<td>상품</td>
		<td>사이즈</td>
		<td colspan="2">수량</td>
		<td>단위가격</td>
		<td>합계가격</td>
	</tr>
	<c:forEach var="tmp" items="${cartList }">
	<tr>
		<td></td>
		<td>${tmp.p_name }</td>
		<td>${tmp.p_size }</td>
		<td>${tmp.o_count }</td>
		<td><button class="counter">+</button><button class="counter">-</button></td>
		<td>${tmp.o_sub_price }</td>
		<td class="price">${tmp.o_sub_total_price}</td>
		<input type="hidden" name="o_no" value="${tmp.o_no }"/>
		<input type="hidden" name="p_no" value="${tmp.p_no }"/>
		<input type="hidden" name="p_code" value="${tmp.p_code }"/>
	</tr>
	</c:forEach>
</table>
<div id="paymentWrap">
	<table class="table">
		<th bgcolor="grey">
			<th bgcolor="grey">결제 예정금액</th>
		</th>
		<tr>
			<td>상품가격</td>
			<td><b id="totalPrice"></b> 원</td>
		</tr>
		<tr>
			<td >적립포인트</td>
			<td ><b id="point"></b> point</td>
		</tr>
		<tr>
			<td>배송비</td>
			<td>3000</td>
		</tr>
		<tr>
			<td>결제금액</td>
			<td><b id="totalSumPrice"></b> 원</td>
		</tr>
		<tr>
			<td>
				<form action="order_insertform.do">
					<input type="submit" value="주문결제"/>
				</form>
			</td>
			<td></td>
		</tr>
	</table>
	
</div>

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
			console.log("pp",totalPrice);
		}
		$("#totalPrice").text(totalPrice);
		$("#point").text(totalPrice/100);
		$("#totalSumPrice").text(totalPrice+3000);
	}
	totalSum();
	//console.log(priceDom[1].textContent);
	//console.log(priceDom.length);

	$(".counter").on("click",function(){	
		var cal=$(this).text();
		var currVal=parseFloat($(this).parent().prev().text());		
		var nextVal;
		var $selectParam=$(this).parent().siblings();
		
		var o_no=$selectParam.eq(6).val();
		var p_no=$selectParam.eq(7).val();
		var p_code=$selectParam.eq(8).val();
		/* console.log("ono",o_no);
		console.log("pno",p_no);
		console.log("pcode",p_code); */
		if(cal==='+'){
			nextVal=currVal+1;
		}else{
			nextVal=currVal-1;
		}
		if(nextVal<1){
			alert("한개 이상만 장바구니 등록 가능합니다.");
			return;
		}		
		var $this=$(this);
		
	 	$.ajax({	 		
	 		url: 'item_count_ajax.do',
			type: 'post',
			data: {
				o_no:o_no,
				p_no:p_no,
				p_code:p_code,
				o_count:nextVal
			},
			success:function(result){
				console.log(result);
				$this.parent().prev().text(result.o_count);
				$selectParam.eq(5).text(result.o_sub_total_price);	
				totalSum();
			}
		})		
	})
</script>
</body>
</html>
