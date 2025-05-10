<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  <!-- JSTL 선언 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<title>Home</title>
	<link href="<c:url value='/resources/css/CC.css' />" rel="stylesheet" type="text/css">
</head>
<body>
	    <div class="continer">
		<div class="top_menu">
			<a href=<c:url value='/' />>HaEun</a>
			<ul class="menu">
				<li><a href=<c:url value='/HM' />>가정이사</a></li>
				<li><a href=<c:url value='/OF' />>사무실이사</a></li>
				<li><a href=<c:url value='/CC' />>고객센터</a></li>
			</ul>
		</div>
        <div class="BI">
            <h2>고객센터</h2>
        </div>
        <div class="menu">
            <ul class="menu-1">
                <li><a href=<c:url value='/CC' />>이용후기</a></li>
                <li><a href=<c:url value='/qus'/>>자주묻는질문</a></li>
                <li><a href=<c:url value='/company'/>>회사소개</a></li>
            </ul>
        </div>
        <div class="board_wrap">
            <div class="board_title">
                <strong>HaEun이사 이용후기</strong>
            </div>
            <div class="board_list_wrap">
                <div class="board_list">
                    <div class="top">
                    <div class="writer">작성자</div>
                    <div class="title">제목</div>
                    <div class="date">작성일</div>
                </div>
                 <c:forEach var="review" items="${reviews}">
                <div>
                    <div class="writer">${review.author}</div>
                    <div class="title">
                    <a href="<c:url value='/view?title=${review.title}'/>">${review.title}</a>
                    </div>
                    <!-- 작성일을 포맷하여 출력 -->
                    <div class="date">
                        <fmt:formatDate value="${review.date}" pattern="yyyy-MM-dd HH:mm:ss" />
                    </div>
                </div>
            </c:forEach>
                </div>
                </div>
                <div class="board_page">
    				<!-- 첫 페이지로 이동 -->
    				<a href="<c:url value='/CC?page=1'/>" class="bt first"><<</a>

    				<!-- 이전 페이지로 이동 -->
    				<a href="<c:url value='/CC?page=${currentPage - 1}'/>" class="bt prev" 
       				<c:if test="${currentPage == 1}">style="display: none;"</c:if>><</a>

    				<!-- 페이지 번호 표시 -->
    				<c:forEach var="i" begin="1" end="${totalPages}" step="1">
        				<a href="<c:url value='/CC?page=${i}'/>" class="num ${i == currentPage ? 'on' : ''}">
            				${i}
        				</a>
   	 				</c:forEach>

    				<!-- 다음 페이지로 이동 -->
    				<a href="<c:url value='/CC?page=${currentPage + 1}'/>" class="bt next" 
       				<c:if test="${currentPage == totalPages}">style="display: none;"</c:if> >></a>

    				<!-- 마지막 페이지로 이동 -->
    				<a href="<c:url value='/CC?page=${totalPages}'/>" class="bt last">>></a>
				</div>
                <div class="bt_wrap">
                    <a href=<c:url value='write'/> class="on">등록</a>
                    <!--<a href="">수정</a>-->
                </div>
            </div>
        <div class="line">
			<hr style="border: 1px solid black;" width="100%" >
		</div>
		<div class="footer">
			<div class="ff">
			<h2>HaEun</h2>
			<div class="link">
				<a href=<c:url value='/company'/>>회사소개 |</a>
				<a href=<c:url value='/CC' />>고객센터</a>
			</div>
		</div>
			<p>(주)HaEun | 경기도 수원시 팔달구 인계동 842-7 | 대표 : 최찬영 | 전화번호 : 010-8033-5236<br>사업자등록번호 : 693-23-01809</p>
		</div>
    </div>
    
</body>
</html>
