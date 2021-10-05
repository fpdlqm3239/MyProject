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
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<style type="text/css">
	body {
		background-color: white;
}

.btn{
	width: 100px;
	height: 30px;
	color: #fff;
	background: #004fff;
	font-size: 16px;
	border: none;
	border-radius: 20px;
	box-shadow: 0 4px 16px rgba(0,79,255,0,3);
	transition : 0.3s;
	
	
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
</head>
<body style="background-color: #fff">
	<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
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
							
							<p style="color: black; display: inline;">신청 일자  </p> &nbsp;
							<p style="display: inline;">${request.createDate}</p> &nbsp; <button class="btn" id="infoBtn">신청 정보</button>
							 <br><br>
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
					   
						<p style="color: black; display: inline;">점검 완료일  </p> &nbsp; ${result2.createDate} &nbsp; <button class="btn" id="resultBtn" onclick="result(${result2.id})">점검 결과</button>
						<br><br>
						</c:forEach>
						<br><br><br><br>
					</div>
				</div>
			</div>
		</section>
		
	</div>
	
	<script type="text/javascript">
		$("#infoBtn").click(function() {
			location.href = "/vulnerability/mypages/progressinfo?userId=${request.userId}";
		});
		
		function result(id) {
			location.href = "/vulnerability/mypages/detail?id="+id;
		};
		
	</script>
</body>
</html>