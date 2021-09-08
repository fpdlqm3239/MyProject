<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function successLogin(){
    let msg= "로그인에 성공하였습니다";
    alert(msg);
    window.location.href = "/vulnerability/admins/request";
}
successLogin();
</script>
</body>
</html>