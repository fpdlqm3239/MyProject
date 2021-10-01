<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" type="text/css">
</head>
<body>
<div id="header" class="clearfix">
		<div id="leftLogo">
		 <img alt="logo" style="width: 200px" height="45px" src="${pageContext.request.contextPath}/resources/images/중부대 로고8.png">
	
		</div>
		<div id="leftLogo" style="color: gray;">
		 정보보호학과
	
		</div>
		
		<div class="inner">
			
		
			<div id="logo">
				<a href="/vulnerability">
					HOME
					
				</a>
			</div>
			<div id="menu">
				<ul>
					<li>
						<a href="/vulnerability/requests/request">시스템 취약점 진단 요청</a>
					</li>
					<li>
						<a href="/vulnerability/mypages/result">마이페이지</a>
					</li>
					<li>
						<a href="/vulnerability/maker">제작자</a>
					</li>
					<li>
						<a href="#">MENU4</a>
					</li>
					<li class="login-btn">
					<c:if test ="${isUser == true}">
					
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
</body>
</html>