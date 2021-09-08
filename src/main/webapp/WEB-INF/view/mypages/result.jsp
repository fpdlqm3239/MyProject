<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sub.css">
</head>
<body style="background-color: #fff">
	<div id="header" class="clearfix">
		<div class="inner">
			<div id="logo">
				<a href="/vulnerability/">
					HOME
					
				</a>
			</div>
			<div id="menu">
				<ul>
					<li>
						<a href="/vulnerability/requests/request">진단 요청하기</a>
					</li>
					<li>
						<a href="/vulnerability/mypages/result">마이페이지</a>
					</li>
					<li>
						<a href="#">MENU3</a>
					</li>
					<li>
						<a href="#">MENU4</a>
					</li>
					
					<li class="login-btn">
						<a href="/vulnerability/logout">로그아웃</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<br>
	<div id="container">
		<section class="sub_container">
			<div class="inner">
				<div class="sub_contents clearfix">
					<div class="sub_title fl">
						<h2>
							<strong>회원정보</strong>
							
						</h2>
					</div>
					<div class="sub_table fl">
						<p style="color: black; display: inline;">이름 </p>
						 <p style="display: inline; margin-left: 55px">${user.name} </p>
						 <br><br>
						<p style="color: black; display: inline;">아이디</p> 
						<p style="display: inline; margin-left: 43px">${user.loginId}</p> 
						<br><br>
						<p style="color: black; display: inline;">가입일자</p> 
						<p style="display: inline; margin-left: 25px">${user.createDate}</p>
						
					</div>
					
				</div>
				<br><br><hr><br><br>
				<div class="sub_contents clearfix">
					<div class="sub_title fl">
						<h2>
							<strong>취약점진단 신청 기록</strong>
							
						</h2>
					</div>
					<div class="sub_table fl">
						<c:if test="${request == null}">
							진행중인 진단이 없습니다
						</c:if>
						<c:if test="${request != null}">
							
							<p style="color: black; display: inline;">신청 날짜 : </p> 
							<p style="display: inline;">${request.createDate}</p> <br><br>
							<a href="/vulnerability/mypages/progressinfo?userId=${request.userId}">신청 정보<a> <br><br>
						</c:if>
					</div>
				</div>
				<br><br><hr><br><br>

				<div class="sub_contents clearfix">
					<div class="sub_title fl">
						<h2>
							<strong>취약점진단 완료 기록</strong>
						</h2>
					</div>
					<div class="sub_table fl">
						<c:if test="${result == null}">진단 기록이 없습니다</c:if>
						<c:forEach items="${result}" var="result2">
					   
						<a style="color: black" href="/vulnerability/mypages/detail?id=${result2.id}">점검결과</a> ${result2.createDate}
						<br><br><br><br>
						</c:forEach>
						<br><br><br><br>
					</div>
				</div>
			</div>
		</section>
		
	</div>
</body>
</html>