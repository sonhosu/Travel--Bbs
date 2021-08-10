<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
	<script>
		alert("로그인되었습니다..");
	</script>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/reset.css">
</head>
<body>
	<div class="content-box">

		<div class="main">

			<div clas="section">

				<nav class="navbar">
					<!-- Logo with text -->
					<div class="navbar__logo">
						<span style="color: orange"><a href="index.html"><i class="fas fa-plane-departure fa-2x"></i></a> </span>
					</div>
					<!-- Menu -->



					<ul class="navbar__menu">
						<li class="dropdown"><a href="/">메인</a></li>
						<li class="dropdown"><a href="/board">여행 게시판</a></li>
						<li class="dropdown"><a>여행정보</a></li>
						<li class="dropdown"><a>지도 표기</a></li>
						<li class="dropdown"><a href="/qna">Q&A</a></li>
					</ul>

					<!-- Icons -->
					<ul class="navbar__icons">

						<sec:authorize access="isAnonymous()">

							<a href="/auth/loginForm">로그인</a>

						</sec:authorize>

						<sec:authorize access="isAuthenticated()">
							<a>마이페이지</a>
							<a href="/logout">로그아웃</a>

						</sec:authorize>


						<!--<li class="dropdown"><a>전체사용자정보</a></li> -->
					</ul>





					<!-- Toggle button -->
					<a href="#" class="navbar__toggleBtn"> <span style="color: orange"><i class="fas fa-bars"></i></span>
					</a>
				</nav>
			</div>
		</div>
	</div>
	<br />