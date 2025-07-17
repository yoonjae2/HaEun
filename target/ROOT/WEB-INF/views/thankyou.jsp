<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Home</title>
     <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', 'Noto Sans KR', sans-serif;
      background: #f9f9f9;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .thankyou-container {
      background: white;
      padding: 50px 40px;
      border-radius: 16px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
      text-align: center;
      max-width: 500px;
      width: 90%;
    }

    .thankyou-container h1 {
      font-size: 28px;
      color: #333;
      margin-bottom: 10px;
    }

    .thankyou-container p {
      font-size: 16px;
      color: #666;
      margin-bottom: 30px;
    }

    .thankyou-container a {
      display: inline-block;
      padding: 12px 24px;
      background-color: #4CAF50;
      color: white;
      border-radius: 8px;
      text-decoration: none;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }

    .thankyou-container a:hover {
      background-color: #45a049;
    }

    .emoji {
      font-size: 48px;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
  <div class="thankyou-container">
    <div class="emoji">✅</div>
    <h1>견적 신청 완료!</h1>
    <p>정상적으로 접수되었습니다. 빠른 시일 내에 연락드릴게요.</p>
    <a href="/">홈으로 돌아가기</a>
  </div>
</html>