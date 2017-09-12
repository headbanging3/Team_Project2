<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>㈜슙스 공식 온라인스토어</title>
<jsp:include page="/resources/resources.jsp"/>
<style>
	.main{
		background-color: #fff;
		padding: 20px;
	}
	.contents{
		margin-top:100px;
		border-bottom: 5px solid #e8e8e8;
		background-color: #fff;
		padding: 30px 20px;
		text-align: center;
		font-style: inherit;
	}
	.conTop{
		border-bottom: 1px solid #black;
		
	}
	.contents a{
		cursor: pointer;
		text-decoration:none; 
		color:#000;
	}
	.contents h5{
		text-align: left;
		padding-left: 12px;
		margin-top:-10px;
	}
	.content{
		display: inline-block;
		padding: 2px;
		
	}
	/*a:hover{color:#000;}*/                     
	.midMenu ul li a{
		 
		color:#000;
		font-size: 15px;
	}    
	.midMenu ul{padding-top:10px;}                     /*  상단 여백 10px  */
	.midMenu ul li {
            display:inline;                         /*  세로나열을 가로나열로 변경 */
            border-left:1px solid #999;             /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
            font:bold 12px Dotum;                     /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
            padding:0 10px;                         /* 각 메뉴 간격 */
        }
   .midMenu ul li:first-child{border-left:none;}     /* 메뉴 분류중 제일 왼쪽의 "|"는 삭제*/
  	html a:hover{
   		color:#000;
   		text-decoration: underline;
   }
   #topImg img{
   		margine-top:50px;
   		width:500px;
   		height:400px;
   		float:left;
   		border: 1px solid red;
   }
   #topText span{
   		font-size: 20px;
   		padding: 20px;
   		margine-top:-30px;
   }
   #topText p{
   		
   		margin-top:15px;
   }
   .dropdown{
   		display:inline-block;
		width:100px;
		height:80px;
		margin-bottom:0;
		
   }
 	#conMain img{
 		width:1000px;
 		height:600px;
 	}
 	.productsFooter div{
 		margin-top:20px;
 		border-bottom: 5px solid #e8e8e8;
 	}
 	.productsFooter{
		text-align:left;
 	}
 	.productsFooter th{
 		text-align:center;
 	}
 	
 	#refund {
 		margin-bottom :0px;
 		padding-bottom:0px;
 	}
 	
 	#topContent {
 		padding-bottom : 200px;
 	}
 	
 	.orderBtn li{
 		margin-top: 0px;
 		display: inline;
 	}
 	
 	#sub_img img{
 		margin-top:100px;
 		width: 800px;
 		height: 400px;
 	}
 	.size p{
 		
 		display:inline-block;
 		margin:0;
 		margin-top:-20px;
 		
 	}
 	.carculator{
 		text-align: center;
 	}
 	.order{
 		margin-top:30px;
 		margin-bottom:30px;
 	}
</style>
</head>
<body>
<jsp:include page="../navbar.jsp"/> 
<div class="container-fluid">
	<div class="main">
		<div class="row">
			<div class="col-sm-8 col-sm-push-2">
				<div class="midMenu">
					
				</div>
			</div>
		</div>
		<div class="row" id="conTop">
			<div class="col-sm-10 col-sm-push-1">
				<div class="contents" id="topContent">
					<div class="conTop">
						<h4 style="text-align:left; margin-left:50px; margin-top:-20px;"><strong>상품 페이지</strong></h4>
					</div>
					<div>
						<div id="topImg">
							<img src="${pageContext.request.contextPath }/resources/img/productImgs/${mainImg }" />
						</div>
						<div id="topText">
							<p>Men 나이키 맥스</p>
							<h3>${getinfo.p_name } </h3>
							<p><span>${getinfo.p_price }<strong>원</strong></span></p>
							<div class="size">
								<p>무이자 혜택</p>
								<a href="javascript:popup()"> 자세히보기 </a>
							</div>
						</div>
						<div class="calculator">
						
						</div>
						<!--  
						<div class="dropdown">
							<button data-toggle="dropdown" class="btn btn-default dropdown-toggle btn-lg">사이즈
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li role="presentation"><a role="menuitem" tabindex="-1" href="#">HTML</a></li>
    							<li role="presentation"><a role="menuitem" tabindex="-1" href="#">CSS</a></li>
     							<li role="presentation"><a role="menuitem" tabindex="-1" href="#">JavaScript</a></li>
							</ul>
						</div>
						
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle btn-lg" data-toggle="dropdown" >수량
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li role="presentation"><a role="menuitem"  href="#">HTML</a></li>
    							 <li role="presentation"><a role="menuitem"  href="#">CSS</a></li>
     							 <li role="presentation"><a role="menuitem"  href="#">JavaScript</a></li>
							</ul>
						</div>
						-->
						<br />
						<form name="myForm" method="post">
						<select id="size" name="size">
						    <option value="">사이즈</option>
						    <c:forEach var="tmp" items="${psize }">
						    	<option value="${tmp.p_no }">${tmp.p_size }</option>
						    </c:forEach>
						   						 
						</select>
						
						<select  id="amount" name="amount">
						    <option value="">수량</option>
						    <option value="1">1</option>
						    <option value="2">2</option>
						    <option value="3">3</option>
						    <option value="4">4</option>
						    <option value="5">5</option>
						</select>
							
							<div class="carculator">
							<!-- 
								<table border="1" cellspacing="0">
								 	<tr>
								 		<td id="result2"></td>
								 		<td id="result"></td>
								 		<td id="reuslt2">${getinfo.p_price }</td>
								 	</tr>
							 	</table>	
							 -->
							 <div class="order">
								<strong>사이즈:<span id="result"></span></strong>
								<strong>수량:<span id="result2"></span></strong>
								<strong>금액:<span class="money" value="0"></span></strong> 
							 </div>
							
							<ul class="orderBtn">
