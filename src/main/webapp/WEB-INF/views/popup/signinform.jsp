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
		    <form action="loginresult.do" method="post">
		      
		      <input type="text"  name="id" id="id" placeholder="Username" value="${id }"/>
		      
		      <input type="password" name="pwd" placeholder="Password"/>
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

<script>
function signUpBtn_click() {
	console.log("as");
	
	opener.location.href='${pageContext.request.contextPath}/users/agree_info.do'; 
    window.close();
    
    }
function findBtn_click() {
    opener.location.href='${pageContext.request.contextPath}/users/find_id.do'; 
    window.close();
  }
</script>


</body>
</html>
