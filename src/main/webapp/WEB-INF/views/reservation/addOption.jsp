<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>



<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900"
	rel="stylesheet">
<script type="text/javascript">


</script>
</head>
<body>
	<c:choose>
		<c:when test="${memberStatus eq null}">
			<%@ include file="../include/nav.jsp"%>
		</c:when>
		<c:when test="${memberStatus eq 0}">
			<%-- 일반회원일때 --%>
			<%@ include file="../include/memberNav.jsp"%>
		</c:when>
		<c:when test="${memberStatus eq 1}">
			<%-- 오너회원일때 --%>
			<%@ include file="../include/ownerNav.jsp"%>
		</c:when>
		<c:otherwise>
			<%-- 회원이아닐때 (로그인X) --%>
			<%@ include file="../include/nav.jsp"%>
		</c:otherwise>
	</c:choose>
	<br>
	<br>
	<br>
	<div class="container">
		<section class="jumbotron text-center"
			style="background-color: #fbceb1">
			<div class="container">
				<h1 class="jumbotron-heading">NAMDAREUM</h1>
				<p class="lead text-muted">최고의 디자인이 어쩌고 블라 샵 코멘트</p>

			</div>
		</section>
		<!-- 메뉴 NAV -->
		<div class="nav-scroller py-1 mb-2">
			<nav class="nav d-flex justify-content-between">
				<a class="p-2 text-muted"
					href="../shopDetail/${couponList.get(0).shopNum }">INFO</a> <a
					class="p-2 text-muted" href="#">COUPON</a> <a
					class="p-2 text-muted" href="#">REVIEW</a>
			</nav>
		</div>
		<hr>
		<div class="container marketing">
			<div class="row mb-2">
				<div class="col-md-6">
					<div
						class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
						<div class="col p-4 d-flex flex-column position-static">
							<strong class="d-inline-block mb-2 text-primary">DESIGN</strong>
							<h3 class="mb-0">${designName }</h3>
							<%--선택한 디자인 이름 --%>
							<strong class="d-inline-block mb-2 text-primary">Price</strong>
							<div class="mb-1 text-muted">${designPrice }원</div>
							<%--선택한 디자인 가격 --%>
							<strong class="d-inline-block mb-2 text-primary">Time</strong>
							<p class="card-text mb-auto">${designTime }mins</p>
							<%--시술시간--%>

						</div>
						<div class="col-auto d-none d-lg-block">
							<img src="/beaudafest/resources/couponPhoto/${selectedPhoto }"
								width="200" height="250">

							<%--사진 넣어주기 --%>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<h4 class="mb-3">OPTION 추가</h4>
					<hr>

					<div class="d-block my-3">
						<c:forEach items="${addOption }" var="radio" varStatus="i">
							<div class="custom-control custom-radio">
								<input id="credit" name="paymentMethod" type="radio"
									class="custom-control-input" value="${radio.designTime }" checked required> <label
									class="custom-control-label" for="credit">${radio.designName }
									: <span>${radio.designTime }분 </span><span> ${radio.designPrice}원</span></label>
							</div>
						</c:forEach>
						<hr>
						<br> <br>

						<h4 class="mb-3">총 소요시간:</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>