<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/resources/resources.jsp"/>
<title>개인정보 동의서</title>
<style>
	.container{
		margin: 0 auto;
		text-align:center;
		}
	
	label, input{
		margin:20px;
	}
	h3{
		padding-bottom:20px;
	}
	#signForm{
		margin-top:30px;
		padding:20px;
	}
</style>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container">
	<div id="signForm" class="panel panel-default">
		<div class="panel-heading">
          	<h1 class="panel-title">개인정보 수집 동의절차</h1>
        </div>
	<div>
		<h3>개인정보 수집 동의</h3>
		<textarea name="agreeInfo1" id="agreeInfo1" cols="100" rows="10" disabled="disabled">
			개인정보 수집 이용 약관
		</textarea><br />
		<label for="agree1">개인정보 수집에 동의 합니다.</label>
		<input type="checkbox" id="agree1"/>
	</div>
	<div>
		<h3>개인정보 활용 동의</h3>
		<textarea name="agreeInfo2" id="agreeInfo2" cols="100" rows="10" disabled="disabled">
			개인정보 활용 이용 약관
		</textarea><br />
		<label for="agree2">개인정보 수집에 동의 합니다.</label>
		<input type="checkbox" id="agree2" />
	</div>
	<div>
		<button id="next" class="btn btn-inverse">회원가입</button>
		<button id="cancel" class="btn btn-inverse">돌아가기</button>
	</div>
	</div>
</div>
<jsp:include page="../footer.jsp"/>
<script>
	//회원가입 버튼 클릭시 checkbox가 체크 되었는지 확인
	$("#next").on("click", function(){
		var ag1=$("input:checkbox[id=agree1]").is(':checked');
		var ag2=$("input:checkbox[id=agree2]").is(':checked');
		if(ag1 && ag2){
			location.href="signup_form.do";
		}else{
			alert("개인정보 동의에 체크 해주세요.");
		}
	});
	//취소버튼 클릭시
	$("#cancel").on("click",function(){
		location.replace="#";
	});
</script>
</body>
</html>