<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>로그인</title>
<body class="container">
	<div id="login-form">
		<form action="/  " method="post">
			<div class="login-id-label">아이디</div>
			<input type="text" name="userid"  id="modify-id" value="${userid }"class="login-input-box" >
			<div class="login-id-label">이름</div>
			<input type="text" name="name"  id="modify-name" value="${username}"class="login-input-box" >
			<div class="login-id-label">이메일</div>		
			<input type="text" name="email"  id="modify-email" value="${email}"class="login-input-box" >			
			<div class="login-id-label">전화번호</div>
			<input type="text" name="modify-phonenumber"  id="modify-phonenumber" value="${phonenumber}"class="login-input-box" >
			<div class="login-id-label">비밀번호</div>
			<input type="password" name="password"  "id="modify-password"value="${password}" class="login-input-box" >
		</form>
		<button id="login-id-submit">수정하기</button>
	</div>
</body>
<script type="text/javascript" src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>
