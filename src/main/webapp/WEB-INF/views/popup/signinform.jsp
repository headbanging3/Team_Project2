<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta charset="UTF-8">
  <title>Flat Login Form 3.0</title>
  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">


</head>
<style>
	#a {
		margin-top: -30px;
	}
</style>
<body>
  
<!-- Form Mixin-->
<!-- Input Mixin-->
<!-- Button Mixin-->
<!-- Pen Title-->

<!-- Form Module-->
<div class="cotainer">
	<div class="module form-module" id="a">
	  <div class="toggle"><i class="fa fa-times fa-pencil"></i></div>
		  <div class="form">
		    <h2>Login to your account</h2>
			    <form action="loginresult.do" method="post" onsubmit="return login()">
			    	<input type="hidden" id="RSAModulus" value="${RSAModulus}"/>
       				<input type="hidden" id="RSAExponent" value="${RSAExponent}"/> 
			    
	  		    	<input type="text"  name="USER_ID_TEXT" id="USER_ID_TEXT" placeholder="Username" value="${id }"/>
			      	<input type="password" name="USER_PW_TEXT" id="USER_PW_TEXT" placeholder="Password"/>
			      	
			      	<input type="hidden" id="USER_ID" name="USER_ID">
        			<input type="hidden" id="USER_PW" name="USER_PW">

			      	<button type="submit">Login</button>
			    </form>
			   
		  </div>
		<div class="cta"><a href="javascript:signUpBtn_click()">signup</a></div>
		<div class="cta"><a href="javascript:findBtn_click()">Forgot your id/password?</a></div>
	</div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/rsa.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jsbn.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/prng4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/rng.js"></script>

<script>
function signUpBtn_click() {
	opener.location.href='${pageContext.request.contextPath}/users/agree_info.do'; 
    window.close();
    
    }
function findBtn_click() {
    opener.location.href='${pageContext.request.contextPath}/users/find_id.do'; 
    window.close();
  }
  
function login(){
    var id = $("#USER_ID_TEXT");
    var pw = $("#USER_PW_TEXT");

    if(id.val() == ""){
        alert("아이디를 입력 해주세요.");
        id.focus();
        return false;
    }
    
    if(pw.val() == ""){
        alert("비밀번호를 입력 해주세요.");
        pw.focus();
        return false;
    }
    
    // rsa 암호화
    var rsa = new RSAKey();
    rsa.setPublic($('#RSAModulus').val(), $('#RSAExponent').val());
    
    $("#USER_ID").val(rsa.encrypt(id.val()));
    $("#USER_PW").val(rsa.encrypt(pw.val()));
    
    id.val("");
    pw.val("");

    return true;
}
</script>


</body>
</html>
