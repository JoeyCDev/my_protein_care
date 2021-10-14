<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyProteinCare</title>
<!-- bootstrap CDN link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!--  ajax 포함 jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!--  datepicker -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" 
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" 
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" 
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" 
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<scripsrc="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- stylesheet -->
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/904eedb8ad.js" crossorigin="anonymous"></script>
</head>
<body>

	<div id="wrapMain" >
		<c:import url="/WEB-INF/jsp/include/headerMain.jsp"/>
		<div id="section">
			<article class="article1">
				<h1>단백질 섭취량 그래프</h1>
				<div class="content">
				</div>
			</article>
			<article class="article2">
				<h1>단백질 섭취량 기록하기</h1>
				<div class="content">
				</div>
			</article>
			<article class="article3">
				<h1>고단백 음식 포스팅 보기</h1>
				<div class="content">
				</div>
			</article>
			<article class="article4">
				<h1>고단백 음식 포스팅 하기</h1>
				<div class="content">
				</div>
			</article>
			<article class="article5">
				<h1>주요 단백질 음식 정보</h1>
				<div class="content">
				</div>
			</article>
			<article class="article6">
				<h1>저장된 고단백 음식 리스트</h1>
				<div class="content">
				</div>
			</article>
			<article class="article7">
				<h1>참고자료</h1>
				<div class="content">
				</div>
			</article>
			<article class="article8">
				<h1>일일 단백질 계산기</h1>
				<div class="content">
				</div>
			</article>
		</div>
		<footer id="mainFooter" class="text-center">
			<small>Copyright 2021. MyProteinCare. all rights reserved.</small>
		</footer>
	</div>
<script>
	$(".article8").on("click",function(){
		
		location.href="/protein/calculator_view";
		
	});
</script>
</body>
</html>