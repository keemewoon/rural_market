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

table>tbody>tr:nth-child(2)>th {
	width: 150px;
}

table>tbody>tr:nth-child(2)>td:nth-child(2) {
	width: 150px;
}

.tbl {


	/* padding: 1000px; */
	width: 700px;
	margin-botton: 30px;
}

.detail {
	height: 525px;
	width: 1150px;
	border: 1px solid #DEE2E6;
	padding: 40px;
}

.title {
	margin-top : 100px;
	margin-botton: 30px;
	font-weight: bold;
}

.maintitle {
	margin-bottom: 5px;
	font-weight: bold;
	color: #404040;
}

.date {
	color: #b0b0b0;
	text-align: right;
}

.btns {
	margin: 30px;
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


			<div class="favourite-place place-padding2">

				<table class="table">
					<tr>
						<th colspan="2"><h1 class="maintitle">${dto.brandName}</h1></th>
						<td class="date">${dto.regDate}</td>
					</tr>
				</table>
				<div class="row justify-content-md-center place-padding2">
					<table class="tbl justify-content-md-center">

							<th>분류</th>
							<td>${dto.marketInfo}>${dto.name}</td>
							<td></td>
						</tr>
						<tr>
							<th>번호</th>
							<td>${dto.tel}</td>
							<td></td>
						</tr>
						<tr>
							<th>담당자</th>
							<td>${dto.farmername}</td>
							<td></td>
						</tr>
						<tr>
							<th>홈페이지</th>
							<td>${dto.site}</td>
							<td></td>
						</tr>
						<tr>
							<th>좋아요</th>
							<td>좋아요</td>
							<td></td>
						</tr>
						<tr>
							<th>공유</th>
							<td>공유</td>
							<td></td>
						</tr>
					</table>
					<img src="/rural/assets/img/market/${dto.image}" class="img">
				</div>


				<table class="table">
					<tr>
						<th colspan="2"><h3 class="title">상세내용</h3></th>
					</tr>
				</table>
				<div class="row justify-content-md-center place-padding2">

					<div class="detail">${dto.detail}</div>
				</div>

				<c:if test="${not empty id}">
					<c:if test="${dto.id == id}">
						<div class="row justify-content-md-center" style="padding: 30px;">
							<button type="button" class="btn btn-success btns"
								onclick="location.href='/rural/market/edit.do?seq=${dto.seq}';">수정하기</button>
							<button type="submit" id="del" class="btn btn-secondary btns"
								onclick="location.href='/rural/market/del.do?seq=${dto.seq}';">삭제하기</button>
						</div>
					</c:if>
				</c:if>

				<table class="table">
					<tr>
						<th colspan="2"><h3 class="title" id="qna">문의 사항</h3></th>
					</tr>
				</table>





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