<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
UserDAO dao = new UserDAO(application);
pageContext.setAttribute("dao", dao);
%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<c:set var="dao" value="${dao }"/>
<c:set var="result" value="${dao.login(param.id, param.pwd) }"/>
<c:choose>
	<c:when test="${result == 1 }">
		<c:set var="user" value="${dao.getUser(param.id) }"/>
		<c:set var="userId" value="${param.id }" scope="session"/>
		<c:set var="userType" value="${user.type }" scope="session"/>
		<c:set var="userName" value="${user.name }" scope="session"/>
		<script>
			alert('환영합니다.');
			location.href = "../views/main.jsp";
		</script>
	</c:when>
	<c:when test="${result == 0 || result == -1}">
		<script>
			alert('로그인 정보가 일치하지 않습니다. 아이디 또는 비밀번호를 확인해주세요.');
			history.back();
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert('데이터베이스에 접근하는데 오류가 발생했습니다. 관리자에게 문의해주세요.');
			location.href = "../views/main.jsp";
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>