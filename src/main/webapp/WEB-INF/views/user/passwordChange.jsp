<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>로그인</title>
<body class="container">
	<div id="login-form">
		<form action="/  " method="post">
			
			<div class="login-id-label">비밀번호</div>		
			<input type="password" name="password"  id="password" class="login-input-box"  >			
			<div class="login-id-label">비밀번호 확인</div>
			<input type="password" name="password"  id="password-check" class="login-input-box" >
		</form>
		<button id="user-pwModify-btn">수정하기</button>
	</div>
</body>
<script>
let pw=$("#password").val();
let pwc=$("#password-check").val();
 console.log(pw)
  console.log(pwc)




$("#userinfo-modify-btn").click(function() {
	console.log("werwer");
	let data = {
		email : $("#modify-email").val(),
		password : $("#modify-password").val(),		
		phoneNumber:$("#modify-phonenumber").val()
		
	}
	$.ajax({
		type : "PUT",
		url : `/userinfo/modify/${id}`,
		data : JSON.stringify(data),
		contentType : "application/json",
		success : function(resp) {
			alert("수정이 완료되었습니다.");
			window.location.href = '/auth/loginForm';
		}
	})
})


</script>


<script type="text/javascript" src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>
