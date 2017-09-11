<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품문의</title>
<jsp:include page="/resources/resources.jsp"/>
<style>
	.container{
		margin: 0 auto;
		text-align:center;
	}
	.panel-body{
		height:400px;
		padding:50px;
	}
	.delQna{
		float:right;
		
		margin-right:20px;
	}
	.panel{
		margin-top:50px;
		
	}
	h3{
		padding-top:30px;
	}
	
</style>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container">
	<h3>상품문의</h3>
	<div class="panel panel-default">
        <div class="panel-heading">
     	    <h1 class="panel-title">제목 : <strong>${dto.qna_title }</strong></h1>
        </div>
         <div class="panel-heading">
          	<h1 class="panel-title">상품 번호 : <strong>${dto.qna_pdnum }</strong></h1>
        </div>
        <div class="panel-body">
            ${dto.qna_content }
        </div>
        <div class="panel-footer">
         	작성자 : <strong>${dto.qna_writer }</strong>
         	<a href="qnaupdate_form.do?qna_listnum=${dto.qna_listnum }&url=${pageContext.request.contextPath }" class="delQna">글수정</a>
            <a href="javascript:deleteCheck()" class="delQna">글삭제</a>
        </div>
    </div>
    <div>
		<button class="btn btn-default" onclick="goBack()">돌아가기</button>
	</div>
</div>

<jsp:include page="../footer.jsp"/>
<script>
	function goBack(){
		location.href="qnalist.do";
	}
</script>
<c:choose>
	<c:when test="${not empty sessionScope.id }">
		<c:if test="${sessionScope.id eq dto.qna_writer }">
			<script>
				function deleteCheck(){
					var isDelete=confirm("글을 삭제 하시겠습니까?");
					if(isDelete){
						location.href="qnadelete.do?listnum=${dto.qna_listnum }";
					}
				}
			</script>
		</c:if>
		<c:if test="${sessionScope.id ne dto.qna_writer }">
			<script>
				function deleteCheck(){
					alert("권한이 없습니다.");
				}
			</script>
		</c:if>
	</c:when>
	<c:otherwise>
		<script>
			function deleteCheck(){
				window.open("${pageContext.request.contextPath}/popup/signinform.do","팝업창","width=400,height=300,top=200,left=700");
			}
		</script>
	</c:otherwise>
</c:choose>

</body>
</html>