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
				<a href="/vulnerability/">
					HOME
				</a>
			</div>
			<div id="menu">
				<ul>
					<li>
						<a href="/vulnerability/requests/request">진단요청하기</a>
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
					<li class="login-btn" >
						<c:if test="${isUser == true}">
						<a href="/vulnerability/logout">로그아웃</a>
						</c:if>
						
						<c:if test="${isUser == false}">
						<a href="/vulnerability/members/loginform">로그인</a>
						</c:if>
					</li>
					<li class="login-btn">
						<a href="#" ><label for="tab-2">회원가입</a>
						
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="login-wrap">
		<div class="login-html">
			<c:if test="${isUser == false}">
			<input id="tab-1"  type="radio" name="tab" class="sign-in"  ><label for="tab-1" class="tab">로그인</label>
			</c:if>
			<input id="tab-2" type="radio" name="tab" class="sign-up" checked><label for="tab-2" class="tab">회원가입</label>
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
					<div class="foot-lnk">
						<a href="#forgot">Forgot Password?</a>
					</div>
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
    <script>

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

		const joinForm = document.querySelector(".js-joinForm");
    	const joinBtn = document.querySelector(".js-joinBtn");
        
        joinBtn.addEventListener("click", joinFormCheck);

		function joinFormCheck(){
			if(joinForm.name.value == ""){
				alert("이름을 입력해주세요");
			}else if(joinForm.loginId.value == ""){
				alert("아이디를 입력해주세요");
			}else if(joinForm.password.value == ""){
				alert("비밀번호를 입력해주세요");
			}else if(joinForm.passConfirm.value ==""){
				alert("비밀번호 확인을 입력해주세요");
			}else if(joinForm.phone.value == ""){
				alert("전화번호를 입력해주세요");
			}else if(!checkPassword()){
				alert("비밀번호와 비밀번호 재입력이 맞지 않습니다");
			}else{
				joinForm.submit();
			}
		}

        function checkPassword(){
            const password = document.querySelector(".js-pass");
			const confirmPassword = document.querySelector(".js-passconfirm");

			if(password.value !== confirmPassword.value){
				
				return false;
			}

			return true;		
        }
    
    </script>
</body>
</html>