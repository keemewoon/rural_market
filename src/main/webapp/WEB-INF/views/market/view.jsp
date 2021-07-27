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
.img {
	/* border: 1px solid black; */

}

.tbl {
	display: inline;
	height: 1000px;
	width: 600px;
/* 	border: 1px solid red; */
	margin-right: 200px;
	margin-botton: 1000px;
}

.detail {
	height: 525px;
	width: 1000px;
	border: 1px solid #F0F1F2;
	padding: 40px;
}

.title {
	margin-botton: 30px;
	font-weight: bold;
}

.maintitle {
	margin-bottom: 5px;
	font-weight: bold;
}

.date {
	width: 1000px;
	margin-bottom: 20px;
	color: #b0b0b0;
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


			<div class="favourite-place place-padding">
				<div align="right" class="date">${dto.regDate}</div>
				<table class="ta">

					<table class="tbl">
						<tr>
							<th><h1 class="maintitle">${dto.brandName}</h1></th>
						</tr>
						<tr>
							<th>분류</th>
							<td>${dto.marketInfo}> ${dto.name}</td>
						</tr>
						<tr>
							<th>번호</th>
							<td>${dto.tel}</td>
						</tr>
						<tr>
							<th>담당자</th>
							<td>${dto.farmername}</td>
						</tr>
						<tr>
							<th>홈페이지</th>
							<td>${dto.site}</td>
						</tr>
						<tr>
							<th>좋아요</th>
							<td>좋아요</td>
						</tr>
						<tr>
							<th>공유</th>
							<td>공유</td>
						</tr>
					</table>
					<img src="/rural/assets/img/market/${dto.image}" class="img">



				</table>

				<h3 class="title">상세내용</h3>
				<div class="detail">${dto.detail}</div>



				<button type="button" class="btn btn-success"onclick="location.href='/rural/market/edit.do?seq=${dto.seq}';">수정하기</button>
				<button type="submit" id="del" class="btn btn-secondary" onclick="location.href='/rural/market/del.do?seq=${dto.seq}';">삭제하기</button>







			</div>
		</div>


	</div>

	<%@ include file="/inc/footer.jsp"%>
	<%@ include file="/inc/init.jsp"%>

	<script>

	/* 	$('#del').click(function() {
			alert('ㅎㅇㅎㅇ');
		});
 */
	</script>
</body>
</html>