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
</head>
<body>

		<div id="wrap" >
			<c:import url="/WEB-INF/jsp/include/header.jsp"/>
			<section class="main mb-5">
				<div class="signup-form-box p-3">
					<div class="signup-form-top mb-4">
						<h1 class="font-primary-color text-center mt-2 mb-3"><b>회원가입</b></h1>
						<form id="signUpForm">
							<div class="label-input-groupd d-flex align-items-center justify-content-center mb-1">
								<label class="col-2 label-id"><small>아이디</small></label>
								<input type="text" id="idInput" class="form-control col-6">
							</div>
							<button id="isDuplicateBtn" type="button" class="btn btn-sm btn-primary mb-2"><small>중복확인</small></button>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-4">
								<label class="col-2"><small>성명</small></label>
								<input type="text" id="nameInput" class="form-control col-6">
							</div>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
								<label class="col-2"><small>비밀번호</small></label>
								<input type="password" id="passwordInput" placeholder="영문,숫자 조합 8~10자 이내" class="form-control col-6">
							</div>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
								<label class="col-2"><small>비밀번호 확인</small></label>
								<input type="password" id="passwordCheckInput" class="form-control col-6">
							</div>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-4">
								<label class="col-2"><small>이메일</small></label>
								<input type="text" id="emailInput" class="form-control col-6">
							</div>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
								<label class="col-2"><small>닉네임</small></label>
								<input type="text" id="nicknameInput" class="form-control col-6">
							</div>
					    </div>
						<hr class="mb-4">
						<div class="signup-form-bottom">
							<h2 class="font-primary-color text-center mb-3">세부사항 입력</h2>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
								<label class="col-2"><small>키</small></label>
								<input type="text" id="heightInput" placeholder="소숫점 한자리(cm) ex)180.0cm" class="form-control col-6">
							</div>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
								<label class="col-2"><small>몸무게</small></label>
								<input type="text" id="weightInput" placeholder="소숫점 한자리(kg) ex)80.1kg" class="form-control col-6">
							</div>
							<div class="input-group-activity-level d-flex align-items-center mb-3">
								<label class="col-2"><small>활동량</small></label>
								<div class="radio-group-container">
									<div class="radio-group d-flex align-items-center">
										<input type="radio" name="activityLevelInput" value="activityLevelVeryLow"><div class="radio-text ml-1"><small>활동량 거의 없음</small></div>
									</div>
									<div class="radio-group d-flex align-items-center">
										<input type="radio" name="activityLevelInput" value="activityLevelLow"><div class="radio-text ml-1"><small>활동량 적음</small></div>
									</div>
									<div class="radio-group d-flex align-items-center">
										<input type="radio" name="activityLevelInput" value="activityLevelHigh"><div class="radio-text ml-1"><small>활동량 많음</small></div>
									</div>
									<div class="radio-group d-flex align-items-center">
										<input type="radio" name="activityLevelInput" value="activityLevelVeryHigh"><div class="radio-text ml-1"><small>활동량 매우 많음</small></div>
									</div>
								</div>
							</div>
							<div class="input-group-gender d-flex align-items-center mb-3">
								<label class="col-2 mt-1"><small>성별</small></label>
								<div class="radio-group d-flex align-items-center">
									<input type="radio" name="genderInput" value="male"><div class="radio-text ml-1"><small>남성</small></div>
									<input type="radio" name="genderInput" value="female" class="ml-2"><div class="radio-text ml-1"><small>여성</small></div>
								</div>
							</div>
							<button id="registerBtn" class="btn btn-primary">가입하기</button>
						</div>
						</form>
				</div>
				<div class="signin-link-box text-center p-3 mt-4">
					<small>계정이 있으신가요? <a href="#">로그인</a></small>
				</div>
			</section>
			<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
		</div>

