// 유저 타입 버튼


//  pw 유효성 체크
function checkPwd(){
	var input = document.forms[0];
	var pwd = input.pwd.value;
	var pwdCheck = input.pwdCheck.value;
	if(pwd!=pwdCheck){
	   document.getElementById('checkPwd').style.color = "red";	//밝은 빨강으로 수정
	   document.getElementById('checkPwd').innerHTML = "비밀번호가 일치하지 않습니다."; 
	}else{
	   document.getElementById('checkPwd').style.color = "green";	//밝은 파랑으로 수정
	   document.getElementById('checkPwd').innerHTML = "비밀번호가 일치합니다.";
	}	  
}
//  id 중복성체크(미완성)
$(document).ready(function() {
	$("#mem_id").blur(function() {
		$.ajax({
			url:"idcheck.jsp",
			type:"post",
			data:{ "mem_id":$("#mem_id").val() },
			success:function( data ){
				if(data.trim() == "YES"){
					$("#checkId").css("color", "green");
					$("#checkId").text("사용할 수 있는 아이디입니다");
				}else{
					$("#checkId").css("color", "red");
					$("#checkId").text("사용할 수 없는 아이디입니다");
					$("#mem_id").val("");
				}
			},
			error:function(){
				alert('error');
			}			
		});
	});
});

