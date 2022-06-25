<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page import="java.util.*"%> <%@ page import="vo.*"%>
<%@ include file="./com/_header.jsp"%>
<link href="<%=cssSrc%>carousel.css" rel="stylesheet" />
<% HotelInfo hotelInfo = (HotelInfo) request.getAttribute("hotelInfo"); TourInfo
tourInfo = (TourInfo) request.getAttribute("tourInfo"); FoodInfo foodInfo =
(FoodInfo) request.getAttribute("foodInfo"); String test = (String)
request.getAttribute("test"); Common common = new Common(); %>

<style>
    .bg-caption {
        background: rgba(255, 255, 255, 0.4);
        width: 1120px;
        left: 0;
        padding: 20px 40px;
    }
</style>
<main class="main">
    <!--  슬라이드 배너  -->
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button
                type="button"
                data-bs-target="#myCarousel"
                data-bs-slide-to="0"
                class=""
                aria-label="Slide 1"
            ></button>
            <button
                type="button"
                data-bs-target="#myCarousel"
                data-bs-slide-to="1"
                aria-label="Slide 2"
                class=""
            ></button>
            <button
                type="button"
                data-bs-target="#myCarousel"
                data-bs-slide-to="2"
                aria-label="Slide 3"
                class="active"
                aria-current="true"
            ></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item">
                <a
                    href="hotel_view.hotel?hotel_code=A0059&sdate=2021-07-08&name=하모니&edate=2021-07-09"
                >
                    <img
                        src="<%=mainImgSrc%>bg_main_visual_haevichi_resort.jpg"
                        height="512"
                    />
                    <svg
                        class="bd-placeholder-img"
                        width="100%"
                        height="100%"
                        xmlns="http://www.w3.org/2000/svg"
                        aria-hidden="true"
                        preserveAspectRatio="xMidYMid slice"
                        focusable="false"
                    >
                        <rect width="100%" height="100%" fill="#777"></rect>
                    </svg>

                    <div class="container">
                        <div class="carousel-caption text-start bg-caption">
                            <h1>하모니리조트asd</h1>
                            <p>협재해변 인근!</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="carousel-item">
                <a
                    href="hotel_view.hotel?hotel_code=A0055&sdate=2021-07-08&name=대성&edate=2021-07-09"
                >
                    <img
                        src="<%=mainImgSrc%>bg_main_visual_haevichi.jpg"
                        height="512"
                    />
                    <svg
                        class="bd-placeholder-img"
                        width="100%"
                        height="100%"
                        xmlns="http://www.w3.org/2000/svg"
                        aria-hidden="true"
                        preserveAspectRatio="xMidYMid slice"
                        focusable="false"
                    >
                        <rect width="100%" height="100%" fill="#777"></rect>
                    </svg>

                    <div class="container">
                        <div class="carousel-caption bg-caption">
                            <h1>대성휴양빌리지</h1>
                            <p>친환경 독채펜션</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="carousel-item active">
                <a
                    href="hotel_view.hotel?hotel_code=A0047&sdate=2021-07-08&name=유니&edate=2021-07-09"
                >
                    <img
                        src="<%=mainImgSrc%>bg_main_visual_toscana.jpg"
                        height="512"
                    />
                    <svg
                        class="bd-placeholder-img"
                        width="100%"
                        height="100%"
                        xmlns="http://www.w3.org/2000/svg"
                        aria-hidden="true"
                        preserveAspectRatio="xMidYMid slice"
                        focusable="false"
                    >
                        <rect width="100%" height="100%" fill="#777"></rect>
                    </svg>

                    <div class="container">
                        <div class="carousel-caption text-end bg-caption">
                            <h1>[특2급]유니호텔</h1>
                            <p>애월해안도로 위치, 인원추가비용 무료</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <button
            class="carousel-control-prev"
            type="button"
            data-bs-target="#myCarousel"
            data-bs-slide="prev"
        >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button
            class="carousel-control-next"
            type="button"
            data-bs-target="#myCarousel"
            data-bs-slide="next"
        >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!--  Top1 관광지, 호텔, 음식점 보여지기  -->
    <div class="container marketing">
        <style>
            .box {
                width: 200px;
                height: 200px;
                border-radius: 70%;
                overflow: hidden;
                margin: auto;
            }

            .profile {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
        </style>
        <h2 class="pb-2 border-bottom" style="text-align: center">
            제주리송 추천
        </h2>
        <!-- Three columns of text below the carousel -->
        <div class="row" style="margin-top: 40px">
            <div
                class="col-lg-4"
                onclick="location.href='hotel_view.hotel?hotel_code=<%=hotelInfo.getHotel_code() %>'"
            >
                <div class="box" style="background: #bdbdbd">
                    <img
                        class="profile"
                        src="<%=hotelImgSrc%><%=hotelInfo.getHotel_img1() %>"
                    />
                </div>

                <h3 style="margin-top: 30px">
                    <%=hotelInfo.getHotel_name() %>
                </h3>
                <p style="margin-top: 5px">
                    <%=common.getStar().get(hotelInfo.getHotel_score()) %>
                </p>
            </div>

            <!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <div
                    class="box"
                    style="background: #bdbdbd"
                    onclick="location.href='tour_view.tour?tour_code=<%=tourInfo.getTour_code() %>'"
                >
                    <img
                        class="profile"
                        src="<%=tourImgSrc%><%=tourInfo.getTour_img1()%>"
                    />
                </div>
                <h3 style="margin-top: 30px"><%=tourInfo.getTour_name() %></h3>
                <p style="margin-top: 5px">
                    <%=common.getStar().get((double)tourInfo.getTour_score()) %>
                </p>
            </div>
            <!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <div
                    class="box"
                    style="background: #bdbdbd"
                    onclick="location.href='food_view.food?food_code=<%=foodInfo.getFood_code() %>'"
                >
                    <img
                        class="profile"
                        src="<%=foodImgSrc%><%=foodInfo.getFood_img1() %>"
                    />
                </div>

                <h3 style="margin-top: 30px"><%=foodInfo.getFood_name() %></h3>
                <p style="margin-top: 5px">
                    <%=common.getStar().get(foodInfo.getFood_score()) %>
                </p>
            </div>
            <!-- /.col-lg-4 -->
        </div>
        <!-- /.row -->

        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider" />

        <div class="row featurette">
            <div class="col-md-7 order-md-2" style="padding-left: 5rem">
                <h2 class="featurette-heading" style="margin-bottom: 25px">
                    제주마을산책 <span class="text-muted"><성산읍></span>
                </h2>
                <p class="lead">
                    짙은 바다와 푸릇한 오름, 알록달록 피어난 꽃들 사이를
                    하염없이 걷다 보면 5월의 뜨거운 햇살을 피할 길이 없을 터.
                    그럴 때 잠시 걸음을 멈추고 쉬어갈 수 있는 장소들을
                    제주마을산책 <성산읍> (하)에서 소개하고자 한다. 성산읍은
                    대부분의 제주 여행객들이 찾는 지역인 만큼 유명한 관광지가
                    많지만, 그에 못지않게 작고 특색 있는 카페와 문화를 즐길 수
                    있는 공간들이 곳곳에 자리 잡고 있다. 골목 안쪽에서 우리를
                    기다릴, 미처 몰랐던 성산읍을 발견해보자.
                </p>
            </div>
            <div class="col-md-5 order-md-1">
                <img src="<%=mainImgSrc%>tour01.png" width="500" height="500" />
            </div>
        </div>

        <hr class="featurette-divider" />

        <div class="row featurette">
            <div class="col-md-6">
                <h2 class="featurette-heading">
                    7월 놓치지 말아야 할 제주 관광 10선
                    <span class="text-muted"
                        ><꽃과 바다 그리고 별 헤는 제주></span
                    >
                </h2>
                <p class="lead">
                    장마가 시작되는 제주의 7월. 날이 맑아도 좋고 비가 내리면 더
                    좋은, 날씨와 상관없이 즐길 수 있는 곳들과 예인의 섬이라는
                    타이틀만큼이나 재주꾼이 많은 제주의 이색공간을 소개한다.
                    촉촉이 내리는 단비를 맞으며 내 안의 숨겨진 감성을 찾아보는
                    시간. 7월 제주에서 마음 느긋하게 즐길 수 있는 아늑한 곳으로
                    떠나보자.
                </p>
            </div>
            <div class="col-md-5" style="margin-left: 20px">
                <img src="<%=mainImgSrc%>tour02.PNG" width="500" height="500" />
            </div>
        </div>

        <hr class="featurette-divider" />

        <!-- /END THE FEATURETTES -->
    </div>

    <!--  공지사항, 글들 보여지는 곳  -->
    <style>
        /* 사이트 하단 공지사항, 문의사항 버튼 설 */
        .col-md-6 {
            position: relative;
            height: 270px;
        }
        .col-md-6 h2 {
            margin-bottom: 15px;
        }
        .col-md-6 .h-100 p {
            margin-bottom: 5px;
            line-height: 25px;
        }
        .h-100 .btn {
            position: absolute;
            bottom: 30px;
        }
    </style>
    <div
        class="row align-items-md-stretch"
        style="margin-left: auto; margin-right: auto; margin-bottom: 50px"
    >
        <div class="col-md-6">
            <div class="h-100 p-5 text-white bg-dark rounded-3">
                <h2>공지사항</h2>
                <p>공지사항을 확인해주세요.</p>
                <button
                    class="btn btn-outline-light"
                    type="button"
                    onclick="location.href='notice_list.brd'"
                >
                    공지사항 이동
                </button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="h-100 p-5 bg-light border rounded-3">
                <h2>1:1 문의사항</h2>
                <p>궁금한 사항이 있으면 언제든 문의하세요.</p>
                <button
                    class="btn btn-outline-secondary"
                    type="button"
                    onclick="location.href='question_form.qst'"
                >
                    1:1 문의사항 이동
                </button>
            </div>
        </div>
    </div>
</main>

<%@ include file="./com/_footer.jsp"%>
