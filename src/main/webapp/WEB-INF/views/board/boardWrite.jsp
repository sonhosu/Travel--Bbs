<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<title>게시판 글쓰기</title>
<body style="padding-top: 5rem;">
<body role="main" class="container">
	<form name="form" method="POST" action="">
		<div class="pt-1"></div>
		<input type="text" name="title" placeholder="제목을 입력하세요" style="border-radius: 5px; width: 100%; padding: 5px;">
		</div>
		<div class="pt-1">
			<textarea id="summernote" name="contents"></textarea>
		</div>
		<script>
			$('#summernote').summernote({
				placeholder : '내용을 입력해주세요',
				tabsize : 2,
				height : 300
			});
		</script>
		<div class="pt-1 text-right">
			<button class="btn btn btn-success" type="submit" style="width: 10%; padding: 5px;">작성하기</button>
		</div>
	</form>
</body>
</body>
<script type="text/javascript" src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>