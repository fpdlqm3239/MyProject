<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
@font-face {
    font-family: 'NanumBarunpen';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumBarunpen.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
html,body {

   margin: 0;
   padding: 0;
   width: 100%;
   height: 100%;

   

}

.wrapp{
	height:auto;
    min-height: 100%;
    padding-bottom: 300px;

}

.footer {   

width: 100%;  
height: 300px;
font-size: 20px;
position: relative;
transform: translateY(-100%);
font-family: NanumBarunpen;
color: black;

      		
      		
      		
      }
 
 
 .footerDiv{
 	width: 45%;
 	
 	text-align: center;
 	
 	float: left;
 
 	
 }
 
 .footerDiv2{
 	width: 30%;
 	
 	text-align: left;
 	
 	float: left;
 
 	
 }
 
 .footerDiv3{
 	width: 20%;
 	
 	text-align: left;
 	
 	float: left;
 
 	
 }
 
 .map{
 	text-decoration: none;
 	
 }
 
 .map:visited {
	text-decoration: none;
}
 
 
</style>
<title>Insert title here</title>
</head>
<body>

  <div class="footer">
  <hr>
  <div class="footerDiv">
  	
<img width="250px" height="250px" alt="checker" src="${pageContext.request.contextPath}/resources/images/checker.jpg">
</div>


  	<div class="footerDiv2">
  	
	<br>
상호 : Checker <br><br>
대표 : 조서연 <br><br>
주소 : 경기도 고양시 덕양구 동헌로 305 <br><br>
<br><br><br>
Copyright© 2021.Checker All rights reserved.
</div>

<div class="footerDiv3">
  	
	<br>
<a target="_blank" href="https://www.joongbu.ac.kr/menu.es?mid=a10107010000">오시는 길</a> <br> <br><br>
<a href="maker">제작자</a>
</div>

</div>
</body>
</html>