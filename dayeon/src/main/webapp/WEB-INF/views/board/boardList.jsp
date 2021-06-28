<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<link rel="stylesheet" type="text/css" href="/dy/css/w3.css">
<link rel="stylesheet" type="text/css" href="/dy/css/user.css">
<script type="text/javascript" src="/dy/js/jquery-3.6.0.min.js"></script>
<style type="text/css">

</style>

<script type="text/javascript">

</script>
</head>
<body>

<form method="POST" action="/dy/board/board.dy"  id="frm" name="frm">
		<input type="hidden" name="nowPage" id="nowPage" value="${PAGE.nowPage}"> <!-- 현재페이지 전송용 || 이동페이지 전송용 -->
</form>

	<div class="w3-content w3-center mxw1100 ">
		<h1 class="w3-center mgl0 mgt40 mgb60 "><strong>게시판</strong></h1>
		<div class="mxw900 w3-content w3-topbar w3-border-black w3-padding ">
		<div class="inblock mgt30 w3-hover-pale-yellow w3-round w3-right w3-button w3-yellow">글 작성</div>
			<div class=" w3-col mgt30 w3-border w3-border-grey w3-pale-yellow ">
				<div class="w3-col s2 inblock mgl40"><strong>글번호</strong></div>
				<div class="w3-col s6 inblock mgl20"><strong>제목</strong></div>
				<div class="w3-col s2 inblock mgl20"><strong>작성일</strong></div>
			</div>
<c:forEach 	var="data" items="${LIST}">		
			<div class=" w3-col w3-border w3-border-light-grey w3-hover-pale-yellow mgb60 w3-button">
				<div class="w3-col s2 inblock mgl30 w3-text-grey">${data.bno }</div>
				<div class="w3-col s6 inblock mgl30 w3-text-grey">${data.title }</div>
				<div class="w3-col s2 inblock mgl30 w3-text-grey">${data.sdate }</div>
			</div>
</c:forEach>		
		
		
		<!-- 페이징 처리 -->
		<div class=" w3-col mgt60 w3-center w3-margin-bottom">
			<div class="w3-bar w3-border w3-round w3-margin-top">
	<c:if test="${PAGE.startPage == 1}">
				<span class="w3-bar-item w3-pale-yellow">pre</span>
	</c:if>
	<c:if test="${PAGE.startPage != 1}">
				<span class="w3-bar-item w3-button  pbtn">pre</span>
	</c:if>
<c:forEach var="page" begin="${PAGE.startPage}" end="${PAGE.endPage}">
	<c:if test="${PAGE.nowPage == page}">
				<span class="w3-bar-item w3-button w3-hover-pale-yellow w3-white pbtn">${page}</span>
	</c:if>
	<c:if test="${PAGE.nowPage != page}">
				<span class="w3-bar-item w3-button  pbtn">${page}</span>
	</c:if>
</c:forEach>
	<c:if test="${PAGE.endPage == PAGE.totalPage}">
				<span class="w3-bar-item w3-pale-yellow">next</span>
	</c:if>
	<c:if test="${PAGE.endPage != PAGE.totalPage}">
				<span class="w3-bar-item w3-button  pbtn">next</span>
	</c:if>
			</div>	
	</div>
	</div>
</body>
</html>