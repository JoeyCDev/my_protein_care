<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ȸ������</title>
<!-- bootstrap CDN link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!--  ajax ���� jquery -->
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
						<h1 class="font-primary-color text-center mt-2 mb-3"><b>ȸ������</b></h1>
						<form id="signUpForm">
							<div class="label-input-groupd d-flex align-items-center justify-content-center mb-1">
								<label class="col-2 label-id"><small>���̵�</small></label>
								<input type="text" id="idInput" class="form-control col-6">
							</div>
							<button id="isDuplicateBtn" type="button" class="btn btn-sm btn-primary mb-2"><small>�ߺ�Ȯ��</small></button>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-4">
								<label class="col-2"><small>����</small></label>
								<input type="text" id="nameInput" class="form-control col-6">
							</div>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
								<label class="col-2"><small>��й�ȣ</small></label>
								<input type="password" id="passwordInput" placeholder="����,���� ���� 8~10�� �̳�" class="form-control col-6">
							</div>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
								<label class="col-2"><small>��й�ȣ Ȯ��</small></label>
								<input type="password" id="passwordCheckInput" class="form-control col-6">
							</div>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-4">
								<label class="col-2"><small>�̸���</small></label>
								<input type="text" id="emailInput" class="form-control col-6">
							</div>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
								<label class="col-2"><small>�г���</small></label>
								<input type="text" id="nicknameInput" class="form-control col-6">
							</div>
					    </div>
						<hr class="mb-4">
						<div class="signup-form-bottom">
							<h2 class="font-primary-color text-center mb-3">���λ��� �Է�</h2>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
								<label class="col-2"><small>Ű</small></label>
								<input type="text" id="heightInput" placeholder="�Ҽ��� ���ڸ�(cm) ex)180.0cm" class="form-control col-6">
							</div>
							<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
								<label class="col-2"><small>������</small></label>
								<input type="text" id="weightInput" placeholder="�Ҽ��� ���ڸ�(kg) ex)80.1kg" class="form-control col-6">
							</div>
							<div class="input-group-activity-level d-flex align-items-center mb-3">
								<label class="col-2"><small>Ȱ����</small></label>
								<div class="radio-group-container">
									<div class="radio-group d-flex align-items-center">
										<input type="radio" name="activityLevelInput" value="activityLevelVeryLow"><div class="radio-text ml-1"><small>Ȱ���� ���� ����</small></div>
									</div>
									<div class="radio-group d-flex align-items-center">
										<input type="radio" name="activityLevelInput" value="activityLevelLow"><div class="radio-text ml-1"><small>Ȱ���� ����</small></div>
									</div>
									<div class="radio-group d-flex align-items-center">
										<input type="radio" name="activityLevelInput" value="activityLevelHigh"><div class="radio-text ml-1"><small>Ȱ���� ����</small></div>
									</div>
									<div class="radio-group d-flex align-items-center">
										<input type="radio" name="activityLevelInput" value="activityLevelVeryHigh"><div class="radio-text ml-1"><small>Ȱ���� �ſ� ����</small></div>
									</div>
								</div>
							</div>
							<div class="input-group-gender d-flex align-items-center mb-3">
								<label class="col-2 mt-1"><small>����</small></label>
								<div class="radio-group d-flex align-items-center">
									<input type="radio" name="genderInput" value="male"><div class="radio-text ml-1"><small>����</small></div>
									<input type="radio" name="genderInput" value="female" class="ml-2"><div class="radio-text ml-1"><small>����</small></div>
								</div>
							</div>
							<button id="registerBtn" class="btn btn-primary">�����ϱ�</button>
						</div>
						</form>
				</div>
				<div class="signin-link-box text-center p-3 mt-4">
					<small>������ �����Ű���? <a href="#">�α���</a></small>
				</div>
			</section>
			<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
		</div>

