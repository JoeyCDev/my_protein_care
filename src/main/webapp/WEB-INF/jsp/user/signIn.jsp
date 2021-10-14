<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�α���</title>
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
			<div class="signin-form-box p-3">
				<h1 class="form-primary-color text-center mt-2 mb-3"><b>�α���</b></h1>
				<form id="signInForm">
					<div class="label-input-groupd d-flex align-items-center justify-content-center mb-1">
						<label class="col-2 label-id"><small>���̵�</small></label>
						<input type="text" id="idInput" class="form-control col-6">
					</div>
					<div class="label-input-group d-flex align-items-center justify-content-center mb-3">
						<label class="col-2"><small>��й�ȣ</small></label>
						<input type="password" id="passwordInput" placeholder="����,���� ���� 8~10�� �̳�" class="form-control col-6">
					</div>
					<button id="registerBtn" class="btn btn-primary">�α���</button>
				</form>
			</div>
			<div class="signup-link-box text-center p-3 mt-4">
				<small>������ �����ŽŰ���? <a href="/user/signup_view">�����ϱ�</a></small>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	</div>
	
<script>
	$(document).ready(function(){
		
		$("#signInForm").on("submit",function(e){
			
			e.preventDefault();
			
			var loginId = $("#idInput").val().trim();
			var password = $("#passwordInput").val().trim();
			

			if(loginId==null||loginId==""){
				alert("���̵� �Է��ϼ���");
				return;
			}
			if(password==null||password==""){
				alert("��й�ȣ�� �Է��ϼ���");
				return;
			}
			
			$.ajax({
				type:"post",
				url:"/user/sign_in",
				data:{"loginId":loginId, "password":password},
				success:function(data){
					if(data.result=="success"){
						alert("�α��� ����");
						location.href="/main/overall_view";
					}else{
						alert("���̵�/��й�ȣ�� Ȯ�����ּ���");
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