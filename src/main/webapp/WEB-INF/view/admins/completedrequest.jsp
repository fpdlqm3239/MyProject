<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/common.css" type="text/css" rel="stylesheet">
<style type="text/css">
p{
	margin-left: 20px;
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
						<a href="#">완료된 진단요청</a>
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
<br>
<h1 style="color: black; margin-left: 20px;">완료된 진단요청</h1>
<br><br><br>
<c:if test="${completedRequests == null}">완료된 진단이 없습니다</c:if>
<c:forEach items="${completedRequests}" var="request" varStatus="status">
<hr style="margin-bottom: 20px; margin-top: 20PX;">
<p>완료된 진단</p>
<p>유저 ID  : ${request.loginId}</p>
<p>완료 시간 : ${request.createDate}</p> 

<form method="get" action="/vulnerability/admins/completedinfo">
<input type="hidden" name="requestId" value="${request.requestId}">
 <input style="width: 70px; margin-left: 20px" height="40px" type="submit" value="상세보기" >    
</form>
<c:if test="${status.last}">
<hr style="margin-bottom: 20px; margin-top: 20PX;">
</c:if>
</c:forEach>

</body>
</html>