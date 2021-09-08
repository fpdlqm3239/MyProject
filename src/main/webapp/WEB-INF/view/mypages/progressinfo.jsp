<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/common.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/box.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sub.css">
<style type="text/css">



h4{
display: inline;
}
p{
display: inline;
}
</style>
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
						<a href="/vulnerability/logout">로그아웃</a>
					</li>
					
				</ul>
			</div>
		</div>
	</div>
<br><br>
<div class="box">
<br><br><br><br>
<h4>ID :</h4>
<p>${request.loginId}</p><br><br><br>


<h4>전화번호 : </h4>
<p>${request.phone}</p><br><br><br>

<h4>OS : </h4>
<p>${request.os }</p><br><br><br>

<h4>IP : </h4>
<p>${request.ip}</p><br><br><br>

<h4>시스템 USER 계정 : </h4>
<p>${request.userAccount}</p><br><br><br>

<h4>시스템 USER 패스워드 : </h4>
<p>${request.userPassword}</p><br><br><br>

<h4>시스템 ROOT 패스워드 :</h4>
<p>${request.rootPassword}</p><br><br><br>
<br><br><br>
<a href="/vulnerability/mypages/result">돌아가기 -></a>
<br><br><br><br><br><br><br><br>
</div>
</body>
</html>