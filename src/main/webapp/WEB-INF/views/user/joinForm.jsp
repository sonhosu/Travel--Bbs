<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>회원가입</title>
<div id="login-form">
	<form action="/" method="post">
		<div class="login-id-label">아이디</div>
		<input type="text" id="username" class="login-input-box" pattern="^([a-z0-9_]){6,50}$" placeholder="ID 입력">
		<div class="login-id-label">비밀번호</div>
		<input type="password" id="userpassword" class="login-input-box" pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{6,50}$" placeholder="PW 입력">
		<!-- <div class="login-id-label">이름</div>
            <input type="text" name="" value="" class="login-input-box">
            <div class="login-id-label">생년월일</div>
            <input type="" name="" value="" class="login-input-box">
            <div class="login-id-label">이메일</div>
            <input type="email" name="" value="" class="login-input-box"> -->
	</form>
	<button id="login-id-submit">가입하기</button>
</div>
<script>
	$("#login-id-submit").click(function() {
		console.log("werwer");
		let data = {
			userid : $("#username").val(),
			password : $("#userpassword").val()
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
