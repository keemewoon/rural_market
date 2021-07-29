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


	<div class="favourite-place section-padding2">
		<div class="container">
			<table class="table text-center table-hover">
				<thead class="thead-light text-center">
					<tr>
						<th scope="col">대분류</th>
						<th scope="col">작물명</th>
						<th scope="col">브랜드명</th>
						<th scope="col">관리</th>
						<th scope="col-1">비고</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${addlist}" var="dto">
						<tr>
							<td name="expInfo">${dto.marketInfo}</td>
							<td name="startDate endDate">${dto.name}</td>
							<td name="name">${dto.brandName}</td>
							<td>
								<button type="button" class="btn btn-secondary btn-sm" onclick="location.href='/rural/market/edit.do?seq=${dto.seq}';">수정하기</button>
								<button type="button" class="btn btn-danger btn-sm" onclick="location.href='/rural/market/del.do?seq=${dto.seq}';">삭제하기</button>
							</td>
							<td><button type="button" class="btn btn-primary btn-lg" onclick="location.href='/rural/market/view.do?seq=${dto.seq}#qna';">문의내역</button></td>
						</tr>
					</c:forEach>


				</tbody>
			</table>

		</div>

	</div>
	<!-- Favourite Places End -->





	<%@ include file="/inc/footer.jsp"%>
	<%@ include file="/inc/init.jsp"%>

	<script>

	</script>
</body>
</html>