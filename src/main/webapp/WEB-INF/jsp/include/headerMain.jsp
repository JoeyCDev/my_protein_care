<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="top-section d-flex justify-content-end">
		<div class="signin-out-section mr-5">
			<c:if test="${not empty userId }">
				<b>${userNickname }</b>님 <a href="/user/signout_view" class="ml-3"><b>로그아웃</b></a>
			</c:if>
			<c:if test="${empty userId }">
				<a href="/user/signin_view" class="ml-3">로그인 페이지</a>
			</c:if>
		</div>
	</div>
	<header class="text-center mb-5">
		<h1 class="display-3 font-primary-color"><span class="secondary-color">My</span>Protein<span class="secondary-color">Care</span></h1>
	</header>
	

</body>
</html>