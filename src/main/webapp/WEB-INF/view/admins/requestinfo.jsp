<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/common.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">

table.type09 {
  
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  position: absolute;
  left: 50%;
  top: 20%;
  margin-left: -370px;
  height: 300px;
  
  
 


}
table.type09 thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #369;
  border-bottom: 3px solid #036;
  color: black;
  text-align: center;
}
table.type09 tbody th {
  width: 200px;
  
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #f3f6f7;
  color: black;
  text-align: center;
}
table.type09 td {
  width: 500px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  font-weight: lighter;
  color: black;
  

 
}

#btn{
	width: 100px;
	top: 60%;
	left: 50%;
	position: absolute;
	margin-left: -50px;
}

.btn{
	width: 200px;
	height: 50px;
	color: #fff;
	background: #004fff;
	font-size: 16px;
	border: none;
	border-radius: 25px;
	box-shadow: 0 4px 16px rgba(0,79,255,0,3);
	transition : 0.3s;
	position: absolute;
	left: 50%;
	top: 53%;
	transform: translate(-50%,-50%);
	}
	
.btn:focus {
	outline: 0;
}	

.btn:hover{
	background: rgba(0,79,255,0,9);
	cursor: pointer;
	box-shadow: 0 2px 4px rgba(0,79,255,0.6);
}
</style>
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
  <table class="type09">
        <thead>
        <tr>
          <th scope="cols">취약점 진단 신청 정보</th>
          <th scope="cols"></th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <th scope="row">아이디</th>
          <td>${request.loginId}</td>
        </tr>
        <tr>
          <th scope="row">전화번호</th>
          <td>${request.phone}</td>
        </tr>
        <tr>
          <th scope="row">ip</th>
          <td>${request.ip}</td>
        </tr>
        <tr>
          <th scope="row">시스템 USER 계정</th>
          <td>${request.userAccount}</td>
        </tr>
        <tr>
          <th scope="row">시스템 USER 패스워드</th>
          <td>${request.userPassword}</td>
        </tr>
        <tr>
          <th scope="row">시스템 ROOT 패스워드</th>
          <td>${request.rootPassword}</td>
        </tr>

        
        </tbody>
        
      </table>
	
		<button class="btn" id="scanBtn">진단하기</button>
		
		<button class="btn" id="completeBtn" style="top: 60%; display: none" onclick="complete()">진단 완료처리</button>
</body>
<script type="text/javascript">
	function complete(){
		let conObj = confirm("완료 하시겠습니까?\n  (진단이 모두 완료된 후에 해야합니다)");
		if(conObj){
			let userId = String(${request.userId});
			window.location.href = "/vulnerability/admins/complete?userId="+userId;
		}
	}
	
	$("#scanBtn").click(function() {
		$("#completeBtn").show();
	})
	
	
</script>


</html>