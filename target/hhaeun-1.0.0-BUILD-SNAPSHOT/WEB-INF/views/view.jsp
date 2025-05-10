<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<title>Home</title>
	<link href="<c:url value='/resources/css/view.css?v=2' />" rel="stylesheet" type="text/css">
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
            <div class="board_view_wrap">
                <div class="board_view">
                   <div class="title">
                     ${review.title}  <!-- 모델에서 전달된 review 객체의 title 출력 -->
                   </div>
                   <div class="info">
                        <dl>
                            <dt>작성자</dt>
                           <dd id="author">${review.author}</dd>  <!-- 작성자 출력 -->
                        </dl>
                        <dl>
                            <dt>작성일</dt>
                            <dd>
                            <fmt:formatDate value="${review.date}" pattern="yyyy-MM-dd HH:mm:ss" /> <!-- 작성일 포맷 -->
                            </dd>
                        </dl>
                   </div>
                   <div class="cont">
                          ${review.content}  <!-- 내용 출력 -->
                   </div>
                </div>
                </div>
                <div class="bt_wrap">
                    <a href="/hhaeun/CC">목록으로 돌아가기</a>
                    <!-- <a href="">수정</a> -->
                    <!-- ✅ 관리자 삭제 버튼 -->
  				<form id="deleteForm" action="/hhaeun/deleteReview.do" method="post" onsubmit="return checkAdminPassword();">
    				<input type="hidden" name="reviewId" value="${review.id}" />
    				<button type="submit">삭제</button>
  				</form>
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
    
   <script>
   function checkAdminPassword() {
	    const pw = prompt("관리자 비밀번호를 입력하세요:");
	    return pw === "move1234!" || (alert("❌ 비밀번호가 틀렸습니다."), false);
	  }
</script>   
</body>
</html>
