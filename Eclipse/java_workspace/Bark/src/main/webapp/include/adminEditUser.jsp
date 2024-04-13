<%@page import="dto.UserDTO"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- 관리자 회원 정보 수정 -->

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bark</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="./css/adoptionFrm.css">
    <style type="text/css">
    #buttom1 {
    	height: 10px;
    }
    #buttom2 {
    	height: 10px;
    }
    .adoption-form>div>table>tbody>tr>td>select{ 
    	 width: 200px;
    	
	}
	.readonly {
		background-color:#eeeeee;
	}
    </style>
  </head>
  <body>
<%
/* 
String id = request.getParameter("id");
UserDao userDao = new UserDao(application);
Board board = dao.read(Integer.parseInt(bno));
dao.close();
*/
UserDAO dao = new UserDAO(application);
UserDTO userDto = dao.getUser(request.getParameter("id"));
pageContext.setAttribute("userDto", userDto);
%>
	<div class="container">
	<div class="adoption-title"><h1>회원 정보 변경</h1></div>
	<div >
    <form method="post" action="#" >

    	<div class="firstform">
		<table> 
			<tr>
				<td>아이디</td>
				<td>${userDto.id}</td>
			</tr>
		</table>
		</div>
		<br>
    	<div class="firstform">
		<table> 
			<tr>
				<td>이름</td>
				<td>${userDto.name}</td>
			</tr>
		</table>
		</div>
		<br>
    	<div class="firstform">
		<table> 
			<tr>
				<td>이메일</td>
				<td>${userDto.email}</td>
			</tr>
		</table>
		</div>
		<br>
    	<div class="firstform">
		<table> 
			<tr>
				<td>연락처</td>
				<td>${userDto.phone}</td>
			</tr>
		</table>
		</div>
		<br>
		<br>
    	<div class="firstform">
		<table> 
			<tr>
				<td>회원구분</td>
				<td><select  name="gubun" id="gubun">
						<option value="1" >개인회원</option>
						<option value="2" >보호소회원</option>
						<option value="3" >직원</option>
					</select>
				</td>
			</tr>
		</table>
		</div>
		<br>
    	<div class="firstform">
		<table> 
			<tr>
				<td>회원등급</td>
				<td><select name="grade" id="grade" >
						<option id="grade1" value="1">우수</option>
						<option id="grade2" value="2">일반</option>
						<option id="grade3" value="3">불량</option>
					</select>
				</td>
			</tr>
		</table>
		</div>		
		
		<div class="adoption-button" id="buttom1">

        	보호소회원 처리 : <input name="button1" type="submit" value="가입승인"> 
                		  <input name="button2" type="submit" value="가입거절">

        </div>
        <div class="adoption-button" id="buttom2">
                <input name="button3" type="submit" value="수정"> 
                <input name="button4" type="submit" value="삭제">
        </div>
	</form>
	</div>
</div>
<script>

	$(document).ready(function () {

		let gender = <%=request.getParameter("gender")%>;
 		switch (gender) {
		case 1 : 	$("#gender").val("1").prop("selected", true);
					$("#gender").attr("disabled",true);
					break;
		case 2 : 	$("#gender").val("2").prop("selected", true);
					$("#gender").attr("disabled",true);
					break;
		case 3 : 	$("#gender").val("3").prop("selected", true);
					$("#gender").attr("disabled",true);
					break;
		}
 		
		let gubun = <%=request.getParameter("gubun")%>;
 		switch (gubun) {
		case 1 : 	$("#gubun").val("1").prop("selected", true);
					$("#gubun").attr("disabled",true);
					break;
		case 2 : 	$("#gubun").val("2").prop("selected", true);
					$("#gubun").attr("disabled",true);
					break;
		case 3 : 	$("#gubun").val("3").prop("selected", true);
					$("#gubun").attr("disabled",true);
					break;
		}
 		
 		if (gubun == "2" ) {
 			$("#buttom1").css('visibility', 'visible');
 		}
 		else {
 			$("#buttom1").css('visibility', 'hidden');
 		}


	});
	
</script>
</body>
</html>