<<<<<<< HEAD
								<li><input class="btn btn-primary" id="orderBtn" type="button" value="주문1"  /></li>
								<li><input class="btn btn-danger" id="cartBtn" type="button" value="장바구니 담기"/></li>
=======
								<li><input class="btn btn-primary" id="oBtn" type="button" value="주문1" onclick="showPopup()" /></li>
								<li><input class="btn btn-danger" id="cBtn" type="button" value="장바구니 담기" onclick="mySubmit(2)"/></li>
>>>>>>> branch 'master' of https://github.com/headbanging3/Team_Project2.git
							</ul>
						
						</div>	
						</form>
						
						<!-- 
							<div id="refund">
							<h4><strong>반송 가이드</strong></h4>
							<br />
							<p>주절주절</p>
						</div>
						 -->
						
					</div>
					
 				</div>
 				<div class="contents" id="sub_img">
 					<c:forEach var="tmp" items="${ subImg}">
 						<div class="conMain">
 							<img src="${pageContext.request.contextPath }/resources/img/productImgs/${tmp.p_sub_img }" />
 						</div>
 					</c:forEach>
 				</div>
 				<div class="productsFooter">
 					<div class="deliveryInfo">
 						<table class="table table-bordered table-condensed">
 							<colgroup>
				        		<col class="col-xs-2"/>
				        		<col class="col-xs-10"/>
				        	</colgroup>
 							<thead>
 								<tr>
 									<th>배송방식</th>
 									<th>택배</th>
 								</tr>
 							</thead>
 							<tbody>
 								<tr>
 									<td>배송지역</td>
 									<td>전국(일부 지역 제외)</td>
 								</tr>
 								<tr>
 									<td>배송비</td>
 									<td>상품의 구매금액에 상관없이 모든 상품이 무료배송 됩니다.</td>
 								</tr>
 								<tr>
 									<td>배송기간</td>
 									<td>결제 후 3일 이내, 발송완료 등록 및 발송완료 문자 메시지를 받으신 후 고객님께 배달완료 되기까지 1~2일정도 소요됩니다. 
(토요일, 공휴일 제외) 택배사 또는 고객사정(고객님 연락이 되지 않을 경우)으로 인해 배송이 지연되는 경우가 있으니 해당 택배사로 전화문의를 하시면 배송상태를 확인 하실 수 있습니다.</td>
 								</tr>
 								<tr>
 									<td>유의사항</td>
 									<td>고객님의 단순 변심으로 인한 반품의 경우에도 슙스에서 배송비를 부담합니다.
