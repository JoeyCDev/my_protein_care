<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단백질 계산기</title>
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
	<div class="calculator-main-section d-flex justify-content-center mb-5">
		<div class="calculator-element">
			<h1 class="article-title text-center mb-4">일일 단백질 계산기</h1>
			<div class="food-quantity-input-form">
				<div class="serach-bar-container d-flex align-items-center mb-3">
					<label class="article-label col-1">식품</label>
					<div class="input-group mb-3 col-10">
			  			<div class="input-group-prepend">
			    			<span class="input-group-text" id="search-icon"><i class="fas fa-search"></i></span>
			  			</div>
			  			<input type="text" class="form-control" placeholder="식품 이름">
					</div>
				</div>
				<div class="serach-bar-container d-flex align-items-center mb-3">
					<label class="article-label col-1">양</label>
					<div class="input-group mb-3 col-10">
			  			<input type="text" class="form-control" placeholder="ex)50.2">
			  			<div class="input-group-append">
			    			<span class="input-group-text" id="search-icon">g</span>
			  			</div>
					</div>
				</div>
				<div class="button-container d-flex justify-content-end">
					<button id="calculateBtn" class="btn btn-sm mr-3 mb-3">계산하기</button>
					<div class="result-container-hidden d-none">
						<small class="text-success">132g</small>
					</div>
				</div>
			</div>
			<div class="food-quantity-input-form-hidden d-none">
				<div class="serach-bar-container d-flex align-items-center mb-3">
					<label class="article-label col-1">식품</label>
					<div class="input-group mb-3 col-10">
			  			<div class="input-group-prepend">
			    			<span class="input-group-text" id="search-icon"><i class="fas fa-search"></i></span>
			  			</div>
			  			<input type="text" class="form-control" placeholder="식품 이름">
					</div>
				</div>
				<div class="serach-bar-container d-flex align-items-center mb-3">
					<label class="article-label col-1">양</label>
					<div class="input-group mb-3 col-10">
			  			<input type="text" class="form-control" placeholder="ex)50.2">
			  			<div class="input-group-append">
			    			<span class="input-group-text" id="search-icon">g</span>
			  			</div>
					</div>
				</div>
				<div class="button-container d-flex justify-content-end mb-3">
					<button id="calculateBtn" class="btn btn-sm mr-3">계산하기</button>
					<div class="result-container-hidden d-none">
						<small class="text-success">132g</small>
					</div>
				</div>
			</div>
			<div class="button-container d-flex justify-content-center">
				<button id="addMoreBtn" class="btn">추가하기</button>
			</div>
			<div class="button-container d-flex justify-content-end">
				<button id="calculateOverallBtn" class="btn">총 결과보기</button>
			</div>
			<div class="overall-result-container-hidden d-none">
				<h4 class="calculator-h4">총 섭취량:</h4>
				<h4 class="calculator-h4">일일 권장 섭취량:</h4>
				<h4 class="calculator-h4">필요 섭취량:</h4>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
</div>

<script>
	$("#calculateBtn").on("click",function(){
		$(".result-container-hidden").removeClass("d-none");
	});
	$("#addMoreBtn").on("click",function(){
		$(".food-quantity-input-form-hidden").removeClass("d-none");
	});
	
	$("#calculateOverallBtn").on("click",function(){
		$(".overall-result-container-hidden").removeClass("d-none");
	});
</script>

</body>
</html>