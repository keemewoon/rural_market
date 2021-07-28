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
#registList {
	margin-left: 88%;
	position: relative;
	top: 70px;
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
							<h2>농촌체험-신청현황</h2>
							<h4>해당 체험명이름~</h4>
							<c:if test="${not empty id && id == 'farmer'}">
								<button type="button" class="btn btn-dark" id="registList" onclick="location.href='/rural/exp/addlist.do';">등록내역보기</button>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 구현부 -->


	<div class="favourite-place section-padding2">
	이거이거: ${dto.id == id}

		<div class="container">
			<div class="row justify-content-between">
					<div class="col-4">
						<input type="radio" id="applyList"><label for="applyList" style="margin-left: 15px;">전체선택</label>
					</div>
					<div class="col-5" style="text-align: right;">
						<select class="custom-select col-md-5" name="expInfo" required>
							<option selected>전체보기</option>
							<option value="1">승인 내역보기</option>
							<option value="2">미승인 내역보기</option>
						</select>
					</div>
			</div>

			<hr style="margin-top: 10px;">
			<table class="table text-center table-hover">
				<thead class="thead-light text-center">
					<tr>
						<th scope="col">선택</th>
						<th scope="col">이름</th>
						<th scope="col">성별</th>
						<th scope="col">나이</th>
						<th scope="col">신청인원</th>
						<th scope="col-1">내용</th>
						<th scope="col-1">연락처</th>
						<th scope="col-1">처리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td name="expInfo">신청인</td>
						<td name="startDate endDate">여자/남자</td>
						<td name="startDate endDate">20대</td>
						<td name="startDate endDate">2명</td>
						<td name="name"><button type="button" class="btn btn-primary btn-sm" onclick="">상세보기</button></td>
						<td name="tel">010-1234-5678</td>
						<td>승인</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td name="expInfo">신청인</td>
						<td name="startDate endDate">여자/남자</td>
						<td name="startDate endDate">20대</td>
						<td name="startDate endDate">2명</td>
						<td name="name"><button type="button" class="btn btn-primary btn-sm" onclick="">상세보기</button></td>
						<td name="tel">010-1234-5678</td>
						<td>승인</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td name="expInfo">신청인</td>
						<td name="startDate endDate">여자/남자</td>
						<td name="startDate endDate">20대</td>
						<td name="startDate endDate">2명</td>
						<td name="name"><button type="button" class="btn btn-primary btn-sm" onclick="">상세보기</button></td>
						<td name="tel">010-1234-5678</td>
						<td>승인</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td name="expInfo">신청인</td>
						<td name="startDate endDate">여자/남자</td>
						<td name="startDate endDate">20대</td>
						<td name="startDate endDate">2명</td>
						<td name="name"><button type="button" class="btn btn-primary btn-sm" onclick="">상세보기</button></td>
						<td name="tel">010-1234-5678</td>
						<td>승인</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td name="expInfo">신청인</td>
						<td name="startDate endDate">여자/남자</td>
						<td name="startDate endDate">20대</td>
						<td name="startDate endDate">2명</td>
						<td name="name"><button type="button" class="btn btn-primary btn-sm" onclick="">상세보기</button></td>
						<td name="tel">010-1234-5678</td>
						<td>승인</td>
					</tr>


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