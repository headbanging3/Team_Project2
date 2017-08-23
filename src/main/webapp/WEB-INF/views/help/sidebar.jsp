<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div id="content" class="global_content inquiry">
		<div class="global_mypage_lnb">
			<div class="global_nav_tit">
				<h2><span> 일반회원</span><strong>${id }</strong>님</h2>
			</div> 
			<ul>
				<li><a href="serviceinsertform.do">1:1 E-mail 문의</a></li>
				<li><a href="servicelist.do">나의 문의 내역</a></li>
			</ul>
			<ul>
				<li><a href="${pageContext.request.contextPath}/member/info.do">회원정보관리</a></li>
			</ul>
		</div>
	</div>