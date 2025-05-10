<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Home</title>
	<link href="<c:url value='/resources/css/index.css' />" rel="stylesheet" type="text/css">
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
			<h2>편리하고 안전한 이사<br>지금 시작하세요!</h2>
			<p>전문가가 함께하는 이사 서비스, 지금 무료 상담을 요청하세요!</p>
		</div>
		<div class="ES">
			<h2>이사견적신청</h2>
		</div>
		<form id="estimateForm" action="https://formsubmit.co/4c1bb991a576473f067a80034c00f145" method="post">
		 <input type="hidden" name="_subject" value="🔔 새로운 이사 견적 신청이 도착했습니다!">
  		 <input type="hidden" name="_captcha" value="false">
 		  <input type="hidden" name="_next" value="http://localhost:8080/hhaeun/"> <!-- 원하는 완료 페이지 주소로 수정 가능 -->
		<div class="down-menu">
			<p>서비스 종류</p>
			<select name="이사종류" id="MH" class="Service" required>
				<option value="">이사종류를 선택하세요.</option>
				<option value="가정이사(1톤이상)">가정이사(1톤이상)</option>
				<option value="소형이사(1톤이하)">소형이사(1톤이하)</option>
				<option value="사무실이사">사무실이사</option>
			</select>
			<div class="a">
				<p>고객명</p> 		
				<input type="text" name="고객명" required>
			</div>
			<div class="b">
				<p>이사예정일</p> 
				<input type="date" name="이사예정일" required>
			</div>
			<div class="c">
    			출발지
    			<div class="col-sm-10">
       			<input type="text" class="aa" id="zipp_code_start" name="출발지_우편번호" maxlength="10" placeholder="우편번호" style=" display: inline;" required>
        		<input type="button" id="zipp_btn_start" class="btn btn-primary" onclick="execDaumPostcode('start')" value="우편번호 찾기"><br>
        		<input type="text" class="bb" name="출발지_주소" id="UserAdd1_start" maxlength="40" placeholder="기본 주소를 입력하세요" required><br>
        		<input type="text" class="cc" name="출발지_상세주소" id="UserAdd2_start" maxlength="40" placeholder="상세 주소를 입력하세요">
    		</div>
		</div>

			<div class="d">
    			도착지
    			<div class="col-sm-10">
        		<input type="text" class="aa" id="zipp_code_end" name="도착지_우편번호" maxlength="10" placeholder="우편번호" style=" display: inline;" required>
        		<input type="button" id="zipp_btn_end" class="btn btn-primary" onclick="execDaumPostcode('end')" value="우편번호 찾기"><br>
        		<input type="text" class="bb" name="도착지_주소" id="UserAdd1_end" maxlength="40" placeholder="기본 주소를 입력하세요" required><br>
        		<input type="text" class="cc" name="도착지_상세주소" id="UserAdd2_end" maxlength="40" placeholder="상세 주소를 입력하세요">
    		</div>
		</div>
			<div class="e">
				<p>연락처</p> 
				<input type="text" name="전화번호" required>
			</div>
			<div class="f">
				<button type="submit">견적신청</button>
			</div>
		</div>
		</form>
		<!-- <iframe name="hidden_iframe" style="display:none;"></iframe> -->

		</div>
		<div class="Middle">
			<h2>새로운 시작,<br>저희와 함께하세요!</h2>
			<p>저희의 경험과 전문성으로, 당신의 이사를 완벽하게!</p>
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
				<span>고객님들이 원하시는 가구 배치 등 알려주시면 가구 배치, 정리 해드립니다.  바로 생활 하시는데  불편함 없이 최대한 정리 후 마무리까지 해드립니다.</span>
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

	<!-- 팝업창 모달 -->
<!-- <div id="popupBackdrop" style="display: none;"></div>
  <div id="popupModal" style="display: none;">
    <p>📬 견적 신청이 전송되었습니다!</p>
    <button onclick="closePopup()">확인</button>x
  </div> -->

<script>
    function execDaumPostcode(type) {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = ''; // 주소_결과값이 없을 경우 공백 
                var extraAddr = ''; // 참고항목

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 도로명 주소를 선택
                    addr = data.roadAddress;
                } else { // 지번 주소를 선택
                    addr = data.jibunAddress;
                }

                if(data.userSelectedType === 'R'){
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                }

                // 출발지, 도착지에 따라 각기 다른 input에 값 넣기
                if (type === 'start') {
                    document.getElementById('zipp_code_start').value = data.zonecode;
                    document.getElementById("UserAdd1_start").value = addr + extraAddr;
                    document.getElementById("UserAdd2_start").focus(); // 상세 주소 입력란으로 포커스 이동
                } else if (type === 'end') {
                    document.getElementById('zipp_code_end').value = data.zonecode;
                    document.getElementById("UserAdd1_end").value = addr + extraAddr;
                    document.getElementById("UserAdd2_end").focus(); // 상세 주소 입력란으로 포커스 이동
                }
            }
        }).open();
    }

		$(".que").click(function() {
   		$(this).next(".anw").stop().slideToggle(300);
 		 $(this).toggleClass('on').siblings().removeClass('on');
 		 $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
		});
		
		
	
		/* function handleSubmit(event) {
			  event.preventDefault();
			  const form = document.getElementById("estimateForm");

			  // 폼 유효성 검사 통과 여부 확인
			  if (form.checkValidity()) {
			    showPopup(); // 통과 시 팝업 띄움
			  } else {
			    form.reportValidity(); // 통과 못하면 브라우저가 경고 보여줌
			  }
			}
		function showPopup() {
			  document.getElementById("popupBackdrop").style.display = "block";
			  document.getElementById("popupModal").style.display = "block";
			}

			function closePopup() {
			  document.getElementById("popupBackdrop").style.display = "none";
			  document.getElementById("popupModal").style.display = "none";
			  document.getElementById("estimateForm").submit(); // 실제 메일 전송!
			} */


	</script>


</body>
</html>
