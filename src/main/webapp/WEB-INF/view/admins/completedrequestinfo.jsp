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
						<a href="/vulnerability/admins/request">���� ���ܿ�û</a>
					</li>
					<li>
						<a href="/vulnerability/admins/completedRequest">�Ϸ�� ���ܿ�û</a>
					</li>
					<li>
						<a href="#">MENU3</a>
					</li>
					<li>
						<a href="#">MENU4</a>
					</li>
					<li class="login-btn">
						<a href="/vulnerability/logout">�α׾ƿ�</a>
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
							<strong>ȸ�� ����</strong>
							
						</h2>
					</div>
					<div class="sub_table fl" style="color: black;">
						<p>�̸� : ${user.name}</p>
						<p>���� : ${user.loginId}</p>
						<p>����ó : ${user.phone}</p>
						<p>���� �Ϸ��� : ${result.createDate}</p>
					</div>
				</div>
				<div class="sub_contents clearfix">
					<div class="sub_title fl">
						<h2>
							<strong>���� ���</strong>
							
						</h2>
					</div>
					<div class="sub_table fl">
						<table>
							<col width="120px"><col width="120px"><col width="120px"><col width="120px"><col width="120px"><col width="120px"><col width="120px">
 							<thead>
								<tr class="bdln bdrn">
									<th class="bdln" >ȣ��Ʈ</th>
									<th>��ü�׸�</th>
									<th>�����׸�</th>
									<th>����</th>
									<th>�κ� ����</th>
									<th>�Ҹ���</th>
									<th>N/A</th>
									<th class="bdrn">��������</th>
									
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
							<strong>�� ���</strong>
							
						</h2>
					</div>
					<div class="sub_table fl">
						<table>
							<col width="100px"><col width="100px"><col width="90px"><col width="150px"><col width="200px"><col width="250px">
 							<thead>
								<tr class="bdln bdrn">
									
									<th class="bdln">�з�</th>
									<th>�׸� �ڵ�</th>
									<th>���� �׸�</th>
									<th>�߿䵵</th>
									<th>���� ��Ȳ</th>
									<th>���� ���</th>
									<th class="bdrn">��ġ ����</th>
									
									
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

