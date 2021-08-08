<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>회원가입</title>
<div id="login-form">
        <form action="/" method="post">
            <div class="login-id-label">아이디</div>
            <input type="text" name="username" class="login-input-box" pattern="^([a-z0-9_]){6,50}$"
                placeholder="ID 입력">

            <div class="login-id-label">비밀번호</div>
            <input type="password" name="password" class="login-input-box"
                pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{6,50}$"
                placeholder="PW 입력">
            <div class="login-id-label">이름</div>
            <input type="text" name="" value="" class="login-input-box">
            <div class="login-id-label">생년월일</div>
            <input type="" name="" value="" class="login-input-box">
            <div class="login-id-label">이메일</div>
            <input type="email" name="" value="" class="login-input-box">


        </form>
        <button id="login-id-submit" onclick="location.href='/html/login.html'">가입하기</button>
    </div>
<script>
	$("#btn-join").click(function() {
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
				alert("회원가입이 완료 되었습니다.")
			}
		})
	})
</script>
<script type="text/javascript" src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>
