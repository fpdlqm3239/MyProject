<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sub.css" type="text/css">
</head>
<body style="background-color: #fff">
	<div id="header" class="clearfix">
		<div class="inner">
			<div id="logo">
				<a href="/vulnerability/admins/request">
					HOME
				</a>
			</div>
			<div id="menu">
				<ul>
					<li>
						<a href="/vulnerability/admins/request">들어온 진단요청</a>
					</li>
					<li>
						<a href="/vulnerability/admins/completedRequest">완료된 진단요청</a>
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
	<div id="container">
		<section class="sub_container">
			<div class="inner">
				<div class="sub_contents clearfix">
					<div class="sub_title fl">
						<h2>
							<strong>회원 정보</strong>
							
						</h2>
					</div>
					<div class="sub_table fl" style="color: black;">
						<p>이름 : ${completedRequest.name}</p>
						<p>계정 : ${completedRequest.loginId}</p>
						<p>연락처 : ${completedRequest.phone}</p>
						<p>운영체제(OS) : ${completedRequest.os}</p>
						<p>IP : ${completedRequest.ip}</p>
					</div>
				</div>
				<div class="sub_contents clearfix">
					<div class="sub_title fl">
						<h2>
							<strong>진단 결과</strong>
							
						</h2>
					</div>
					<div class="sub_table fl">
						<table>
							<col width="120px"><col width="120px"><col width="120px"><col width="120px"><col width="120px"><col width="120px"><col width="120px">
 							<thead>
								<tr class="bdln bdrn">
									<th class="bdln" >호스트</th>
									<th>전체항목</th>
									<th>점검항목</th>
									<th>만족</th>
									<th>부분 만족</th>
									<th>불만족</th>
									<th>N/A</th>
									<th class="bdrn">보안점수</th>
									
								</tr>
					
							</thead>
							<tbody>
								<tr class="bdln bdrn">
									<td class="bdln">${result.hostName}</td>
									<td >${result.entireCategory}</td>
									<td >${result.inspectionCategory}</td>
									<td >${result.good}</td>
									<td>${result.notBad}</td>
									<td >${result.bad}</td>
									<td >${result.na}</td>
									<td class="bdrn">${result.securityScore}</td>
								</tr>
				
							</tbody>
						</table>
						
					
					</div>

					
				</div>
				<br><br>

				<div class="sub_contents clearfix">
					<div class="sub_title fl">
						<h2>
							<strong>상세 결과</strong>
							
						</h2>
					</div>
					<div class="sub_table fl">
						<table>
							<col width="100px"><col width="100px"><col width="90px"><col width="150px"><col width="200px"><col width="250px">
 							<thead>
								<tr class="bdln bdrn">
									
									<th class="bdln">분류</th>
									<th>항목 코드</th>
									<th>점검 항목</th>
									<th>중요도</th>
									<th>점검 현황</th>
									<th>진단 결과</th>
									<th class="bdrn">조치 사항</th>
									
									
								</tr>
					
							</thead>
							<tbody>
								<tr class="bdln bdrn">
									<td class="bdln" rowspan="${fn:length(accountList)}">${accountList[0].category}</td>
								
							<c:forEach items="${accountList}" var="account" varStatus="status">
								   <c:if test="${!status.first}"> <tr class="bdln bdrn"> </c:if>
								   
								   <td>${account.code}</td>
								   <td>${account.checkItem}</td>
								   <td>${account.importance}</td>
								   <td>${account.inspectionStatus}</td>
								   <td>${account.result}</td>
								   <td class="bdrn">${account.actionItem}</td>
								</tr>
							</c:forEach>

							<tr class="bdln bdrn">
						   
								<td class="bdln" rowspan="${fn:length(fileList)}">${fileList[0].category}</td>
								
							<c:forEach items="${fileList}" var="file" varStatus="status">
								   <c:if test="${!status.first}"> <tr class="bdln bdrn"> </c:if>
								   
								   <td>${file.code}</td>
								   <td>${file.checkItem}</td>
								   <td>${file.importance}</td>								   
								   <td>${file.inspectionStatus}</td>
								   <td>${file.result}</td>
								   <td class="bdrn">${file.actionItem}</td>
						   </tr>
							</c:forEach>
				
							</tbody>
						</table>
						
				
					
					</div>

					
				</div>
			</div>
		</section>
		
	</div>
</body>
</html>

