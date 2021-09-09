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
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
	<style type="text/css">
		.msg{
			color: red;
			text-align: center;
			display: none;
		}
	</style>
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

                <input type="hidden" class="checkSubmit" value="0" id="nameCheck">
                <input type="hidden" class="checkSubmit" value="0" id="idCheck">
                <input type="hidden" class="checkSubmit" value="0" id="passCheck">
                <input type="hidden" class="checkSubmit" value="0" id="passConfirmCheck">
                <input type="hidden" class="checkSubmit" value="0" id="phoneCheck">
			<form class="js-joinForm" method="post" action="${pageContext.request.contextPath}/members/join">
				<div class="sign-up-htm">
					<div class="group">
						<label for="user" class="label">이름</label>
						<input name="name" id="name" type="text" class="input">
					</div>
                    <div id="nameMsg" class="msg">이름을 입력해주세요</div>
                    <div class="group">
						<label for="user" class="label">아이디</label>
						<input name="loginId" id="id" type="text" class="input">
					</div>
					<div id="idMsg" class="msg">아이디를 입력해주세요</div>
                    <div id="idCheckMsg" class="msg">이미 사용중인 아이디 입니다</div>
					<div class="group">
						<label for="pass" class="label">비밀번호</label>
						<input name="password" id="password" type="password" class="input js-pass" data-type="password">
					</div>
                    <div id="passMsg" class="msg">비밀번호를 입력해주세요</div>
					<div class="group">
						<label for="pass" class="label">비밀번호 확인</label>
						<input name="passConfirm" id="passConfirm" type="password" class="input js-passconfirm" data-type="password">
					</div>
                    <div id="passConfirmMsg" class="msg">비밀번호가 같지않습니다</div>
					<div class="group">
						<label for="pass" class="label">전화번호</label>
						<input name="phone" id="phone" type="text" class="input">
					</div>
                    <div id="phoneMsg" class="msg">전화번호를 입력해주세요</div>
					<div class="group">
						<input type="button" class="button js-joinBtn" value="회원가입">
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
		$("#name").focusout(function () {
            var name = $("#name").val();

            if(name == ""){
                $("#nameMsg").show();
                $("#nameCheck").val("0");
                return;
            }
            $("#nameCheck").val("1");
        });
		
		$("#name").keyup(function() {
			 $("#nameMsg").hide();
			 $("#nameCheck").val("0");
		})
		
		$("#id").focusout(function() {
			var id = $("#id").val();
			if(id == ""){
				$("#idMsg").show();
				$("#idCheck").val("0");
				return;
			}
			
			 $("#idCheck").val("1");
		})
		
		$("#id").keyup(function() {
			 $("#idMsg").hide();
			 $("#idCheck").val("0");
		});
		
		$("#password").focusout(function() {
			var password = $("#password").val();
			if(password ==""){
				$("#passMsg").show();
				$("#passCheck").val("0");
				return;
			}
			$("#passCheck").val("1");
		});
			
		$("#password").keyup(function() {
				 $("#passMsg").hide();
				 $("#passCheck").val("0");
			});
		
		$("#passConfirm").focusout(function() {
			if($("#passCheck").val() == "0") return;
			
			var passConfirm = $("#passConfirm").val();
			
			if(passConfirm =="" || passConfirm != $("#password").val()){
				$("#passConfirmMsg").show();
				$("#passConfirmCheck").val("0");
				return;
			}
			$("#passConfirmCheck").val("1");
		});
		
		$("#passConfirm").keyup(function() {
			 $("#passConfirmMsg").hide();
			 $("#passConfirmCheck").val("0");
		});
		
		$("#phone").focusout(function() {
			var phone = $("#phone").val();
			if(phone ==""){
				$("#phoneMsg").show();
				$("#phoneCheck").val("0");
				return;
			}
			$("#phoneCheck").val("1");
		});
		
		$("#phone").keyup(function() {
			 $("#phoneMsg").hide();
			 $("#phoneCheck").val("0");
		});
		
		$(".js-joinBtn").click(function() {
			var check = true;
			$(".checkSubmit").each(function(i, element) {
				if($(this).val() == "0"){;
					check = false;
				}
				
			});
			
			if(check ==true){
				alert("완료");
			}
			
			
		})
		
		
		
		
		
		
    
    </script>
</body>
</html>