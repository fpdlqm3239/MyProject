<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/common.css" type="text/css" rel="stylesheet">
<style type="text/css">

body{
	background-color: white;
}
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
						<a href="/vulnerability/admins/request">들어온 진단요청</a>
					</li>
					<li>
						<a href="/vulnerability/admins/completedrequest">완료된 진단요청</a>
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
<div>
<h4 style="margin-left: 40%">ID :</h4>
<p >${request.loginId}</p><br><br><br>

<h4 style="margin-left: 40%">전화번호 : </h4>
<p ">${request.phone}</p><br><br><br>

<h4 style="margin-left: 40%">OS : </h4>
<p >${request.os }</p><br><br><br>

<h4 style="margin-left: 40%">IP : </h4>
<p >${request.ip}</p><br><br><br>

<h4 style="margin-left: 40%">시스템 USER 계정 : </h4>
<p >${request.userAccount}</p><br><br><br>

<h4 style="margin-left: 40%">시스템 USER 패스워드 : </h4>
<p >${request.userPassword}</p><br><br><br>

<h4 style="margin-left: 40%">시스템 ROOT 패스워드 :</h4>
<p >${request.rootPassword}</p><br><br><br><br><br><br><br>

<form  action="">
	<input style="width: 200px; height: 70px; font-size: 20px; margin-left: 40%;" type="submit" value="진단하기">
</form><br><br><br>

	<input onclick="complete()" style="width: 200px; height: 70px; font-size: 20px; margin-left: 40%;" type="button" value="진단완료처리">


</div>
</body>
<script type="text/javascript">
	function complete(){
	let conObj = confirm("완료 하시겠습니까?\n  (진단이 모두 완료된 후에 해야합니다)");
	if(conObj){
		let userId = String(${request.userId});
		window.location.href = "/vulnerability/admins/complete?userId="+userId;
		}
	}
</script>


</html>