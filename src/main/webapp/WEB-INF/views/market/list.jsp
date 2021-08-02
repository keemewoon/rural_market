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

.place-img {
    object-fit: cover;
	width: 350px;
	height: 418px;
	overflow: hidden;
	border: 1px solid #f0f1f2;
	text-align: center;
	cursor:pointer;
}

.favourite-place .single-place .place-img img {
	object-fit: cover;
	width: auto;
	height: 100%;
	text-aling: center;
	-webkit-transform: scale 1;
	-moz-transform: scale 1;
	-ms-transform: scale 1;
	-o-transform: scale 1;
	transform: scale 1;
	transition: all 0.5s ease-out 0s;
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

.nav-item {
	cursor: pointer;
}

.like {
	width: 48px;
	height: 45px;
}

.pagebar {
	text-align: center;
	display: block;
	border: 1px solid red;
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

							<c:if test="${not empty id &&  lv == 2}">
								<button type="button" class="btn btn-dark" id="registList"
									onclick="location.href='/rural/market/addlist.do?id=${dto.id}';">등록내역보기</button>
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

			<form method="GET" action="/rural/market/list.do">
				<table class="table table-bordered">
					<tr>
						<th>키워드 검색</th>
						<td><input type="text" id="search" name="search"
							class="form-control col-lg-13" placeholder="검색어를 입력해주세요."></td>
					</tr>
				</table>

				<div class="row justify-content-md-center"
					style="margin-bottom: 30px;">
					<input class="btn btn-success col-sm-2" type="submit"
						value="SEARCH">
				</div>
			</form>

			<c:if test="${map.isSearch == 'y' && map.marketinfo == null}">
				<div class="alert alert-secondary" style="padding: 30px;">'${map.search}'으로
					검색한 결과 ${list.size()}개의 게시물이 있습니다.</div>
			</c:if>


			<div class="favourite-place section-padding2">
				<div class="container">

					<!-- 		list.do?category=주말농장&search=키워드
			list.do?category=주말농장&search=키워드&avilable=y -->

					<div class="section-padding2">
						<div class="container">


							<form name="navsearch" method="GET"
								action="/rural/market/list.do">

								<!-- MarketInfo 메뉴 -->
								<form method="GET" action="/rural/market/list.do">
								<div id="menubox">
									<ul class="nav nav-tabs" id="navibar">
										<li class="nav-item"><a class="nav-link active"
											href="/rural/market/list.do">전체보기</a></li>
										<li class="nav-item"><a class="nav-link active"
											href="/rural/market/list.do?marketinfo=쌀/잡곡&search=${ search }">
												쌀/잡곡</a></li>
										<li class="nav-item"><a class="nav-link active"
											href="/rural/market/list.do?marketinfo=과일/견과&search=${ search }">
												과일/견과</a></li>
										<li class="nav-item"><a class="nav-link active"
											href="/rural/market/list.do?marketinfo=채소/버섯&search=${ search }">
												채소/버섯</a></li>
										<li class="nav-item"><a class="nav-link active"
											href="/rural/market/list.do?marketinfo=정육/계란&search=${ search }">
												정육/계란</a></li>
										<li class="nav-item"><a class="nav-link active"
											href="/rural/market/list.do?marketinfo=김치&search=${ search }">
												김치</a></li>
										<li class="nav-item"><a class="nav-link active"
											href="/rural/market/list.do?marketinfo=홍삼/건강식품&search=${ search }">
												홍삼/건강식품</a></li>
										<li class="nav-item"><a class="nav-link active"
											href="/rural/market/list.do?marketinfo=전통주&search=${ search }">
												전통주</a></li>
									</ul>
								</div>
							</form>


							<div class="row justify-content-between"
								style="padding: 15px; margin-top: 20px;">
								<!-- 관심내역 라디오박스 -->
								<form method="GET" action="/rural/market/likelist.do">
								<div>
									<input type="checkbox" id="applyList"><label for="applyList" style="margin-left: 15px;">관심내역 보기 </label>
								</div>
								</form>

								<c:if test="${not empty id &&  lv == 2}">
								<button type="button" class="btn btn-success"
									onclick="location.href='/rural/market/add.do';">글쓰기</button>
								</c:if>
							</div>



							<!-- Section Tittle -->

							<div class="row">


								<!-- 상품 리스트 -->
								<c:if test="${list.size() == 0}">
									<div>
										<div class=" alert alert-light "
											style="padding: 30px; text-align: center;">직거래 내역이
											없습니다.</div>
									</div>
								</c:if>


									<c:forEach items="${list}" var="dto">
										<div class="col-xl-4 col-lg-4 col-md-6" style=" display: block;">
											<div class="single-place mb-30">
												<div class="place-img">
													<img src="/rural/assets/img/market/${dto.image}" alt="image"
														onclick="location.href='/rural/market/view.do?seq=${dto.seq}';"
														class="img">
												</div>
												<div class="place-cap">
													<div class="place-cap-top d-flex">
														<h3>
															<a href="/rural/market/view.do?seq=${dto.seq}">${dto.brandName}</a>
														</h3>

														<!-- 좋아요 기능 -->
														<c:if test="${not empty dto.seq && dto.seq == dto.seq}">
															<img src="/rural/assets/img/market/unlike.png"
																id="unlike" name="unlike" class='ml-auto p-2 like'
																onclick="location.href='/rural/market/likeok.do?seq=${dto.seq}';">
														</c:if>
														<c:if test="${empty dto.seq}">
															<img src="/rural/assets/img/market/like.png" id="like"
																name="like" class='ml-auto p-2 like'
																onclick="location.href='/rural/market/likeok.do?seq=${dto.seq}';">
														</c:if>
														<input type="hidden" name="seq" value="${dto.seq}">

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

									<!-- 페이징바 -->
									<div class="row justify-content-md-center" style="width: 100%">${pagebar}</div>

								</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>

	<%@ include file="/inc/footer.jsp"%>
	<%@ include file="/inc/init.jsp"%>

	<script>

		<c:if test="${map.isSearch == 'y'}">
			//상태 복원
			$('#search').val('${map.search}');
		</c:if>



	</script>
</body>
</html>