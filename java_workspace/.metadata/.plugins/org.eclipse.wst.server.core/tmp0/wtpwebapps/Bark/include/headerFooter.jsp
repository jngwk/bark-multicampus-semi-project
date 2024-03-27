<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
  <c:set var="contextPath" value="${pageContext.request.contextPath }"/>  
    <!-- header-footer -->
    <div class="header-footer-container">
      <!-- side -->
      <div class="side-container">
        <!-- side inner -->
        <div class="side-inner">
          <div class="logo-wrap">
            <a href="main.jsp">
              <img
                src="${contextPath }/images/bark_logo-removebg.png"
                width="200px"
                height="auto"
              />
            </a>
          </div>
          <!-- end of logo -->
          <!-- footer -->
          <div class="footer-wrap">
            <div class="footer">
              <span>
                Copyright © Bark Co.,Ltd<br />
                All Rights Reserved</span
              >
            </div>
          </div>
          <!-- end of footer -->
        </div>
        <!-- end of side inner -->
      </div>
      <!-- end of side -->
      <!-- nav -->
      <div class="navigation-wrap">
        <!-- nav inner -->
        <div class="navigation-inner">
          <ul>
            <li class="nav-item">
              <a href="index.jsp?target=./include/about"><strong>소개</strong></a>
            </li>
            <li class="nav-item dropdown">
              <a href="#"><strong>보호소 및 후원</strong></a>
              <div class="dropdown-content">
                <a href="#"><strong>후원 안내</strong></a>
                <a href="#"><strong>보호소 조회</strong></a>
                <a href="#"><strong>보호소 이야기</strong></a>
              </div>
            </li>
            <li class="nav-item">
              <a href="index.jsp?target=./include/adoptionForm"><strong>입양</strong></a>
            </li>
            <li class="nav-item dropdown">
              <a href="#"><strong>게시판</strong></a>
              <div class="dropdown-content">
                <a href="index.jsp?target=./include/board"><strong>공지사항</strong></a>
                <a href="#"><strong>정보공유</strong></a>
                <a href="#"><strong>문의하기</strong></a>
              </div>
            </li>
            <li class="nav-item">
              <!-- 로그인 상태 확인 -->
			  <c:choose>
			  	<c:when test="${sessionScope.member == null}">
			  		<a href="index.jsp?target=./include/login"><strong>로그인</strong></a>
			  	</c:when>
			  	<c:otherwise>
			  		<div class="profile-area">
			  			<div class="profile" onclick="menuToggle();">
					  		<c:choose>
					  			<c:when test="${fn:contains(pageContext.request.requestURI, 'main.jsp')}">
					  				<img src='${contextPath }/images/icons/user-circle-rose-white.png' alt="profile-badge-rose-white">
					  				<!--<c:out value="<img src='./images/icons/user-circle-rose-white.png' width='42px'>" escapeXml="false"/>-->
					  			</c:when>
					  			<c:otherwise>
						  			<img src='${contextPath }/images/icons/user-circle-bean-brown.png' alt="profile-badge-bean-brown">
						  			<!--<c:out value="<img src='./images/icons/user-circle-bean-brown.png' width='42px'>" escapeXml="false"/>-->
					  			</c:otherwise>
				  			</c:choose>
			  			</div>
			  			<div class="profile-menu">
			  				<c:choose>
				  				<c:when test="${sessionScope.memberType == 'user' }">
				  					<h3>홍길동<br><span>gildong1234</span></h3>
							        <ul>
							          <li>
							            <img src="${contextPath }/images/icons/user-detail.png" /><a href="index.jsp?target=./include/editProfile">회원정보 수정</a>
							          </li>
							          <li>
							            <img src="${contextPath }/images/icons/post.png" /><a href="index.jsp?target=./include/myPost">작성글 관리</a>
							          </li>
							          <li>
							            <img src="${contextPath }/images/icons/book-heart.png" /><a href="index.jsp?target=./include/userManageApp">기부/입양/입소 관리</a>
							          </li>
							          <li>
							            <img src="${contextPath }/images/icons/logout.png" /><a href="${contextPath }/include/logoutProc.jsp">로그아웃</a>
							          </li>
							        </ul>
				  				</c:when>
				  				<c:when test="${sessionScope.memberType == 'shelter' }">
				  				</c:when>
				  				<c:when test="${sessionScope.memberType == 'admin' }">
				  				</c:when>
				  				<c:otherwise>
				  				</c:otherwise>
			  				</c:choose>
		  				</div>
	  				</div>
	  				<script>
				      function menuToggle() {
				        const toggleMenu = document.querySelector(".profile-menu");
				        toggleMenu.classList.toggle("active");
				      }
				    </script>
			  	</c:otherwise>
			  </c:choose>
            </li>
          </ul>
        </div>
        <!-- end of nav inner -->
      </div>
      <!-- end of nav -->
    </div>
    <!-- end of header-footer -->
  </body>
</html>
