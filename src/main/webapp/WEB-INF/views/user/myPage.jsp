<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>로그인</title>
<body class="container">
	<div id="mypage-info">
		<div>
			<div> my정보</div>
			<li>
				<ul>
					<a href="/user/myPageModify">내정보 확인/수정</a>
					<a href="/user/password">비밀번호 변경</a>
				</ul>
			</li>
		</div>
		<div>
			<div>my여행</div>
			<li>
				<ul>
					<a>찜목록</a>
				</ul>
			</li>
		</div>
		<button id="login-id-submit">수정하기</button>
	</div>
</body>
<script type="text/javascript" src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>
