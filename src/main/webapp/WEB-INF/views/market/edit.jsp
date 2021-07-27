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
	margin-bottom: 50px;
	font-weight: bold;
}

.table #detail {
	height: 300px;
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
	<!-- 구현부 -->
	<div class="section-padding2">
		<div class="container">


			<form method="POST" action="/rural/market/editok.do">
				<h3>수정 하기</h3>
				<table class="table">
					<tr>
						<th>분류</th>
						<td colspan="3"><select name="marketInfo" id="marketInfo"
							class="form-control form-control-sm">
								<option value="쌀/잡곡">쌀/잡곡</option>
								<option value="과일/견과">과일/견과</option>
								<option value="채소/버섯">채소/버섯</option>
								<option value="정육/계란">정육/계란</option>
								<option value="김치">김치</option>
								<option value="홍삼/건강식품">홍삼/건강식품</option>
								<option value="전통주">전통주</option>
						</select>
					</tr>
					<tr>
						<th>제품명</th>
						<td colspan="3"><input type="text" name="name" id="name"
							class="form-control" required value="${dto.name}"></td>
					</tr>
					<tr>
						<th>브랜드명</th>
						<td colspan="3"><input type="text" name="brandName"
							id="brandName" class="form-control" required
							value="${dto.brandName}"></td>
					</tr>
					<tr>
						<th>홈페이지</th>
						<td colspan="3"><input type="text" name="site" id="site"
							class="form-control" required value="${dto.site}"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td colspan="3"><input type="text" name="tel" id="tel"
							class="form-control" required value="${dto.tel}">
						<td></td>
					</tr>
					<tr>
						<th>주소</th>
						<td colspan="2"><input type="text" name="address"
							id="address" class="form-control" required value="${dto.address}"></td>
						<td><input type="button" value="주소찾기"
							class="btn btn-secondary"></td>

					</tr>
					<tr>
						<th>상세내용</th>
						<td colspan="3"><textarea name="detail" id="detail"
								class="form-control" required>${dto.detail}</textarea></td>
					</tr>
					<tr>
						<th>썸네일 이미지 첨부</th>
						<td colspan="3"><input type="file" name="image" id="image"
							class="form-control" required accept=".gif, .jpg, .png"
							value="${dto.image}"></td>
					</tr>
					<tr>
						<th>세부 이미지 첨부</th>
						<td colspan="3"><input type="file" name="image" id="image"
							class="form-control" required accept=".gif, .jpg, .png"></td>
					</tr>


				</table>

				<div class="btns">
					<button type="submit" class="btn btn-success">수정하기</button>
					<button type="button" class="btn btn-secondary"
						onclick="location.href='/rurla/market/list.do';">뒤로가기</button>
				</div>

				<input type="hidden" name="seq" value="${dto.seq}">

			</form>

		</div>


	</div>

	<%@ include file="/inc/footer.jsp"%>
	<%@ include file="/inc/init.jsp"%>

	<script>

		$('#marketInfo').val("${dto.marketInfo}");

	</script>
</body>
</html>