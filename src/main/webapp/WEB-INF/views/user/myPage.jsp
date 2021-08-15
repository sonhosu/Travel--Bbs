<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>로그인</title>
<body class="container">
	<div>
		<aside>
			<div class="mypage-area">
				<nav class="mypage-nav">
					<h2 class="n-hidden">My Page Menu</h2>
					<!-- aa -->
					<span class="direct on">바로접속 ON</span>
					<dl class="menu">
						<dt>나의 정보</dt>
						<dd>
							<a href="#" id="myPage">내정보 확인/수정</a>
						</dd>
						<dd>
							<a href="#" id="changePw">비밀번호 변경</a>
						</dd>
						<dt>나의 여행</dt>
						<dd>
							<a href="/app/mypage/order_list_opt">찜목록</a>
						</dd>
					</dl>
				</nav>
			</div>
		</aside>
		<section>
			<div class="container">
				<div id="section1">
					<div id="login-form">
						<form action="/" method="post">
							<div class="login-id-label">아이디</div>
							<input type="text" id="userId" class="login-input-box"
								placeholder="ID 입력">
							<div class="login-id-label">비밀번호</div>
							<input type="password" id="userPassword" class="login-input-box"
								placeholder="PW 입력">
							<div class="login-id-label">이름</div>
							<input type="text" id="userName" class="login-input-box">
							<div class="login-id-label">생년월일</div>
							<input type="text" id="userBirth" class="login-input-box"
								placeholder="ex)19971117">
							<div class="login-id-label">이메일</div>
							<input type="email" id="userEmail" class="login-input-box">
							<div class="login-id-label">전화번호</div>
							<input type="email" id="userPhoneNumber" class="login-input-box"
								placeholder="ex)01012345678">


						</form>
						<button id="login-id-submit">수정하기</button>
					</div>
				</div>
				<div id="section2">
					<div id="login-form">
						<form action="/  " method="post">

							<div class="login-id-label">비밀번호</div>
							<input type="password" name="password" id="password"
								class="login-input-box">
							<div class="login-id-label">비밀번호 확인</div>
							<input type="password" name="password" id="password-check"
								class="login-input-box">
						</form>
						<button id="user-pwModify-btn">수정하기</button>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
<script>
	window.addEventListener("load", function() {
		$('#section2').hide();
		console.log("aaa");
	});
	
	$('#myPage').click(function(){
		$('#section1').show();
		$('#section2').hide();
	});
	
	$('#changePw').click(function(){
		$('#section1').hide();
		$('#section2').show();
	});
	
</script>
<script type="text/javascript" src="/js/main.js"></script>