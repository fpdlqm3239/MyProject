<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 


<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" type="text/css">
</head>
<body>
	<div id="header" class="clearfix">
		<div class="inner">
			<div id="logo">
				<a href="#">
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
					<c:if test="${isUser == true}">
						<a href="/vulnerability/logout">로그아웃</a>
						</c:if>
						<c:if test="${isUser == false}">
						<a href="/vulnerability/members/loginform">로그인</a>
						
					</li>
					<li class="login-btn">
						<a href="/vulnerability/members/joinform">회원가입</a>
					</li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<div id="container">
		<section class="main-banner">
			<div class="inner">
				<div class="text">
					<em class="yAnimate_1">vulnerability</em>
					<strong class="yAnimate_2">취약점진단</strong>
					<span class="yAnimate_3">
						Lorem Ipsum is simply dummy text of the printing and typesetting industry.
						<br>
						Lorem Ipsum has been the industry's standard dummy text
						<br>
						ever since the 1500s, when an unknown printer took a galley of type and scrambled it to mInterior Design
					</span>
					<a href="/vulnerability/requests/request" class="yAnimate_4">진단 요청</a>
				</div>
			</div>
		</section>
		<section class="section02">
			<div class="inner">
				<div class="flex">
					<div class="box">
						<h3>Lorem</h3>
						<p>
							Lorem Ipsum is simply dummy tex of the printing
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
						</p>
					</div>
					<div class="box">
						<h3>Lorem</h3>
						<p>
							Lorem Ipsum is simply dummy tex of the printing
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
						</p>
					</div>
					<div class="box">
						<h3>Lorem</h3>
						<p>
							Lorem Ipsum is simply dummy tex of the printing
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
						</p>
					</div>
					<div class="box">
						<h3>Lorem</h3>
						<p>
							Lorem Ipsum is simply dummy tex of the printing
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
						</p>
					</div>
					<div class="box">
						<h3>Lorem</h3>
						<p>
							Lorem Ipsum is simply dummy tex of the printing
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
						</p>
					</div>
					<div class="box">
						<h3>Lorem</h3>
						<p>
							Lorem Ipsum is simply dummy tex of the printing
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
						</p>
					</div>
					<div class="box">
						<h3>Lorem</h3>
						<p>
							Lorem Ipsum is simply dummy tex of the printing
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
						</p>
					</div>
					<div class="box">
						<h3>Lorem</h3>
						<p>
							Lorem Ipsum is simply dummy tex of the printing
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
						</p>
					</div>
					<div class="box">
						<h3>Lorem</h3>
						<p>
							Lorem Ipsum is simply dummy tex of the printing
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
							and typesetting industry. Lorem Ipsum
							has been the industry's standard dummy text
						</p>
					</div>
				</div>
			</div>
		
	</div>
</body>
</html>