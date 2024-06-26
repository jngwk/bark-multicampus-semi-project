<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${css }/root.css" />
<link rel="stylesheet" href="${css }/pagination.css" />
<script src="${js }/pagination.js"></script>
</head>
<body id="pagination">
<!-- 페이지넘버 -->
      <div class="pagination">
        <span class="pagination__number-indicator"></span>
        <button class="pagination__arrow pagination-btn" id="prev" onclick="location.href='/admin/adminAdoptionList?pageNum=${page.start-1}&amount=10'">
          <span class="pagination__arrow-half"></span>
          <span class="pagination__arrow-half"></span>
        </button>
        <c:forEach var="num" begin="${page.start}" end="${page.end}">
        <c:choose>
        <c:when test="${num eq page.cri.pageNum}">
        	 <button class="pagination__number pagination-btn pagination__number--active " onclick="location.href='/admin/adminAdoptionList?pageNum=${num}&amount=${page.cri.amount}'">${num}</button>
        </c:when>
        <c:otherwise>
        	<button class="pagination__number pagination-btn" onclick="location.href='/admin/adminAdoptionList?pageNum=${num}&amount=${page.cri.amount}'">${num}</button>
        </c:otherwise>
        </c:choose>
        
        <c:if test='${num} == 1'>
			
		</c:if>
        </c:forEach>
        <button class="pagination__arrow pagination__arrow--right pagination-btn"  id="next" onclick="location.href='/admin/adminAdoptionList?pageNum=${page.end+1}&amount=${page.cri.amount}'">
          <span class="pagination__arrow-half"></span>
          <span class="pagination__arrow-half"></span>
        </button>
      </div>
      
<script>
			
	if (${page.prev}) {
		document.getElementById('prev').style.display = 'block';
	} else {
		document.getElementById('prev').style.display = 'none';
	}
	
	if (${page.next}) {
		document.getElementById('next').style.display = 'block';
	} else {
		document.getElementById('next').style.display = 'none';
	}

</script>
</body>
</html>