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

.detailopen {
	/* background-color: red; */
	text-align: right;
	cursor: pointer;
}

.img {
	cursor: pointer;
}

.search {
	width: 600px;
	height: calc(2.25rem + 2px);
	padding: .375rem .75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

table tr th {
	width: 20%;
	text-align: center;
	background-color: #F5F5F5;
}

#btns {
	text-align: justify
}

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
							<h2>농작물 직거래</h2>
							<c:if test="${not empty id && id == 'farmer'}">
								<button type="button" class="btn btn-dark" id="registList"
									onclick="location.href='/rural/market/addlist.do';">등록내역보기</button>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- 검색기능 -->
	<div class="section-padding2">
		<div class="container">

			<table class="table table-bordered">
				<tr>
					<th>키워드 검색</th>
					<td><input type="text" class="form-control col-lg-13"
						placeholder="키워드를 입력해주세요."></td>

				</tr>
			</table>

			<div class="row justify-content-md-center"
				style="margin-bottom: 30px;">
				<input class="btn btn-success col-sm-2" type="button" value="SEARCH">
			</div>

			<%-- <c:if test="${not empty total}"> --%>
			<div class="alert alert-secondary" style="padding: 30px;">총${total}개의
				게시물이 있습니다.</div>
			<%-- </c:if> --%>

			<div class="favourite-place section-padding2">
				<div class="container">

					<div class="section-padding2">
						<div class="container">
							<ul class="nav nav-tabs" >
								<li class="nav-item"><a class="nav-link active" href="#">쌀/잡곡</a></li>
								<li class="nav-item"><a class="nav-link disabled" href="#">과일/견과</a></li>
								<li class="nav-item"><a class="nav-link disabled" href="#">채소/버섯</a></li>
								<li class="nav-item"><a class="nav-link disabled" href="#">정육/계란</a></li>
								<li class="nav-item"><a class="nav-link disabled" href="#">김치</a></li>
								<li class="nav-item"><a class="nav-link disabled" href="#">홍삼/건강식품</a></li>
								<li class="nav-item"><a class="nav-link disabled" href="#">전통주</a></li>
							</ul>


							<div class="row justify-content-between" style="padding: 15px; margin-top: 20px;">
								<div>
									<input type="radio" id="applyList"><label
										for="applyList" style="margin-left: 15px;">관심내역 보기 </label>
								</div>
								<button type="button" class="btn btn-success"
									onclick="location.href='/rural/market/add.do';">글쓰기</button>
							</div>



							<!-- Section Tittle -->

							<div class="row">


								<!-- 상품 리스트 -->
								<c:forEach items="${list}" var="dto">
									<div class="col-xl-4 col-lg-4 col-md-6">
										<div class="single-place mb-30">
											<div class="place-img">
												<img src="/rural/assets/img/market/${dto.image}"
													alt="sumnailImage"
													onclick="location.href='/rural/market/view.do?seq=${dto.seq}';"
													class="img">
											</div>
											<div class="place-cap">
												<div class="place-cap-top">
													<h3>
														<a href="/rural/market/view.do?seq=${dto.seq}">${dto.brandName}</a>
													</h3>



												</div>
												<div class="place-cap-bottom">
													<ul>
														<li>${dto.marketInfo}>${dto.name}</li>
													</ul>
													<ul>
														<div class="detailopen">
															<input type="button" class="btn btn-secondary"
																value="상세보기"
																onclick="location.href='/rural/market/view.do?seq=${dto.seq}';"></a>
														</div>
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