단, 슙스에서 지정된 택배사가 아닌 타 택배사 이용 시 고객님께 요금 부담이 발생됩니다.</td>
 								</tr>
 							</tbody>
 						</table>
 					</div>
 					
 					<div class="refundInfo">
 						<div>
 						<h4>교환/반품 안내</h4>
						<p>고객님의 단순변심(사이즈 부정확 및 디자인 색상 불만 등)으로 인한 교환/반품은 실제 상품을 수령하신 날로부터 7일 이내
						제품하자, 오배송 기타 고객님이 받으신 상품 등의 내용이 표시, 광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 상품 등을 수령한 날로부터 3개월 이내
						그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내
						슙스에서 구매하신 제품에 대해 교환 및 환불 접수를 원하실 경우에는 1:1 이메일 문의를 이용하시거나, 슙스 강남점, 명동점, 코엑스점에 직접 방문하셔도 동일하게 서비스가 가능합니다. 
						단, 해당 매장에 원하시는 제품이 있는 경우에 한하여 교환 서비스가 가능합니다. 
						서비스 가능 매장 : 강남점 명동점 코엑스점
						포장 개봉 후 시착 또는 사용으로 인한 상품의 가치가 훼손된 경우에는 교환/반품이 제한 될 수 있으니, 이 점 유의하여 주시기 바랍니다.
						특정 상품에 대해서 교환/반품 정책이 상이할 수 있습니다. 해당 상품에는 페이지 상단에 별도 정책을 명시하였으니 확인 부탁 드립니다.</p><br />
						<h4>교환/반품 배송비</h4>
						<p>상품의 구매금액에 상관없이 모든 상품이 무료배송 됩니다.
						교환/반품 배송 주소지 : [111-12] 서울특별시 중구 다동 동아빌딩 15층 2강의장</p><br />
						<h4>교환/반품 불가 안내</h4>
						<p>포장을 개봉하여 시착 또는 사용하여 상품 등의 가치가 훼손된 경우에는 교환/반품이 불가하오니 이 점 양해하여 주시기 바랍니다.
						단, 상품의 내용을 확인하기 위하여 포장을 개봉한 경우에는 교환/반품이 가능합니다.
						고객님의 단순 변심으로 인한 교환/반품 요청이 상품을 수령한 날로부터 7일을 경과한 경우
						고객님의 책임 있는 사유로 상품 등의 가치가 심하게 훼손된 경우
						고객님의 사용 또는 일부 소비에 의하여 상품 등의 가치가 현저히 감소된 경우
						시간이 경과되어 재판매가 곤란할 정도로 상품 등의 가치가 상실된 경우 (예: 계절의류)
						신발 박스, 상품의 택과 라벨을 훼손 및 분실하여 재판매가 불가능한 경우
						반품 하실때는 부속품을 반드시 상품과 동시에 반송해 주십시오. (주문확인서, 단추 등 상품의 부속품, 상품에 붙어있는 택·라벨, 신발 박스)
						기타, '전자상거래 등에서의 소비자보호에 관한 법률'이 정하는 청약철회 제한사유에 해당되는 경우
						상기 내용을 충족시키지 않는 경우는 반품 할 수 없습니다.</p><br />
						<h4>환불지연 배상금 지급 안내</h4>
						<p>환불지연이 발생하셨을 경우 전자상거래법에 따라 환불지연배상금 지급을 요청하실 수 있습니다.
						환불이 지연되었을 경우 고객센터로 문의 주시면 환불지연배상금 지급 대상 여부를 확인 후 지급해 드립니다.
						환불지연에 해당하는 경우
						- 슙스의 책임으로 상품공급이 불가한 상태로 결제일로부터 3 영업일이 경과한 경우
						- 반품 상품을 슙스이 수령한 날로부터 3 영업일이 경과하도록 상품대금을 환불하지 않았을 경우
						환불지연배상금액 기준
						- 전자상거래법에서 규정한 지연이자율에 따라 지급함
						교환/반품/보증조건 및 품질보증기준
						슙스에서 구매한 제품에 대한 A/S는 슙스 혹은 본사, 아래의 슙스 직영 매장에 의뢰하십시오. 
						서비스 가능 매장 : 강남점 명동점 코엑스점
						해당 의뢰 기관 이외에서 수선하여 제품을 변경, 손상시켰을 경우에는 보상이 불가합니다.
						(운동화 전용 본드가 아닌 접착제를 사용하면 제품이 손상될 수 있으며 수선, 보상이 불가함)
						소비자 취급 주의사항을 이행하지 않은 경우 보상의 책임을 지지 않습니다.
						잘못된 세탁 및 품질보증기간경과, 잘못된 착화, 제품훼손으로 인한 변형 및 품질이상에 대해서는 보상의 책임을 지지않으며 다만 수선 가능 시에는 실비로 수선하여 드립니다.
						제품의 품질에 이상이 있어 피해보상이나 수선을 원하실 때에는 품질보증서와 영수증을 지참하시고 구입판매점 및 본사 소비자 상담실로 연락해 주십시오.
						본 제품은 소비자분쟁해결기준(공정거래위원회 고시)에 의거 정당한 소비자 피해에 대해 보상해 드립니다.
						재화등의 불만처리 및 소비자사업자의 분쟁처리사항
						재화등의 불만처리 및 소비자와 사업자 간 분쟁 처리 사항은 슙스 이용약관 제 28조(분쟁해결) 내용을 확인해 주시기 바랍니다. 자세히보기</p><br />
						<h4>AS 안내 정보</h4>
						<p>슙스은 제품을 구매하신 뒤 품질에 이상이 있는 경우 온라인 A/S 정책에 따라 서비스를 제공해 드리고 있습니다.자세히보기
						슙스에서 구매하신 제품에 대해 A/S 접수를 원하실 경우에는 1:1 이메일 문의를 이용하시거나, 아래의 슙스 직영 매장에 직접 방문하셔도 동일하게 서비스 이용이 가능합니다. 
						서비스 가능 매장 : 강남점 명동점 코엑스점
						A/S 접수는 슙스 고객센터(TEL: 000-000-0000)를 통해서만 진행됩니다.
						A/S 판정 결과에 따라 수선 비용이 부가될 수 있으며 판정 결과는 품질 보증기간, 내용연수 경과여부, 제품 하자 여부, 소비자 과실 여부에 의해 결정됩니다.
						A/S 접수 후 제품 수거 택배 비용은 무료이며 판정결과에 따라 A/S 제품을 고객님께 발송하는 택배 비용이 부가될 수 있습니다.</p><br />
 						</div>
 					</div>
 					<div class="review">
 						<h3>후기</h3><br />
 						<table class="table table-hover">
 							<thead>
 								<tr>
 									<th>글번호</th>
 									<th>제목</th>
 									<th>작성자</th>
 									<th>작성일</th>
 								</tr>
 							</thead>
 							<tbody>
 								<tr>
 									<td>01</td>
 									<td><a href="#">사이즈 문의</a></td>
 									<td>웅스</td>
 									<td>오늘</td>
 								</tr>
 							</tbody>
 						</table>
 					</div>
 				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="../footer.jsp"/>