<script>

	$(document).ready(function(){
		
		//Ű �������ڸ� ���� �Ҽ��� ���ڸ� ���� ���·� ǥ�� ex)180.1
		$("#heightInput").off("keypress").on("keypress",function(e){
			var height = $("#heightInput").val();
			var pressedKey = e.which;
			//���Խ� Ȱ���ؼ� ���ڸ� �Է¹޵���
			if (pressedKey!=46 && pressedKey>31 && (pressedKey<48 || pressedKey>57)){
            	return false;
			}
			//���Խ� Ȱ���ؼ� �Ҽ��� �ΰ� ������ ���ϵ���
			 var _pattern1 = /^\d*[.]\d*$/;
			 if(_pattern1.test(height)){
				 if(pressedKey==46){
					return false;
					}
				}
			//���Խ� Ȱ���ؼ� 1000������ ���ڸ� �Է� �����ϵ���
			var _pattern2 = /^\d{3}$/;
			if(_pattern2.test(height)){
				// . �� �ƴҽ�
				if(pressedKey!=46){
					alert("1000������ ���ڸ� �Է°����մϴ�.")
					return false;
				}
			}
			//���Խ� Ȱ���ؼ� �Ҽ��� 1�ڸ������� �Է°����ϵ���
			var _pattern3 =/^\d*[.]\d{1}$/;
			if(_pattern3.test(height)){
				alert("�Ҽ��� ù��¥�������� �Է°����մϴ�.")
				return false;
			}
		});
	
		//������ �������ڸ� ���� �Ҽ��� ���ڸ� ���� ���·� ǥ�� ex)80.1
		$("#weightInput").off("keypress").on("keypress",function(e){
			var weight = $("#weightInput").val();
			var pressedKey = e.which;
			//���Խ� Ȱ���ؼ� ���ڸ� �Է¹޵���
			if (pressedKey!=46 && pressedKey>31 && (pressedKey<48 || pressedKey>57)){
            	return false;
			}
			//���Խ� Ȱ���ؼ� �Ҽ��� �ΰ� ������ ���ϵ���
			 var _pattern1 = /^\d*[.]\d*$/;
			 if(_pattern1.test(weight)){
				 if(pressedKey==46){
					return false;
					}
				}
			//���Խ� Ȱ���ؼ� 1000������ ���ڸ� �Է� �����ϵ���
			var _pattern2 = /^\d{3}$/;
			if(_pattern2.test(weight)){
				// . �� �ƴҽ�
				if(pressedKey!=46){
					alert("1000������ ���ڸ� �Է°����մϴ�.")
					return false;
				}
			}
			//���Խ� Ȱ���ؼ� �Ҽ��� 1�ڸ������� �Է°����ϵ���
			var _pattern3 =/^\d*[.]\d{1}$/;
			if(_pattern3.test(weight)){
				alert("�Ҽ��� ù��¥�������� �Է°����մϴ�.")
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
				alert("���̵� �Է��ϼ���");
				return;
			}
			if(name==null||name==""){
				alert("������ �Է��ϼ���");
				return;
			}
			if(password==null||password==""){
				alert("��й�ȣ�� �Է��ϼ���");
				return;
			}
			if(password.match(passwordRegExp)==null){
				alert("��й�ȣ�� ����,���� ���� 8~10�� ���̷� �Է��ϼ���");
				return;
			}
			if(passwordCheck==null||passwordCheck==""){
				alert("��й�ȣ Ȯ���� �Է��ϼ���");
				return;
			}
			if(password!=passwordCheck){
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
				return;
			}
			if(email==null||email==""){
				alert("�̸����� �Է��ϼ���");
				return;
			}
			if(email.match(emailRegExp) == null){
				alert("�߸��� �̸��� �ּ������Դϴ�");
				return;
			}
			if(nickname==null||nickname==""){
				alert("�г����� �Է��ϼ���");
				return;
			}
			if(height==null||height==""){
				alert("Ű�� �Է��ϼ���");
				return;
			}
			if(weight==null||weight==""){
				alert("�����Ը� �Է��ϼ���");
				return;
			}
			if(activityLevel==undefined){
				alert("Ȱ������ �����ϼ���");
				return;
			}
			if(gender==undefined){
				alert("������ �����ϼ���");
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
						alert("ȸ������ ����");
					}else{
						alert("ȸ������ ����");
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