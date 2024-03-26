<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>JoinUser</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="./css/joinUser.css">
<style>
	#red-star{	/* 항목옆의 별 */
		color:red;
		font-size: 15px;
	}
	#required{	/* "필수입력사항" */
		float: right;
		margin: 0 0 10px 0;
	}
	#user-join-btn{	/* '개인 회원' 버튼 */
		float: left;
		width: 250px;
		height: 100%;
		color: var(--color-bean-brown);
  		background-color: var(--color-rose-white);
  		box-shadow: none;
		text-align: center;
		font-size: 20px;
		font-weight: bold;
		margin: 0 auto;
		padding: 0 0 5px 0;
	}
	#shelter-join-btn{	/* '보호소 회원' 버튼 */
		float: right;
		width: 250px;
		height: 100%;
		color: var(--color-bean-brown);
  		background-color: var(--color-rose-white);
  		box-shadow: none;
		text-align: center;
		font-size: 20px;
		font-weight: bold;
		margin: 0 auto;
		padding: 0 0 5px 0;
	}
</style>
</head>
<body id="join">
<script>
</script>
        <!-- join -->
        <div class="join-form">
            <h1>회원가입</h1>
            
            <div class="join-select">
            	<button type="button" id="user-join-btn">개인 회원</button>
            	<button type="button" id="shelter-join-btn">보호소 회원</button>
            </div>
            
            <form action="joinAction.jsp" method="post">
            	<div>
            	<p id="required"><span id="red-star">*</span>필수입력사항</p>
            	</div>
            	
                <div class="form-element">
                    <span>아이디</span><span id="red-star">*</span>
                    <input type="text" class="join-input" name="mem_id" maxlength="20" required>
                    <p class="check-message" id="checkId"></p>
                </div>
                
                <div class="form-element">
                    <span>비밀번호</span><span id="red-star">*</span>
                    <input type="password" class="join-input" name="pwd" maxlength="20" required>
                </div>
                
                <div class="form-element">
                    <span>비밀번호 확인</span><span id="red-star">*</span>
                    <input type="password" class="join-input" name="pwdCheck" onkeyup="checkPwd()" maxlength="20" required>
                    <br><br>
                    <!-- onkeyup : 키를 눌렀다가 땠을 때 이벤트 -->
                    <p class="check-message" id="checkPwd"></p>    
                </div>
                
               
                <div class="form-element">
                    <span>이름</span><span id="red-star">*</span>
                    <input type="text" class="join-input" name="name" maxlength="20" required>
                </div>
                
                <div class="form-element">
                    <span>이메일</span><span id="red-star">*</span>
                    <input type="email" class="join-input" name="email" maxlength="20" required>
                </div>
                
                <div class="form-element">
                    <span>연락처</span>
                    <input type="text" class="join-input" name="tel" maxlength="20" required>
                </div>   
            <button type="submit" class="btn"><span>가입하기</span></button>
            </form>
        </div>
<!--  id 중복성체크(미완성)
<script type="text/javascript"> 
$(document).ready(function() {
	$("#mem_id").blur(function() {
		$.ajax({
			url:"idcheck.jsp",
			type:"post",
			data:{ "mem_id":$("#mem_id").val() },
			success:function( data ){
				if(data.trim() == "YES"){
					$("#checkId").css("color", "#0000ff");
					$("#checkId").text("사용할 수 있는 아이디입니다");
				}else{
					$("#checkId").css("color", "#ff0000");
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
</script> 
--> 
<script type="text/javascript"> //pw 유효성 체크
function checkPwd(){
	  var input = document.forms[0];
	  var pwd = input.pwd.value;
	  var pwdCheck = input.pwdCheck.value;
	  if(pwd!=pwdCheck){
	   document.getElementById('checkPwd').style.color = "red";	//밝은 빨강으로 수정
	   document.getElementById('checkPwd').innerHTML = "비밀번호가 일치하지 않습니다."; 
	  }else{
	   document.getElementById('checkPwd').style.color = "blue";	//밝은 파랑으로 수정
	   document.getElementById('checkPwd').innerHTML = "비밀번호가 일치합니다.";
	  }
}
</script>


</body>
</html>