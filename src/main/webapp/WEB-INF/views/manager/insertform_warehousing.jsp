<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath }/resources/semantic/semantic.min.css?version=1" />
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resources/semantic/semantic.min.js"></script>
<title>입고등록 페이지</title>
</head>
<style>
	#article{
		padding-top: 50px;
	}
</style>
<body>

<div class="ui top attached menu">
  <a class="item">
    <i class="sidebar icon"></i> Menu
  </a>  
  <div class="menu right">
  	<div class="ui pointing menu">
	  <a class="active item">
	    Home
	  </a>
	  <a class="item">
	    Messages
	  </a>
	  <a class="item">
	    Friends
	  </a>
	  <div class="right menu">
	    <div class="item">
	      <div class="ui transparent icon input">
	        <input type="text" placeholder="Search...">
	        <i class="search link icon"></i>
	      </div>
	    </div>
	  </div>
	</div>
  </div>
</div>
<div class="ui bottom attached segment">
  	<div class="ui labeled left vertical sidebar menu">
	    <div class="ui simple dropdown item">
	    	입고관리
	    	<i class="dropdown icon"></i>
	    	<div class="right menu">
		      <a class="item">Electronics</a>
		      <a class="item">Automotive</a>
		      <a class="item">Home</a>
		    </div>
	    </div>
	    <a class="item">업체관리</a>
	    <a href="${pageContext.request.contextPath }/m_home.do" class="item">
	    	관리자 페이지
	    </a>
	    <a href="insertformwarehousing.do" class="item">
	        입고등록
	    </a>
	    <a href="warehousing.do" class="item">
	    	입고 리스트
	    </a>
	    <a href="agencylist.do" class="item">
	    	업체 리스트
	    </a>
	    <a href="insertformagency.do" class="item">
	    	업체 등록
	    </a>
  	</div>
	<div class="pusher">
		<div class="ui" id="article">
			<h1 class="ui header">입고 등록</h1>
		</div>		
		<form id="myForm" class="ui form" name="myForm" action="insertwarehousing.do" method="post">
			<div class="required field">
				<label>납품처 </label>
				<select class="ui fluid dropdown" name="a_code">
					<option value="">업체선택</option>
					<c:choose>
		           		<c:when test="${empty list }">
		           			<option value="">업체등록되지않음.</option>
		           		</c:when>	
		           		<c:otherwise>
		           			<c:forEach var="tmp" items="${list }">			      
								<option value="${tmp.a_code }">${tmp.company }</option>						
							</c:forEach>			
		           		</c:otherwise>
					</c:choose>		
				</select>			
			</div>
			<div class="required field">
				<label>입고 날짜</label>
				<input type="date" name="w_date" />
			</div>
			<!-- 
			<div class="required field">
				<label>입고 총 수량</label>
				<input type="number" name="w_total_count" />
			</div>
			<div class="required field">
				<label>입고 총 금액</label>
				<input type="number" name="w_total_price"/>
			</div>
			 
			<div class="required field">
				<label for="">제품 종류</label>
				<select class="ui fluid dropdown" name="" id="category">
					<option value="#">선택</option>
					<c:forEach var="tmp" items="${categoryList}">		
						<option value="${tmp.p_kind_code }">${tmp.kind_name }</option>
					</c:forEach>
				</select>
				<select name="p_kind_code" id="division">
					<option value="#">선택</option>
					<c:forEach var="tmp" items="${divisionList}">		
						<option value="${tmp.p_kind_code }">${tmp.kind_name }</option>
					</c:forEach>
				</select><br />
		
			</div>
			<div class="required field">
				<label for="">상품명</label>
				<select name="" id="division2">
					<option value="#"></option>
				</select>
			</div>
			 -->
			<button type="submit" class="ui button">등록</button>
		</form>		
	</div>
</div>

<script>


$("#category").change(function(){
	var params = $('#myForm').serialize();
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
	code=$("#category option:selected").val();
	  console.log(code);

});






/* 사이드바 관련 js */
$('.ui.sidebar').sidebar({
    context: $('.bottom.segment')
  })
  .sidebar('attach events', '.menu .item');



</script>
</body>
</html>