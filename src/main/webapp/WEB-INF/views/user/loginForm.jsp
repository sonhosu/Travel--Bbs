<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>로그인</title>
<div id="login-form">
        <form action="/  " method="post">
            <div class="login-id-label">아이디</div>
            <input type="text" name="username" class="login-input-box" pattern="^([a-z0-9_]){6,50}$"
                placeholder="ID 입력">

            <div class="login-id-label">비밀번호</div>
            <input type="password" name="password" class="login-input-box"
                pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{6,50}$"
                placeholder="PW 입력">


        </form>
        <button id="login-id-submit" onclick="location.href='../html/board.html'">로그인</button>
        <button id="login-kakao-btn" onclick="location.href=''">

            카카오로 로그인하기
        </button>
        <button id="login-id-btn" onclick="location.href='/auth/joinForm'">
            회원 가입하기
        </button>
    </div>
<script type="text/javascript" src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>
