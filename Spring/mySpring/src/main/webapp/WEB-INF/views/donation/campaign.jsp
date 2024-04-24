<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/campaign.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/root.css" />

</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/include/header.jsp" flush="false"></jsp:include>
	<div class="story-container">
		<div class="story">
			<p class="page-title">Campaign</p><p class="page-subtitle">[캠페인 둘러보기]</p>
			<div class="story-button">
				<a class="large-btn green-btn" href="#">글쓰기</a>
			</div>
			<ul>
				<div class="story-list">
				<li>
						<div class="story-card">
							<div class="story-banner">
								<img class="banner-img" src="${images}/many-dogs.jpg" />
							</div>
							<div class="story-title xlarge-font">
								<p>제목입니다</p>
							</div>
							<div class="story-info">
								<div class="story-content">
									<p>내용입니다</p>
								</div>
								<div class="story-write">
									<p>
										<img class="icon-img" src="${icons}/shelter-icon.png" />2조보호소
									</p>
								</div>
								<div class="sub-info">
									<div class="story-date xsmall-font">
										<p>
											<img class="icon-img" src="${icons}/calendar-icon.png" />2024-04-12
										</p>
									</div>
									<div class="story-hit xsmall-font">
										<p>
											<img class="icon-img" src="${icons}/hit-icon.png" />234
										</p>
									</div>
								</div>
							</div>
						</div>
					</li>
				<c:forEach var="bList" items="${bList}" >
					<li>
						<div class="story-card">
							<div class="story-banner">
								<img class="banner-img" src="${images}/many-dogs.jpg" />
							</div>
							<div class="story-title xlarge-font">
								<p>${bList.title}</p> 
							</div>
							<div class="story-info">
								<div class="story-content">
									<p><pre>${bList.content}</pre></p>
								</div>
								<div class="story-write">
									<p>
										<img class="icon-img" src="${icons}/shelter-icon.png" />삼송보호소
									</p>
								</div>
								<div class="sub-info">
									<div class="story-date xsmall-font">
										<p>
											<img class="icon-img" src="${icons}/calendar-icon.png" /><fmt:formatDate pattern="yyyy-MM-dd" value="${bList.regDate}" />
										</p>
									</div>
									<div class="story-hit xsmall-font">
										<p>
											<img class="icon-img" src="${icons}/hit-icon.png" /><fmt:formatNumber type="number" maxFractionDigits="3" value="${bList.hit}" />
										</p>
									</div>
								</div>
							</div>
						</div>
					</li>
				</c:forEach>	
				</div>
			</ul>
		</div>
		<div class="story-page">
			<div class="pagination">
				<span class="pagination__number-indicator"></span>
				<button class="pagination__arrow">
					<span class="pagination__arrow-half"></span> <span
						class="pagination__arrow-half"></span>
				</button>
				<button class="pagination__number">1</button>
				<button class="pagination__number">2</button>
				<button class="pagination__number">3</button>
				<button class="pagination__number pagination__number--active">4</button>
				<button class="pagination__number">5</button>
				<button class="pagination__number">6</button>
				<button class="pagination__number">7</button>
				<button class="pagination__arrow pagination__arrow--right">
					<span class="pagination__arrow-half"></span> <span
						class="pagination__arrow-half"></span>
				</button>
			</div>
		</div>
	</div>
	<jsp:include page="${views }/include/footer.jsp" flush="false"></jsp:include>
	<script src="${js }/campaign.js"></script>
</body>
</html>
