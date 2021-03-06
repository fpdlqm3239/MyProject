<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact V4</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
<!--===============================================================================================-->

<style type="text/css">
	body {
	background-color: white;
}

.msg{
	color: red;
	display: none;
}
</style>
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" id="form" method="post" action="/vulnerability/requests/sendRequest">
				<span class="contact100-form-title">
					?????? ??????
				</span>
				<p style="color: black; font-size: 15px;">?????? : ${user.name}</p><br>
				<p style="color: black; font-size: 15px;">?????? : ${user.loginId}</p><br>
				<p style="color: black; font-size: 15px;">???????????? :  ${user.phone}</p><br><br>
				

				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span style="color: black; font-size: 15px;" class="label-input100">????????? ?????? ??????</span>
					<input class="input100" type="text" name="userAccount" id="systemUser" >
					<span class="focus-input100"></span>
				</div>
				<div class="msg" id="userAccount">????????? ?????? ????????? ??????????????????</div>
				<br>

				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span style="color: black; font-size: 15px;" class="label-input100">????????? ?????? ????????????</span>
					<input class="input100" type="text" name="userPassword" id="systemUserPass">
					<span class="focus-input100"></span>
				</div>
				<div class="msg" id="userPass">????????? ?????? ??????????????? ??????????????????</div>
				<br>

				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span style="color: black; font-size: 15px;" class="label-input100">????????? Root ????????????</span>
					<input class="input100" type="text" name="rootPassword" id="systemRootPass">
					<span class="focus-input100"></span>
				</div>
				<div class="msg" id="rootPass">????????? root ??????????????? ??????????????????</div>
				<br>

				<div class="wrap-input100 input100-select">
					<span class="label-input100">????????????(OS)</span>
					<div>
						<select class="selection-2" name="os">
							<option>Window</option>
							<option>Linux</option>
							<option>Solaris</option>
				
						</select>
					</div>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 input100-select">
					<span class="label-input100">Budget</span>
					<div>
						<select class="selection-2" name="budget">
							<option>Select Budget</option>
							<option>1500 $</option>
							<option>2000 $</option>
							<option>2500 $</option>
						</select>
					</div>
					<span class="focus-input100"></span>
				</div>

				

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button id="requestBtn" type="button" class="contact100-form-btn">
							<span>
								?????? ????????????
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
							</span>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
 
  
  $("#requestBtn").click(function() {
	  
	  $(".msg").hide();
	 
	  if($("#systemUser").val() == ""){
		  $("#userAccount").show();	
		  return;
  		}
	  
	  if($("#systemUserPass").val() == ""){
		  $("#userPass").show();
		  return;
	  }
	  
	  if($("#systemRootPass").val() == ""){
		  $("#rootPass").show();
		  return;
	  }
	  
	  $("#form").submit();
	  
	  
  })
</script>



</body>
</html>
