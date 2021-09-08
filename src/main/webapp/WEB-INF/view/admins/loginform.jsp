<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
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
				<a href="/vulnerability/admins/request">
					관리자 페이지
				</a>
			</div>
			<div id="menu">
				<ul>
					
					<li class="login-btn" >
						<a href="#" ><label for="tab-1">로그인</a>
					</li>
					
				</ul>
			</div>
		</div>
	</div>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1"  type="radio" name="tab" class="sign-in" checked ><label for="tab-1" class="tab">로그인</label>
			<input id="tab-2" type="radio" name="tab" class="sign-up" ><label for="tab-2" class="tab"></label>
			<div class="login-form">
				<div class="sign-in-htm">
					<form class="js-loginForm" method="post" action="/vulnerability/authenticate">
						<div class="group">
							<label for="user" class="label">아이디</label>
							<input name="userId" id="user" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">비밀번호</label>
							<input name="password" id="pass" type="password" class="input" data-type="password">
						</div>
						
						<div class="group">
							<input id="check" type="checkbox" class="check" >
							<label for="check"><span class="icon"></span>아이디 기억하기</label>
						</div>
						<div class="group">
							<input type="button" class="button js-loginBtn" value="Sign In">
						</div>
					</form>
					<div class="hr"></div>
					
				</div>

			<form class="js-joinForm" method="post" action="/vulnerability/members/join">
				<div class="sign-up-htm">
					<div class="group">
						<label for="user" class="label">이름</label>
						<input name="name" id="user" type="text" class="input">
					</div>
                    <div class="group">
						<label for="user" class="label">아이디</label>
						<input name="loginId" id="user" type="text" class="input">
					</div>
					<div class="group">
						<label for="pass" class="label">비밀번호</label>
						<input name="password" id="pass" type="password" class="input js-pass" data-type="password">
					</div>
					<div class="group">
						<label for="pass" class="label">비밀번호 확인</label>
						<input name="passConfirm" id="pass" type="password" class="input js-passconfirm" data-type="password">
					</div>
					<div class="group">
						<label for="pass" class="label">전화번호</label>
						<input name="phone" id="pass" type="text" class="input">
					</div>
					<div class="group">
						<input type="button" class="button js-joinBtn" value="Sign Up">
					</div>
					<div class="hr"></div>
					<div class="foot-lnk">
						<a><label for="tab-1">이미 회원이신가요?</a>
					</div>
				</div>
			</form>
			</div>
		</div>
	</div>
    <script type="text/javascript">

		const loginForm = document.querySelector(".js-loginForm");
		const loginBtn = document.querySelector(".js-loginBtn");
		loginBtn.addEventListener("click", loginFormCheck);

		function loginFormCheck(){
			if(loginForm.userId.value == ""){
				alert("아이디를 입력해주세요");
			}else if(loginForm.password.value == ""){
				alert("비밀번호를 입력해주세요");
			}else{
				loginForm.submit();
			}
		}

		
    
    </script>
</body>
</html>