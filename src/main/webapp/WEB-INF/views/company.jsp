<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Home</title>
	<link href="<c:url value='/resources/css/company.css' />" rel="stylesheet" type="text/css">
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
        <div class="cp">
        	<h2>회사소개</h2>
        	<div class="line"></div>
        	<div class="cp-1">
        		<h2>안전하고 빠른 이사<br>HaEun이 함께 합니다!</h2>
        		<p>HaEun은 고객님들의 소중한 짐을 안전하고 빠르게 이동시키기 위해 최선을 다하는 이삿짐 서비스 회사입니다.</p>
        		<p>고객님의 모든 이사 과정이 원활하고 부담 없도록 돕는것이 우리의 목표입니다.</p>
        		<p>20년 경력의 베테랑 기사님들이 신뢰와 정직을 바탕으로 성심성의껏 신경써서 잘해드리겠습니다.</p>
        	</div>
        	<ul class="cp-2">
        		<li><span>회사명</span>: (주)HaEun이사</li>
        		<li><span>대표</span>: 최찬영</li>
        		<li><span>설립일</span>: 2010년 6월 10일</li>
        		<li><span>주소</span>: 경기도 수원시 팔달구 인계동 842-7</li>
        		<li><span>전화번호</span>: 010-8033-5236</li>
        		<li><span>사업자등록번호</span>: 693-23-01809</li>
        	</ul>
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
