<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>


<!-- Bootstrap core CSS -->
<link href="<%=cssSrc%>jeju_intro.css?v=210710" rel="stylesheet">

<main class="intro-section">
	<div class="container">
		<div class="grid">
			<div class="column-xs-12">
				<ul class="slider">
					<li class="slider-item active">
						<div class="grid vertical">
							<div class="column-xs-12 column-md-2 hide-mobile">
								<div class="intro">
									<a href="#">
										<h1 class="title">
											<span class="underline">Welcome JEJU</span>
										</h1>
									</a>
								</div>
							</div>
							<div class="column-xs-12 column-md-10">
								<div class="image-holder">
									<img src="<%=introImgSrc%>intro1.png">
								</div>
								<div class="grid">
									<div class="column-xs-12 column-md-9">
										<div class="intro show-mobile">
											<a href="#">
												<h1 class="title">
													<span class="underline">Welcome JEJU</span>
												</h1>
											</a>
										</div>
										<p class="description">
											독특한 자연환경 덕분에 한국을 대표하는 관광지로 성장했다.<br />제주도의 관광은 아름답고 매력적인
											자연풍경을 중심으로 이루어지며 역사 유적도 꽤 많이 존재하기 때문에 관심이 있다면 찾아가보는 것도 좋다.<br />
											<br /> <br /> <br />
										</p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="slider-item">
						<div class="grid vertical">
							<div class="column-xs-12 column-md-2 hide-mobile">
								<div class="intro">
									<a href="#">
										<h1 class="title">
											<div class="korean">
												<span class="underline">성산<br />일출봉
												</span>
											</div>
										</h1>
									</a>
								</div>
							</div>
							<div class="column-xs-12 column-md-10">
								<div class="image-holder">
									<img src="<%=introImgSrc%>intro2.png">
								</div>
								<div class="grid">
									<div class="column-xs-12 column-md-9">
										<div class="intro show-mobile">
											<a href="#">
												<h1 class="title">
													<span class="underline">성산 일출봉</span>
												</h1>
											</a>
										</div>
										<p class="description">
											유네스코에도 올라간 명소이자 제주도 관광에서 둘째가라면 서러운 관광지.<br />제주도에서 일출을 보고
											싶다면 전날 일출봉 근처에 있는 숙소에서 묵고 다음날 해 뜨는 시간에 맞춰 올라가보자. <br />3월~9월
											운영 시간은 07:00~20:00(매표 마감 19:00), 10월~2월 운영 시간은 07:30~19:00(매표
											마감 17:50)이며, 매월 첫째 주 월요일은 휴관이다.<br />요금은 성인 개인 5천 원, 단체 4천
											원이며, 도민은 무료다.
										</p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="slider-item">
						<div class="grid vertical">
							<div class="column-xs-12 column-md-2 hide-mobile">
								<div class="intro">
									<a href="#">
										<h1 class="title">
											<div class="korean">
												<span class="underline">함덕<br />해수욕장
												</span>
											</div>
										</h1>
									</a>
								</div>
							</div>
							<div class="column-xs-12 column-md-10">
								<div class="image-holder">
									<img src="<%=introImgSrc%>intro3.png">
								</div>
								<div class="grid">
									<div class="column-xs-12 column-md-9">
										<div class="intro show-mobile">
											<a href="#">
												<h1 class="title">
													<span class="underline">함덕해수욕장</span>
												</h1>
											</a>
										</div>
										<p class="description">
											제주시에 있는 해수욕장 중에서는 가장 대표적인 해수욕장이라 할 수 있다.<br />동쪽에 서우봉이 있으며,
											올라가면 계절에 따라 유채꽃과 갈대를 볼 수 있다. 서우봉에서 내려다보는 해변도 매우 인상적이다.<br />중앙해변은
											서쪽 해변과 카페 델 문도가 있는 곶으로 구분되며, 상시 유지되는 해변이다. 협재해수욕장과 우도 산호해수욕장과
											함께 대한민국에서 아주 보기 드문 에메랄드 빛 바다를 가지고 있다.
										</p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="slider-item">
						<div class="grid vertical">
							<div class="column-xs-12 column-md-2 hide-mobile">
								<div class="intro">
									<a href="#">
										<h1 class="title">
											<span class="underline">JEJU MUSEUM</span>
										</h1>
									</a>
								</div>
							</div>
							<div class="column-xs-12 column-md-10">
								<div class="image-holder">
									<img src="<%=introImgSrc%>intro4.png">
								</div>
								<div class="grid">
									<div class="column-xs-12 column-md-9">
										<div class="intro show-mobile">
											<a href="#">
												<h1 class="title">
													<span class="underline">JEJU MUSEUM</span>
												</h1>
											</a>
										</div>
										<p class="description">
											제주는 시시때때로 변해서 예측하기 힘든 날씨와 강한 바람 때문에 박물관 같은 실내 관광도 많이 발달되어 있다.<br />디자인
											붐이 선정한 세계 10대 미술관중 하나인 '오설록 티 뮤지엄', 희귀하고 다양한 피규어들이 전시되어있는
											'피규어뮤지엄 제주', 옛 국가기간 통신시설 벙커를 재생하여 혁신적인 미디어 아트를 도입하여 세계 거장들의
											작품을 빛과 음악을 통해 감상할 수 있는 '빛의벙커'<br />이 외에도 수많은 실내 박물관들이 있으니
											날씨에 따라 제주도에서만 볼 수 있는 박물관들을 경험해봐도 좋다.
										</p>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
				<div class="grid">
					<div class="column-xs-12">
						<div class="controls">
							<button class="previous">
								<span class="visually-hidden">Previous</span> <span
									class="icon arrow-left" aria-hidden="true"></span>
							</button>
							<button class="next">
								<span class="visually-hidden">Next</span> <span
									class="icon arrow-right" aria-hidden="true"></span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<script type="text/javascript" src="<%=jsSrc %>jeju_intro.js"></script>

<%@ include file="../com/_footer.jsp"%>