<script>

	$(document).ready(function(){
		
		//키 정수세자리 이하 소숫점 한자리 이하 형태로 표현 ex)180.1
		$("#heightInput").off("keypress").on("keypress",function(e){
			var height = $("#heightInput").val();
			var pressedKey = e.which;
			//정규식 활용해서 숫자만 입력받도록
			if (pressedKey!=46 && pressedKey>31 && (pressedKey<48 || pressedKey>57)){
            	return false;
			}
			//정규식 활용해서 소숫점 두개 나오지 못하도록
			 var _pattern1 = /^\d*[.]\d*$/;
			 if(_pattern1.test(height)){
				 if(pressedKey==46){
					return false;
					}
				}
			//정규식 활용해서 1000이하의 숫자만 입력 가능하도록
			var _pattern2 = /^\d{3}$/;
			if(_pattern2.test(height)){
				// . 이 아닐시
				if(pressedKey!=46){
					alert("1000이하의 숫자만 입력가능합니다.")
					return false;
				}
			}
			//정규식 활용해서 소숫점 1자리까지만 입력가능하도록
			var _pattern3 =/^\d*[.]\d{1}$/;
			if(_pattern3.test(height)){
				alert("소수점 첫재짜리까지만 입력가능합니다.")
				return false;
			}
		});
	
		//몸무게 정수세자리 이하 소숫점 한자리 이하 형태로 표현 ex)80.1
		$("#weightInput").off("keypress").on("keypress",function(e){
			var weight = $("#weightInput").val();
			var pressedKey = e.which;
			//정규식 활용해서 숫자만 입력받도록
			if (pressedKey!=46 && pressedKey>31 && (pressedKey<48 || pressedKey>57)){
            	return false;
			}
			//정규식 활용해서 소숫점 두개 나오지 못하도록
			 var _pattern1 = /^\d*[.]\d*$/;
			 if(_pattern1.test(weight)){
				 if(pressedKey==46){
					return false;
					}
				}
			//정규식 활용해서 1000이하의 숫자만 입력 가능하도록
			var _pattern2 = /^\d{3}$/;
			if(_pattern2.test(weight)){
				// . 이 아닐시
				if(pressedKey!=46){
					alert("1000이하의 숫자만 입력가능합니다.")
					return false;
				}
			}
			//정규식 활용해서 소숫점 1자리까지만 입력가능하도록
			var _pattern3 =/^\d*[.]\d{1}$/;
			if(_pattern3.test(weight)){
				alert("소수점 첫재짜리까지만 입력가능합니다.")
				return false;
			}
		});
		
		$("#signUpForm").on("submit",function(e){
			
			e.preventDefault();
			
			var loginId = $("#idInput").val().trim();
			var name = $("#nameInput").val().trim();
			var password = $("#passwordInput").val().trim();
			var passwordCheck = $("#passwordCheckInput").val().trim();
			var email = $("#emailInput").val().trim();
			var nickname = $("#nicknameInput").val().trim();
			var height = $("#heightInput").val().trim();
			var weight = $("#weightInput").val().trim();
			var activityLevel = $("input[name='activityLevelInput']:checked").val();
			var gender = $("input[name='genderInput']:checked").val();
			
			var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			var passwordRegExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,10}$/;
			
			if(loginId==null||loginId==""){
				alert("아이디를 입력하세요");
				return;
			}
			if(name==null||name==""){
				alert("성명을 입력하세요");
				return;
			}
			if(password==null||password==""){
				alert("비밀번호를 입력하세요");
				return;
			}
			if(password.match(passwordRegExp)==null){
				alert("비밀번호를 영문,숫자 조합 8~10자 사이로 입력하세요");
				return;
			}
			if(passwordCheck==null||passwordCheck==""){
				alert("비밀번호 확인을 입력하세요");
				return;
			}
			if(password!=passwordCheck){
				alert("비밀번호가 일치하지 않습니다");
				return;
			}
			if(email==null||email==""){
				alert("이메일을 입력하세요");
				return;
			}
			if(email.match(emailRegExp) == null){
				alert("잘못된 이메일 주소형식입니다");
				return;
			}
			if(nickname==null||nickname==""){
				alert("닉네임을 입력하세요");
				return;
			}
			if(height==null||height==""){
				alert("키를 입력하세요");
				return;
			}
			if(weight==null||weight==""){
				alert("몸무게를 입력하세요");
				return;
			}
			if(activityLevel==undefined){
				alert("활동량을 선택하세요");
				return;
			}
			if(gender==undefined){
				alert("성별을 선택하세요");
				return;
			}
			
			$.ajax({
				type:"post",
				url:"/user/sign_up",
				data:{"loginId":loginId,
					"name":name,
					"password":password,
					"email":email,
					"nickname":nickname,
					"height":height,
					"weight":weight,
					"activityLevel":activityLevel,
					"gender":gender},
				success:function(data){
					if(data.result=="success"){
						alert("회원가입 성공");
					}else{
						alert("회원가입 실패");
					}
				},
				error:function(e){
					alert("error");
				}
			});
		});
	});
</script>

</body>
</html>