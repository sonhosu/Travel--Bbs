<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>QnA</title>
<body class="container">
	<h2>고객센터 및 자주묻는 질문</h2>
	<p>여행게시판 입니다.</p>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Firstname</th>
				<th>Lastname</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>John</td>
				<td>Doe</td>
				<td>john@example.com</td>
			</tr>
			<tr>
				<td>Mary</td>
				<td>Moe</td>
				<td>mary@example.com</td>
			</tr>
			<tr>
				<td>July</td>
				<td>Dooley</td>
				<td>july@example.com</td>
			</tr>
		</tbody>
	</table>
	<div class="pt-1 text-right">
		<button class="btn btn btn-success" type="submit" style="width: 10%; padding: 5px;" onclick="location.href='/qna/Write' ">글작성</button>
	</div>
</body>
<script type="text/javascript" src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>
