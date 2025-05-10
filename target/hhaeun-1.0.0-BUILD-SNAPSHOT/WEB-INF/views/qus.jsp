<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Home</title>
	<link href="<c:url value='/resources/css/qus.css' />" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
		<div class="FAQ">
			<h2>FAQ</h2>
			<p>이사할 때<br>자주하는 질문</p>
		</div>
		<div class="Accordion">
			<div class="que">
				<span>이사 일정 변경은 어떻게 하나요?</span>
			</div>
			<div class="anw">
				<span>이사 일정 변경은 전화문의를 통해 간편하게 요청하실 수 있습니다 언제든지 문의해 주세요.</span>
			</div>
			<div class="que">
				<span>이사 비용을 어떻게 확인할 수 있나요?</span>
			</div>
			<div class="anw">
				<span>이사 비용은 직접 상담 후 정확한 견적을 제공해 드립니다. 무료 상담을 통해 확인해 보세요.</span>
			</div>
			<div class="que">
				<span>이사 중에 물건이 손상되면 어떻게 되나요?</span>
			</div>
			<div class="anw">
				<span>저희는 모든 물건을 안전하게 운송하기 위해 최선을 다하지만, 만약 물건이 손상될 경우에는 보상 절차를 진행해 드립니다. 손상된 물건의 사진과 함께 연락 주시면, 상세히 안내해 드리겠습니다.</span>
			</div>
			<div class="que">
				<span>전국 어디서나 이사 서비스가 가능하나요?</span>
			</div>
			<div class="anw">
				<span>네, 전국 모든 지역에서 이사 서비스를 제공합니다. 지역에 따라 추가 비용이 발생할 수 있습니다.</span>
			</div>
			<div class="que">
				<span>이사할 때 식사비 챙겨드려아 하나요?</span>
			</div>
			<div class="anw">
				<span>이사 서비스에는 따로 식사비가 포함되어 있지 않습니다. 그러니 고객님은 따로 신경 쓰시지 않으셔도 됩니다.</span>
			</div>
			<div class="que">
				<span>이사 후 정리는 어떻게 해주시나요?</span>
			</div>
			<div class="anw">
				<span>고객님들이 원하시는 가구 배치 등 알려주시면 가구 배치나 정리 해드립니다.  바로 생활 하시는데  불편함 없이 최대한 정리 후 마무리까지 해드립니다.</span>
			</div>
			<div class="que">
				<span>이사할 때 주의사항 있나요?</span>
			</div>
			<div class="anw">
				<span>중요한 서류, 귀중품들은 고객님들이 직접 챙기시는게 좋습니다. 챙기시기 어려울 경우 이사 팀에게 알려주시면 더욱 신경써서 작업을 진행합니다.</span>
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
    <script>
		$(".que").click(function() {
   		$(this).next(".anw").stop().slideToggle(300);
 		 $(this).toggleClass('on').siblings().removeClass('on');
 		 $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
		});
	</script>
</html>
