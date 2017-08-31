<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품문의</title>
<style>
	.container{
		margin: 0 auto;
		text-align:center;
	}
	.panel{
		margin-top:50px;
	}
	#addQna{
		float:right;
	}
	
	h3{	
		padding-top:30px;
		color:#fff;
	}
	tr{
		text-align:center;
	}
	.active{
		font-weight: bold;
	}
	.table th{
		text-align:center;
	}
</style>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container">
	<h3>상품문의 리스트</h3>
	<div class="panel panel-default">
        <div class="panel-heading">
            <h1 class="panel-title">Q&A는 저희가 책임지겠습니다!</h1>
        </div>
       
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>상품번호</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
           		<c:choose>
           			<c:when test="${empty list }">
           				<tr>
           					<td colspan="5">게시글이 없습니다.</td>
           				</tr>	
           			</c:when>	
           			<c:otherwise>
           				<c:forEach var="tmp" items="${list }">
           					<tr>
			                    <td>${tmp.qna_listnum }</td>
			                    <td><a href="qnadetail.do?qna_listnum=${tmp.qna_listnum }">${tmp.qna_title }</a></td>
			                    <td>${tmp.qna_pdnum }</td>
			                    <td>${tmp.qna_writer }</td>
			                   	<td>${tmp.qna_regdate }</td>
			                </tr>
	      				</c:forEach>			
           			</c:otherwise>
           		</c:choose>
            </tbody>
        </table>
        <div class="panel-footer">
         	<!-- 페이징 처리에 관련된 UI -->
			<div class="page_display">
				<ul class="pagination">
					<c:choose>
						<c:when test="${startPageNum ne 1 }">
							<li><a href="qnalist.do?pageNum=${startPageNum-1 }">&laquo;</a></li>
						</c:when>
						<c:otherwise>
							<li class="disabled"><a class="muted" href="javascript:">&laquo;</a></li>
						</c:otherwise>
					</c:choose>
					<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
						<c:choose>
							<c:when test="${i eq pageNum }">
								<li><a  class="active" href="qnalist.do?pageNum=${i }">${i }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="qnalist.do?pageNum=${i }">${i }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${endPageNum lt totalPageCount }">
							<li><a href="qnalist.do?pageNum=${endPageNum+1 }">&raquo;</a></li>
						</c:when>
						<c:otherwise>
							<li class="disabled"><a class="muted" href="javascript:">&raquo;</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
				<c:choose>
					<c:when test="${sessionScope.id eq null }">
						<a href="javascript:showPopup()" id="addQna">글작성</a>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath }/help/qnainsert_form.do" id="addQna">글작성</a>
					</c:otherwise>
				</c:choose>
			</div>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp"/>
<script>
//팝업 띄우는 함수 
function showPopup(){
	window.open("${pageContext.request.contextPath}/popup/signinform.do","팝업창","width=400,height=300,top=200,left=700");
}
</script>
</body>

</html>