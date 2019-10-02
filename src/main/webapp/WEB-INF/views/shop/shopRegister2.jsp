<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Shop Registration</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="/beaudafest/resources/img/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/beaudafest/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/beaudafest/resources/font/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/beaudafest/resources/font/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/beaudafest/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/beaudafest/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/beaudafest/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/beaudafest/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/beaudafest/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/beaudafest/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="/beaudafest/resources/css/main.css">
<!--===============================================================================================-->
</head>
<script src='/beaudafest/resources/js/jquery.min.js'></script>
<script type="text/javascript">
	$(function() {
		$('#signUp').click(function(){
			//휴무일
			var shopOff="";
			var check=$("input[name=shopOffCheck]:checked");
			check.each(function(idx, size){
				if(idx==(check.length-1)){
					shopOff+=$(this).val();
				} else{
					shopOff+=$(this).val()+",";
				}
			});
			$('#shopOff').val(shopOff);
			
			//샵 주소
			var shopAddr="";
			var addr=$("select[name=shopAddrBox] option:selected");
			addr.each(function(idx, size){
				if(idx<addr.length-1){
					shopAddr+=$(this).val()+" ";
				} else{
					shopAddr+=$(this).val()+" "+$("input[name=shopAddrDetail]").val();
				}
			});
			$('#shopAddr').val(shopAddr);
			$('.validate-form').submit();
		});
	});
</script>
<body>
	<div>
		<%@ include file="../include/nav.jsp"%>
	</div>
	<br>
	<br>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="shopJoin" method="post">
					<span class="login100-form-title p-b-26"> Welcome </span> <span
						class="login100-form-title p-b-26"> <strong>BEAUDA</strong><img
						src="/beaudafest/resources/img/heart.png" width="30" height="30"
						class="d-inline-block align-top" alt=""> FEST
					</span> <span class="login100-form-title p-b-26"> Shop Register</span>


					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="shopName"> <span
							class="focus-input100" data-placeholder="Shop Name"></span>
					</div>



					<div class="wrap-input100 validate-input">
						<input class="input100" type="tel" name="shopPhone"> <span
							class="focus-input100" data-placeholder="Shop 전화번호"></span>
					</div>

					Shop 주소
					<hr>

					<div class="row">

						<div class="col-md-4">

							<div class="form-group">
								<select class="input100" required name="shopAddrBox">
									<option>select</option>
									<option>서울시</option>
								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<select class="input100" required name="shopAddrBox">
									<option>select</option>
									<option>강남구</option>
								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<select class="input100" required name="shopAddrBox">
									<option>select</option>
									<option>서초동</option>
								</select>
							</div>
						</div>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="shopAddrDetail"> <span
							class="focus-input100" data-placeholder="상세주소"></span>
					</div>


					Shop 시작시간
					<div class="wrap-input100 validate-input">
						<input class="input100" type="time" name="shopOpen">
					</div>

					Shop 종료시간
					<div class="wrap-input100 validate-input">
						<input class="input100" type="time" name="shopClose">
					</div>

					Shop 휴무요일
					<hr>

					<div class="form-group row">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox1" value="월" name="shopOffCheck"> <label
								class="form-check-label" for="inlineCheckbox1">월</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox2" value="화" name="shopOffCheck"> <label
								class="form-check-label" for="inlineCheckbox2">화</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox2" value="수" name="shopOffCheck"> <label
								class="form-check-label" for="inlineCheckbox2">수</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox2" value="목" name="shopOffCheck"> <label
								class="form-check-label" for="inlineCheckbox2">목</label>
						</div>
					</div>
					<div class="form-group row">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox2" value="금" name="shopOffCheck"> <label
								class="form-check-label" for="inlineCheckbox2">금</label>
						</div>

						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox2" value="토" name="shopOffCheck"> <label
								class="form-check-label" for="inlineCheckbox2">토</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox2" value="일" name="shopOffCheck"> <label
								class="form-check-label" for="inlineCheckbox2">일</label>
						</div>
					</div>
					<br> 주차유무
					<hr>

					<div class="form-group">
						<select class="input100" required name="shopParking">
							<option>select</option>
							<option value="0">없음</option>
							<option value="1">1대 이상</option>
							<option></option>
						</select>
					</div>
					<br> 취소 정책
					<hr>

					<div class="form-group">
						<select class="input100" required name="shopPolicy">
							<option>select</option>
							<option>하루전날까지</option>
							<option>취소불가</option>
							<option></option>
						</select>
					</div>
						<br>
					Shop사진
					<hr>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
						</div>
						<div class="custom-file">
							<input type="file" class="custom-file-input"
								id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
							<label class="custom-file-label" for="inputGroupFile01">Choose
								file</label>
						</div>
					</div>
					
					<br>
					<div class="wrap-input100 validate-input">
						<textarea class="input100" name="shopIntro" cols="10" style="resize:none;" ></textarea>
						<span
							class="focus-input100" data-placeholder="Shop 소개"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button type="button" class="login100-form-btn" id="signUp">Sign Up</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1"> Do you have an account? </span> <a
							class="txt2" href="#"> Log In </a>
					</div>
					<input type="hidden" name="shopOff" id="shopOff" value="">
					<input type="hidden" name="shopAddr" id=shopAddr value="">
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="/beaudafest/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="/beaudafest/resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="/beaudafest/resources/vendor/bootstrap/js/popper.js"></script>
	<script src="/beaudafest/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="/beaudafest/resources/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="/beaudafest/resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="/beaudafest/resources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="/beaudafest/resources/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="/beaudafest/resources/js/main.js"></script>


</body>
</html>