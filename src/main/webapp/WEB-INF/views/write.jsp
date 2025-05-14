<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Home</title>
	<link href="<c:url value='/resources/css/write.css?v=1' />" rel="stylesheet" type="text/css">
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
            <div class="board_write_wrap">
            <form action="/writeConfirm" method="POST">
                <div class="board_write">
                    <div class="title">
                        <dl>
                            <dt>제목</dt>
                            <dd><input type="text" name="title" id="title" placeholder="제목 입력" required></dd>
                        </dl>
                    </div>
                    <div class="info">
                        <dl>
                            <dt>작성자</dt>
                            <dd><input type="text" name="author" id="author" placeholder="작성자 입력" required></dd>
                        </dl>
                    </div>
                    <div class="cont">
                        <textarea id="content" name="content" placeholder="내용 입력" required></textarea>
                    </div>
                     <input type="submit" id="review" value="리뷰 작성"/>
                </div>
                </form>
            </div>
           <!--  <div class="bt_wrap">
                <a href="#" class="on">등록</a>
                <a href="#">취소</a>
            </div> -->
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
<script>

</script>
</html>
