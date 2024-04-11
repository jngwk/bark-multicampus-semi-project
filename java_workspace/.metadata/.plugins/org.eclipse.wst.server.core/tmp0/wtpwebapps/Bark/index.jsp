<%@ page language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% String target = request.getParameter("target") + ".jsp"; %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bark</title>
    <c:set var="contextPath" value="${pageContext.request.contextPath }" scope="application"/>  
	<script type="text/javascript" src="${contextPath }/js/common.js"></script>
    <link rel="stylesheet" href="${contextPath }/css/root.css" />
    <link rel="stylesheet" href="${contextPath }/css/headerFooter.css" />
  </head>
  <body>
  	<jsp:include page="./include/headerFooter.jsp" flush="false"/>
  	<div class="content-container padding-bottom">
    <jsp:include page="<%=target %>" flush="false"/>
    <div class="content-blur"></div>
    </div>
  </body>
</html>	