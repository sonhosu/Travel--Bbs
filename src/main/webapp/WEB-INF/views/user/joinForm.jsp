<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>회원가입</title>
<body class="container">
	<div id="login-form">
		<form action="/" method="post">
			<div class="login-id-label">아이디</div>
			<input type="text" id="userId" class="login-input-box" placeholder="ID 입력">
			<div class="login-id-label">비밀번호</div>
			<input type="password" id="userPassword" class="login-input-box" placeholder="PW 입력">
			<div class="login-id-label">이름</div>
            <input type="text" id="userName" class="login-input-box">
            <div class="login-id-label">생년월일</div>
            <input type="text" id="userBirth" class="login-input-box" placeholder="ex)19971117">
            <div class="login-id-label">이메일</div>
            <input type="email"  id="userEmail"class="login-input-box"> 
            <div class="login-id-label">전화번호</div>
            <input type="email"  id="userPhoneNumber"class="login-input-box" placeholder="ex)01012345678"> 
            
            
		</form>
		<button id="user-join-btn">가입하기</button>
	</div>
</body>
<script>

	$("#user-join-btn").click(function() {
		console.log("werwer");
		let data = {
			userId : $("#userId").val(),
			password : $("#userPassword").val(),
			name:$("#userName").val(),
			email:$("#userEmail").val(),
			phoneNumber:$("#userPhoneNumber").val(),
			birth:$("#userBirth").val()
		}
		$.ajax({
			type : "POST",
			url : "/user/join",
			data : JSON.stringify(data),
			contentType : "application/json",
			success : function(resp) {
				alert("회원가입이 완료 되었습니다.");
				window.location.href = '/auth/loginForm';
			}
		})
	})
</script>
<script type="text/javascript" src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>
