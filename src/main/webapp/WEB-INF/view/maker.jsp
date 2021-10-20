<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<style>

@font-face {
    font-family: 'IM_Hyemin-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2106@1.1/IM_Hyemin-Bold.woff2') format('woff');
    font-weight: normal;
    font-style: normal;
}

.teamName{
	position: absolute;
	
	transform: translate(-50%,-50%);
	left: 50%;
	top: 20%;
	
}	
p{
	font-size: 50px;
	color: black;
	font-family: IM_Hyemin-Bold;
	font-style: inherit;
	
}

table.type07 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border: 1px solid #ccc;
  margin: 20px 10px;
  position: absolute;
	transform: translate(-50%,-50%);
	top: 40%;
	left: 50%;

  
}
table.type07 thead {
  border-right: 1px solid #ccc;
  border-left: 1px solid #ccc;
  background: #e7708d;
}
table.type07 thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #fff;
}
table.type07 tbody th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #fcf1f4;
}
table.type07 td {
  width: 500px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	</head>
	<body>
	<div class="wrapp">
	<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
	
	<div class="teamName">
		<p>팀명 : Checker</p>
	</div>
	<table class="type07">
  <thead>
  <tr>
    <th scope="cols">팀원</th>
    <th scope="cols">담당</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <th scope="row">조서연(팀장)</th>
    <td>ㅎㅎㅎㅎㅎㅎ</td>
  </tr>
  <tr>
    <th scope="row">김성한</th>
    <td>ㅋㅋㅋㅋㅋㅋㅋㅋㅋ</td>
  </tr>
  <tr>
    <th scope="row">김예리</th>
    <td>내용이 들어갑니다.</td>
  </tr>
  <tr>
    <th scope="row">이윤지</th>
    <td>내용이 들어갑니다.</td>
  </tr>
  <tr>
    <th scope="row"></th>
    <td>내용이 들어갑니다.</td>
  </tr>
  </tbody>
</table>
</div>
<jsp:include page="/WEB-INF/view/template/footer.jsp"></jsp:include>
	</body>
</html>
