<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>

		<div id="wrap" >
			<div class="signup-form-box p-3">
				<div class="signup-form-top mb-4">
					<h1 class="primary-color text-center mt-2 mb-3"><b>회원가입</b></h1>
					<div class="label-input-groupd d-flex align-items-center justify-content-center mb-1">
						<label class="col-2 label-id"><small>아이디</small></label>
						<input type="text" class="form-control col-6">
					</div>
					<button id="isDuplicateBtn" type="button" class="btn btn-sm btn-primary mb-2"><small>중복확인</small></button>
					<div class="label-input-group d-flex align-items-center justify-content-center mb-4">
						<label class="col-2"><small>성명</small></label>
						<input type="text" class="form-control col-6">
					</div>
					<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
						<label class="col-2"><small>비밀번호</small></label>
						<input type="text" class="form-control col-6">
					</div>
					<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
						<label class="col-2"><small>비밀번호 확인</small></label>
						<input type="text" class="form-control col-6">
					</div>
					<div class="label-input-group d-flex align-items-center justify-content-center mb-4">
						<label class="col-2"><small>이메일</small></label>
						<input type="text" class="form-control col-6">
					</div>
					<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
						<label class="col-2"><small>닉네임</small></label>
						<input type="text" class="form-control col-6">
					</div>
			    </div>
				<hr class="mb-4">
				<div class="signup-form-bottom">
					<h2 class="primary-color text-center mb-3">세부사항 입력</h2>
					<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
						<label class="col-2"><small>키</small></label>
						<input type="text" class="form-control col-6">
					</div>
					<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
						<label class="col-2"><small>몸무게</small></label>
						<input type="text" class="form-control col-6">
					</div>
					<div class="input-group-activity-level d-flex align-items-center mb-3">
						<label class="col-2"><small>활동량</small></label>
						<div class="radio-group-container">
							<div class="radio-group d-flex align-items-center">
								<input type="radio"><div class="radio-text ml-1"><small>활동량 거의 없음</small></div>
							</div>
							<div class="radio-group d-flex align-items-center">
								<input type="radio"><div class="radio-text ml-1"><small>활동량 적음</small></div>
							</div>
							<div class="radio-group d-flex align-items-center">
								<input type="radio"><div class="radio-text ml-1"><small>활동량 많음</small></div>
							</div>
							<div class="radio-group d-flex align-items-center">
								<input type="radio"><div class="radio-text ml-1"><small>활동량 매우 많음</small></div>
							</div>
						</div>
					</div>
					<div class="input-group-gender d-flex align-items-center mb-3">
						<label class="col-2 mt-1"><small>성별</small></label>
						<div class="radio-group d-flex align-items-center">
							<input type="radio"><div class="radio-text ml-1"><small>남성</small></div><input type="radio" class="ml-2"><div class="radio-text ml-1"><small>여성</small></div>
						</div>
					</div>
					<button id="registerBtn" class="btn btn-primary">가입하기</button>
				</div>
			</div>
			<div class="signin-link-box text-center p-3 mt-4">
				<small>계정이 있으신가요? <a href="#">로그인</a></small>
			</div>
		</div>

</body>
</html>