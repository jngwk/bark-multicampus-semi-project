<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/boardEnquiryList.css">
</head>
<body>
    <div class="container">
        <div class="row">
        
            <h>문의하기</h>
            
            <div class="notice_up">
	            <form action="#" method="post" class="notice_searchform">
	            <select name="notice_Categori">
	                <option>---선택---</option>
	                <option value="1">이름</option>
	                <option value="1">공지2</option>
	                <option value="1">공지3</option>
	            </select>
		        	    <input type="search" class="notice-search">
	                    <input type="submit" class="notice-search-submit" value="검색">
		        </form>
		        
	            <div class="writeButton"><a href="${pageContext.request.contextPath }/index.jsp?target=include/boardWrite"><img src="./images/icons/pencil-regular-24.png"/>글쓰기</a></div>
            </div>
            
            <div class="table">
            <table class="noticetable">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>답변여부</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>3</td>
                        <td><a href="#"> 제목입니다</a></td>
                        <td>wlgus8846</td>
                        <td>2024-03-24</td>
                        <td>O</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><a href="#"> 제목입니다</a></td>
                        <td>wlgus8846</td>
                        <td>2024-03-24</td>
                        <td>X</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="#"> 제목입니다</a></td>
                        <td>wlgus8846</td>
                        <td>2024-03-24</td>
                        <td>X</td>
                    </tr>
                </tbody>
            </table>
			</div>
			
			<div class="pageNumber">
	            <a href="#"><</a>
	            <a href="#">1</a>
	            <a href="#">2</a>
	            <a href="#">3</a>
	            <a href="#">></a>
	        </div>
    	</div>
    </div>
</body>
</html>