<script>

	function popup(){
		window.open("${pageContext.request.contextPath}/products/popup.do","팝업창","width=600,height=400,top=200,left=500");
	}
	
	$("#cartBtn").on("click",function(){
		var p_no = $("#size option:selected").val();
		var p_code = "${getinfo.p_code}";
		var o_count = $("#amount option:selected").text();
		var o_sub_price = "${getinfo.p_price }";
		var o_sub_total_price = o_sub_price*o_count;
		
		var cart = {
				p_no:p_no,p_code:p_code,o_count:o_count,o_sub_total_price:o_sub_total_price,o_sub_price:o_sub_price
		}//ajax태울 카트객체
		console.log(cart);
		if(!(p_no&&p_code&&o_count&&o_sub_price&&o_sub_total_price)){
			return;
		}
		function insert(){
			$.ajax({
				url: 'insertCart_ajax.do',
				type:'post',
				data:cart,
				success:function(result){
					if(result.result=='fail'){
						alert('장바구니에 있는 상품입니다.장바구니에서확인하세요');
					}else{
						var goCart= confirm("장바구니에 담겼습니다.장바구니로 이동하시겠습니까?");
						if(goCart){
							location.replace("http://localhost:8888/shoopse/cart/cart_list.do");
						}else{
							location.reload();
						}
					}
				}
			})
		}

		var mem_flag = "${mem_flag}";
		if(!mem_flag){
			alert("비회원 구매 진행합니다.");
			$.ajax({
				url: 'notuserSignup.do',
				type:'post',
				data: {
					mem_flag:2
				},
				success:function(){
					console.log('비회원생성');
					insert();
				}
			})
		}else{
			insert();
		}	
	});
	
	var a= $("#amount").on("change",function(){
		var price = '<c:out value="${getinfo.p_price}"/>';

		var text = $("#amount option:selected").text();

		var b =  $("#result2").text(text);
		var c = parseInt($('#amout option:selected').val());
		//console.log(c);
		//console.log("price:"+price);
		$('.money').text(price*text);
		
	});
	$("#size").on("change",function(){
		var text= $("#size option:selected").text();
		$("#result").text(text);
		
	});
	
</script>
</body>
</html>