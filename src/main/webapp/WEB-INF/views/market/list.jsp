<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>슬기로운 농촌생활</title>

<%@ include file="/inc/asset.jsp"%>

<style>

	h3 {
		clear: both;
  		display: inline;
	}

</style>
</head>
<body>

	<!-- 홈화면에서 카테고리 들어갔을 처음 나오는 화면 -->
	<%@ include file="/inc/header.jsp"%>

	<!-- 이미지 카테고리명 -->
	<div class="slider-area ">
		<div class="single-slider slider-height2 d-flex align-items-center"
			data-background="/rural/assets/img/hero/about.jpg">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap">
							<h2>농작물 직거래</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section-padding2">
		<div class="container">
			<!-- 구현부 -->


			<div class="btns">
				<button type="button" class="btn btn-success"
					onclick="location.href='/rural/market/add.do';">글쓰기</button>
				<button type="button" class="btn btn-secondary"
					onclick="location.reload();">새로고침</button>
			</div>


			<div class="favourite-place place-padding">
				<div class="container">
					<!-- Section Tittle -->
					<div class="row">
						<div class="col-lg-12">
							<div class="section-tittle text-center"></div>
						</div>
					</div>
					<div class="row">


						<!-- 상품리스트 -->
						<c:forEach items="${list}" var="dto">
							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-place mb-30">
									<div class="place-img">
										<img src="/rural/assets/img/market/${dto.image}" alt="">
									</div>
									<div class="place-cap">
										<div class="place-cap-top">
											<h3><a href="/rural/market/view.do?seq=${dto.seq}">${dto.brandName}</a></h3>
												<span class="badge badge-info">new</span>



										</div>
										<div class="place-cap-bottom">
											<ul>
												<li>${dto.marketInfo}>${dto.name}</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>


					</div>
				</div>
			</div>









			<!-- 구현부 -->
		</div>
	</div>

	<%@ include file="/inc/footer.jsp"%>
	<%@ include file="/inc/init.jsp"%>

	<script>

	</script>
</body>
</html>