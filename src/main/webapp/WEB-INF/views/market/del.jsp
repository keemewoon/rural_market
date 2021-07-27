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
							<h2>카테고리명</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 구현부 -->
	<div class="section-padding2">
		<div class="container">




			<form method="POST" action="/rural/market/delok.do">
				<table class="alert alert-danger d-flex align-items-center">
					<tr>

						<td>${seq}번 게시물을 삭제합니다.</td>
					</tr>
				</table>

				<div class="btns">
					<button type="submit" class="btn btn-success">삭제하기</button>
					<button type="button" class="btn btn-secondary"
						onclick="location.href='/rural/market/view.do?seq=${seq}';">돌아가기</button>
				</div>

				<input type="hidden" name="seq" value="${seq}">

			</form>









		</div>


	</div>

	<%@ include file="/inc/footer.jsp"%>
	<%@ include file="/inc/init.jsp"%>

	<script>

	</script>
</body>
</html>