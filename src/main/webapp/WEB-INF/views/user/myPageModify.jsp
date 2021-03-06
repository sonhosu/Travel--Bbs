<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>로그인</title>
<body class="container">
	<div id="login-form">
		<form action="/  " method="post">
			<div class="login-id-label">아이디</div>
			<input type="text" name="userid"  id="modify-id" value="${userid }"class="login-input-box"  disabled>
			<div class="login-id-label">이름</div>
			<input type="text" name="name"  id="modify-name" value="${username}"class="login-input-box" disabled>
			<div class="login-id-label">이메일</div>		
			<input type="text" name="email"  id="modify-email" value="${email}"class="login-input-box" >			
			<div class="login-id-label">전화번호</div>
			<input type="text" name="modify-phonenumber"  id="modify-phonenumber" value="${phonenumber}"class="login-input-box" >
		</form>
		<button id="userinfo-modify-btn">수정하기</button>
	</div>
</body>
<script>
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
