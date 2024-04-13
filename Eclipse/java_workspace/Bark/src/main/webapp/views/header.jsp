<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="${css }/header.css" />
  </head>
  <body>
     <!-- header -->
    <div class="header-container">
      <div class="header-inner">
      <c:choose>
			<c:when test="${fn:contains(pageContext.request.requestURI, 'main.jsp')}">
				<c:set var="logo" value="${images }/logo-white.png"/>
  			</c:when>
  			<c:otherwise>
	  			<c:set var="logo" value="${images }/logo-brown.png"/>
  			</c:otherwise>
	  </c:choose>
      <a href="${contextPath }/views/main.jsp">
        <img
          class="logo"
          src="${logo}"
          alt="logo"
          width="200px"
        />
        </a>
        <div class="navigation-menu">
          <ul>
            <li>
              <a class="transition" href="#"
                ><strong class="xlarge-font hover-underline">소개</strong></a
              >
            </li>
            <li class="dropdown">
              <a class="transition" href="#"
                ><strong class="xlarge-font hover-underline"
                  >보호소 및 후원</strong
                ></a
              >
              <div class="dropdown-content">
                <a class="transition" href="#"
                  ><strong class="large-font hover-underline"
                    >후원 안내</strong
                  ></a
                >
                <a class="transition" href="#"
                  ><strong class="large-font hover-underline"
                    >보호소 조회</strong
                  ></a
                >
                <a class="transition" href="#"
                  ><strong class="large-font hover-underline"
                    >캠페인 둘러보기</strong
                  ></a
                >
              </div>
            </li>
            <li class="dropdown">
              <a class="transition" href="#"
                ><strong class="xlarge-font hover-underline">입양</strong></a
              >
              <div class="dropdown-content">
                <a class="transition" href="#"
                  ><strong class="large-font hover-underline"
                    >입양 안내</strong
                  ></a
                >
                <a class="transition" href="#"
                  ><strong class="large-font hover-underline"
                    >입양하기</strong
                  ></a
                >
              </div>
            </li>
            <li class="dropdown">
              <a class="transition" href="#"
                ><strong class="xlarge-font hover-underline">게시판</strong></a
              >
              <div class="dropdown-content">
                <a class="transition" href="#"
                  ><strong class="large-font hover-underline"
                    >공지사항</strong
                  ></a
                >
                <a class="transition" href="#"
                  ><strong class="large-font hover-underline"
                    >정보공유</strong
                  ></a
                >
                <a class="transition" href="#"
                  ><strong class="large-font hover-underline"
                    >보호소 이야기</strong
                  ></a
                >
                <a class="transition" href="#"
                  ><strong class="large-font hover-underline"
                    >문의하기</strong
                  ></a
                >
              </div>
            </li>
            <li>
               <!-- 로그인 상태 확인 -->
			  <c:choose>
			  	<c:when test="${empty userId}">
			  		<a class="transition" href="#">
				  		<strong class="xlarge-font hover-underline open-pop">
				  			로그인
				  		</strong>
				  	</a>
				  	<jsp:include page="${views }/account/loginPopup.jsp" flush="false"></jsp:include>
			  	</c:when>
			  	<c:otherwise>
			  		<div class="profile-area">
			  			<div class="profile" onclick="menuToggle();">
					  		<c:choose>
					  			<c:when test="${fn:contains(pageContext.request.requestURI, 'main.jsp')}">
					  				<img src='${icons }/user-circle-rose-white.png' alt="profile-badge-rose-white">
					  				<!--<c:out value="<img src='./images/icons/user-circle-rose-white.png' width='42px'>" escapeXml="false"/>-->
					  			</c:when>
					  			<c:otherwise>
						  			<img src='${icons }/user-circle-bean-brown.png' alt="profile-badge-bean-brown">
						  			<!--<c:out value="<img src='./images/icons/user-circle-bean-brown.png' width='42px'>" escapeXml="false"/>-->
					  			</c:otherwise>
				  			</c:choose>
			  			</div>
			  			<div class="profile-menu">
			  				<c:choose>
				  				<c:when test="${userType == '1' || userType == '2'}">
				  					<h3>${userName}<br><span>${userId}</span></h3>
							        <ul>
							          <li>
							            <img src="${icons }/user-detail.png" /><a href="../index.jsp?target=./include/userEditProfileFrm">내 정보 조회/수정</a>
							          </li>
							          <li>
							            <img src="${icons }/post.png" /><a href="../index.jsp?target=./include/userMyPostList">작성글 관리</a>
							          </li>
							          <li>
							            <img src="${icons }/book-heart.png" /><a href="../index.jsp?target=./include/userManageAppList">기부/입양 관리</a>
							          </li>
							          <li>
							            <img src="${icons }/logout.png" /><a href="../include/logout.jsp">로그아웃</a>
							          </li>
							        </ul>
				  				</c:when>
				  				<c:when test="${userType == '3' }">
				  					<h3>${userName}<br><span>${userId}</span></h3>
							        <ul>
							          <li>
							            <img src="${icons }/user-detail.png" /><a href="../index.jsp?target=./include/userEditProfileFrm">내 정보 조회/수정</a>
							          </li>
							          <li>
							            <img src="${icons }/post.png" /><a href="../index.jsp?target=./include/adminManageDonationList">기부금 목록</a>
							          </li>
							          <li>
							            <img src="${icons }/book-heart.png" /><a href="../index.jsp?target=./include/adminUserList">회원 관리</a>
							          </li>
							          <li>
							            <img src="${icons }/admin.png" /><a href="../index.jsp?target=./include/adminManageAdminList">관리자 계정 관리</a>
							          </li>
							          <li>
							            <img src="${icons }/logout.png" /><a href="${contextPath }/include/logout.jsp">로그아웃</a>
							          </li>
							        </ul>
				  				</c:when>
			  				</c:choose>
		  				</div>
	  				</div>
			  	</c:otherwise>
			  </c:choose>
            </li>
            
          </ul>
        </div>
      </div>
    </div>
  </body>
</html>
