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
	<!-- 구현부 -->
	<div class="section-padding2">
		<div class="container">


			<table class="table">
				<tr>
					${dto.brandName}
					<th>분류</th>
					<td>${dto.marketInfo}</td>
				</tr>
				<tr>
					<th>제품명</th>
					<td>${dto.name}</td>

				</tr>

				<tr>
					<th>홈페이지</th>
					<td>${dto.site}</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${dto.tel}</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>${dto.address}</td>

				</tr>
				<tr>
					<th>상세내용</th>
					<td>${dto.detail}</td>
				</tr>



			</table>





		</div>


	</div>

	<%@ include file="/inc/footer.jsp"%>
	<%@ include file="/inc/init.jsp"%>

	<script>

	</script>
</body>
</html>