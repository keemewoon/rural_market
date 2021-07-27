<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>슬기로운 농촌생활</title>

<%@ include file="/inc/asset.jsp" %>

<style>

</style>
</head>
<body>
	<!-- index.jsp -->
	<%@ include file="/inc/header.jsp" %>
	 <main>

        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active">
                <div class="single-slider hero-overly slider-height d-flex align-items-center" data-background="assets/img/hero/04.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-9 col-lg-9 col-md-9">
                                <div class="hero__caption">
                                    <h1>Explore rural<span> Korea!</span> </h1>
                                    <p>어떤 서비스를 찾으시나요?</p>
                                </div>
                            </div>
                        </div>
                        <!-- Search Box -->
                        <div class="row">
                            <div class="col-xl-12">
                                <!-- form -->
                                <form action="#" class="search-box">
                                    <div class="input-form mb-30">
                                        <input type="text" placeholder="어떤 서비스를 찾으시나요?">
                                    </div>
                                    <div class="select-form mb-30">
                                        <div class="select-itms">
                                            <select name="select" id="select1">
                                                <option value="">일손돕기</option>
                                                <option value="">농촌체험</option>
                                                <option value="">주말농장</option>
                                                <option value="">농산물 직거래</option>
                                                <option value="">커뮤니티</option>
                                                <option value="">알림마당</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="search-form mb-30">
                                        <a href="#">Search</a>
                                    </div>	
                                </form>	
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
        
        <!-- Favourite Places Start -->
        <div class="favourite-place place-padding">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>농촌생활을 즐겨봐요!</span>
                            <h2>농촌체험</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                   
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services4.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.0</span> </span>
                                    <h3><a href="#">농촌체험</a></h3>
                                    
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="fas fa-map-marker-alt"></i>농촌체험지역명</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                 
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services4.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.0</span> </span>
                                    <h3><a href="#">농촌체험</a></h3>
                                    
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="fas fa-map-marker-alt"></i>농촌체험지역명</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services4.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.0</span> </span>
                                    <h3><a href="#">농촌체험</a></h3>
                                    
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="fas fa-map-marker-alt"></i>농촌체험지역명</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Favourite Places End -->
              
        <!-- Blog Area Start -->
        <div class="home-blog-area section-padding2">
            <div class="container">
                <div class="row">
                    <!-- 일손돕기 -->
                    <div class="col-xl-6 col-lg-6 col-md-6  worker">
                         <!-- Section Tittle -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="section-tittle text-center">
                                        <span>땀흘려 일하고 농촌 살리기</span>
                                        <h2>일손돕기</h2>
                                    </div>
                                </div>
                            </div>
                        <div class="home-blog-single mb-30">
                            
                            <table class="table table-bordered">
                                <input type="button" value="next" onclick="location.href='';">
                                    <tr>
                                        <th>지역</th>
                                        <th>글쓴이</th>
                                        <th>제목</th>
                                    </tr>
                                    <tr>
                                        <td>김농주</td>
                                        <td>지역안에서 순환하는 농업</td>
                                        <td>강원도 감자</td>
                                    </tr>
                                    <tr>
                                        <td>김농주</td>
                                        <td>지역안에서 순환하는 농업</td>
                                        <td>강원도 감자</td>
                                    </tr>
                                    <tr>
                                        <td>김농주</td>
                                        <td>지역안에서 순환하는 농업</td>
                                        <td>강원도 감자</td>
                                    </tr>
                                    <tr>
                                        <td>김농주</td>
                                        <td>지역안에서 순환하는 농업</td>
                                        <td>강원도 감자</td>
                                    </tr>
                                    <tr>
                                        <td>김농주</td>
                                        <td>지역안에서 순환하는 농업</td>
                                        <td>강원도 감자</td>
                                    </tr>
                            </table>
                        </div>
                    </div>

                    <!-- 주말농장 -->
                    <div class="col-xl-6 col-lg-6 col-md-6 weekend">
                          <!-- Section Tittle -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="section-tittle text-center">
                                    <span>농장을 직접 가꾸어보아요!</span>
                                    <h2>주말농장</h2>
                                </div>
                            </div>
                        </div>
                        <div class="home-blog-single mb-30">
                            <table class="table table-bordered">
                                <input type="button" value="next" onclick="location.href='';">
	                                <tr>
	                                    <th>글쓴이</th>
	                                    <th>제목</th>
	                                    <th>지역</th>
	                                </tr>
	                                <tr>
	                                    <td>김농주</td>
	                                    <td>지역안에서 순환하는 농업</td>
	                                    <td>강원도 감자</td>
	                                </tr>
	                                <tr>
	                                    <td>김농주</td>
	                                    <td>지역안에서 순환하는 농업</td>
	                                    <td>강원도 감자</td>
	                                </tr>
	                                <tr>
	                                    <td>김농주</td>
	                                    <td>지역안에서 순환하는 농업</td>
	                                    <td>강원도 감자</td>
	                                </tr>
	                                <tr>
	                                    <td>김농주</td>
	                                    <td>지역안에서 순환하는 농업</td>
	                                    <td>강원도 감자</td>
	                                </tr>
	                                <tr>
	                                    <td>김농주</td>
	                                    <td>지역안에서 순환하는 농업</td>
	                                    <td>강원도 감자</td>>
	                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog Area End -->
    </main>
    
    <%@ include file="/inc/footer.jsp" %>
	<%@ include file="/inc/init_index.jsp" %>
	
	<script>
	
	</script>
</body>
</html>