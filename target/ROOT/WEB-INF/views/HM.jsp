<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Home</title>
	<link href="<c:url value='/resources/css/HM.css' />" rel="stylesheet" type="text/css">
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
 		  <input type="hidden" name="_next" value="https://www.haeun24.com/thankyou"> <!-- 원하는 완료 페이지 주소로 수정 가능 -->
		<div class="down-menu">
			<p>서비스 종류</p>
			<select name="이사종류" id="MH" class="Service" required>
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
			<p>HaEun | 경기도 수원시 팔달구 인계동 842-7 | 대표 : 최찬영 | 전화번호 : 010-8033-5236<br>사업자등록번호 : 693-23-01809</p>
		</div>
        </div>
</body>
<script>
	    function execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업을 통한 검색 결과 항목 클릭 시 실행
	                var addr = ''; // 주소_결과값이 없을 경우 공백 
	                var extraAddr = ''; // 참고항목
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
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
	                } else {
	                    document.getElementById("UserAdd1").value = '';
	                }
	
	                // 선택된 우편번호와 주소 정보를 input 박스에 넣는다.
	                document.getElementById('zipp_code_id').value = data.zonecode;
	                document.getElementById("UserAdd1").value = addr;
	                document.getElementById("UserAdd1").value += extraAddr;
	                document.getElementById("UserAdd2").focus(); // 우편번호 + 주소 입력이 완료되었음으로 상세주소로 포커스 이동
	            }
	        }).open();
	    }
	    </script>
</html>
