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
<div class="wrapp">
	<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
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
                    <div id="nameRegMsg" class="msg">한글 2~4자 입력해주세요</div>
                    <div class="group">
						<label for="user" class="label">아이디</label>
						<input name="loginId" id="id" type="text" class="input">
					</div>
					<div id="idMsg" class="msg">아이디를 입력해주세요</div>
					<div id="idRegMsg" class="msg">영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다</div>
                    <div id="idCheckMsg" class="msg">이미 사용중인 아이디 입니다</div>
                    
					<div class="group">
						<label for="pass" class="label">비밀번호</label>
						<input name="password" id="password" type="password" class="input js-pass" data-type="password">
					</div>
                    <div id="passMsg" class="msg">비밀번호를 입력해주세요</div>
                    <div id="passRegMsg" class="msg">영문자 숫자 조합 8-20자 입력해주세요</div>
                    
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
                    <div id="phoneRegMsg" class="msg">전화번호 형식에맞게 입력해주세요</div>
                    <br>
					<div class="group">
						<input type="button" class="button js-joinBtn" value="회원가입">
					</div>
					
					<div class="hr"></div>
					<div class="foot-lnk">
						<a href="${pageContext.request.contextPath}/members/loginform"><label for="tab-1">이미 회원이신가요?</a>
					</div>
				</div>
			</form>
			</div>
		</div>
	</div>
	</div>
    <script type="text/javascript">
		$("#name").focusout(function () {
            var name = $("#name").val();
            var nameReg = /^[가-힣]{2,4}$/;
            if(name == ""){
                $("#nameMsg").show();
                $("#nameCheck").val("0");
                return;
            }
            
            if(nameReg.test(name) == false){
            	 $("#nameRegMsg").show();
                 $("#nameCheck").val("0");
                 return;
            }
            
            $("#nameCheck").val("1");
        });
		
		$("#name").keyup(function() {
			 $("#nameMsg").hide();
			 $("#nameRegMsg").hide();
			 $("#nameCheck").val("0");
		})
		
		$("#id").focusout(function() {
			var id = $("#id").val();
			if(id == ""){
				$("#idMsg").show();
				$("#idCheck").val("0");
				return;
			}
			
			 var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;
			 if(idReg.test(id) == false){
				 $("#idRegMsg").show();
				 $("#idCheck").val("0");
					return;
			 }
			 
			var jsonData;
			$.ajax({
				
				type: "GET",
				url: "/vulnerability/members/idcheck",
				data: {"loginId" : id},
				async : false,
				dataType : 'JSON',
				success : function (data) {
					jsonData = data;
				}
				
			});
			
			if(jsonData.code == "false"){
				 $("#idCheckMsg").show();
				 $("#idCheck").val("0");
				return;
			}
			
			
			 $("#idCheck").val("1");
		})
		
		$("#id").keyup(function() {
			 $("#idMsg").hide();
			 $("#idCheckMsg").hide();
			 $("#idRegMsg").hide();
			 $("#idCheck").val("0");
		});
		
		$("#password").focusout(function() {
			var password = $("#password").val();
			
			if(password ==""){
				$("#passMsg").show();
				$("#passCheck").val("0");
				return;
			}
			
			var passReg = /^[a-zA-z0-9]{8,20}$/g;
			var num = password.search(/[0-9]/g);
			var eng = password.search(/[a-z]/ig);
			
			if(passReg.test(password) ==false || (num<0 || eng <0)){
				$("#passRegMsg").show();
				$("#passCheck").val("0");
				return;
			}
			
			$("#passCheck").val("1");
		});
			
		$("#password").keyup(function() {
				 $("#passMsg").hide();
				 $("#passRegMsg").hide();
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
			
			var phoneReg = /01[016789]-[^0][0-9]{3}-[0-9]{4}/;
			if(phoneReg.test(phone)==false){
				$("#phoneRegMsg").show();
				$("#phoneCheck").val("0");
				return;
			}
			
			$("#phoneCheck").val("1");
		});
		
		$("#phone").keyup(function() {
			 $("#phoneMsg").hide();
			 $("#phoneRegMsg").hide();
			 $("#phoneCheck").val("0");
			 
			 var number = $("#phone").val().replace(/[^0-9]/g, "");
			 var phone = "";
			 


			    if(number.length < 4) {
			        return number;
			    } else if(number.length < 8) {
			        phone += number.substr(0, 3);
			        phone += "-";
			        phone += number.substr(3);
			    } else {
			        phone += number.substr(0, 3);
			        phone += "-";
			        phone += number.substr(3, 4);
			        phone += "-";
			        phone += number.substr(7,4);
			    }
			    
			    $("#phone").val(phone);
			    
			 
		});
		
		
		
		$(".js-joinBtn").click(function() {
			var check = true;
			$(".checkSubmit").each(function(i, element) {
				if($(this).val() == "0"){
					check = false;
				}
				
			});
			
			if(check ==true){
				$(".js-joinForm").submit();
			}
			
			
		})
		
		
		
		
		
		
    
    </script>
    
    <jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>
</body>
</html>