const toggleBtn = document.querySelector('.navbar__toggleBtn');
const menu = document.querySelector('.navbar__menu');


toggleBtn.addEventListener('click', (e) => {
	e.stopPropagation();
	menu.classList.toggle('active');
});
$("#user-info-modify").click(function() {
		let	id=$("#modify-id").val();
		let  pw=$("#modify-password").val();
	data={
		   "userid":id,
		   "password":pw
	}
	
	
	$.ajax({
		type:"PUT",
		url:`/userinfo/modify${id}`,
		data:JSON.stringify(data),
		contentType:"application/json",
		success: function(resp){
			alert("수정완료")
			window.location.href="/home";
		}
		
	})
})