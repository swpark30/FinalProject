<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<!-- head.jsp -->
<c:import url="/WEB-INF/views/layout/head.jsp" />

<!-- css -->
<link rel="stylesheet" href="<c:url value='/css/map_index.css'/>" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<?xml-stylesheet type="text/css" href="style.css"?>
<!-- js -->
<script src="<c:url value='/js/map_index.js'/>"></script>

</head>
<body>
	<!-- top.jsp -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<section class="section">

		<!-- 백그라운드 이미지 -->
		<div id="background"></div>


		<!-- 전체 wrap -->
		<div class="section_wrap">

			<div id="map_index_title">
				<h2>직업 체험 장소 한 눈에 보기</h2>
			</div>

			<div id="map_index_sub_title">
				<h3>지도를 클릭해보아요!</h3>
			</div>

			<div id="map_img_korea">
				<img src="<c:url value='/images/map_korea.png'/>">
			</div>

			<div id="map_img_tap">
				<img src="<c:url value='/images/map_tap.png'/>">
			</div>



			<!-- 지도 영역 시작 -->
			<div id="map_box">



				<!-- 각 지역 리스트 -->
				<div id="list_seoul" class="list_box">
					<div id="list_title">서울</div>
					<div id="list_detail">
						<ul>
							<c:forEach items="${mapList }" var="map">
								<c:if test="${map.mapJobArea eq '서울' }">
									<li><a
										href="<c:url value='/map_detail/${map.mapJobNo }'/>">❂
											${map.mapJobName }</a></li>
								</c:if>
							</c:forEach>
						</ul>

						<%--  <ul>
							 	<li>
							 	<a href="<c:url value='/map_detail'/>">❂ 키자니아</a>
							 	</li>	 
							 	<li>
							 	❂ 기상청 체험학습
							 	</li>
							 	<li>
							 	❂ 청와대 사랑채 체험학습
							 	</li>
							 	<li>
							 	❂ 롯데제과 스위트 팩토리
							 	</li>
							 	<li>
							 	❂ 서울지방경찰청 체험학습
							 	</li>
							 	<li>
							 	❂ 법원 전시관
							 	</li>	 
							 </ul> --%>

					</div>
				</div>


				<div id="list_gyeonggido" class="list_box">
					<div id="list_title">경기도</div>
					<div id="list_detail">
						<ul>
							<c:forEach items="${mapList }" var="map">
								<c:if test="${map.mapJobArea eq '경기도' }">
									<li><a
										href="<c:url value='/map_detail/${map.mapJobNo }'/>">❂
											${map.mapJobName }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div id="list_chungcheongnamdo" class="list_box">
					<div id="list_title">충청남도</div>
					<div id="list_detail">
						<ul>
							<c:forEach items="${mapList }" var="map">
								<c:if test="${map.mapJobArea eq '충청남도' }">
									<li><a
										href="<c:url value='/map_detail/${map.mapJobNo }'/>">❂
											${map.mapJobName }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div id="list_chungcheongbukdo" class="list_box">
					<div id="list_title">충청북도</div>
					<div id="list_detail">
						<ul>
							<c:forEach items="${mapList }" var="map">
								<c:if test="${map.mapJobArea eq '충청북도' }">
									<li><a
										href="<c:url value='/map_detail/${map.mapJobNo }'/>">❂
											${map.mapJobName }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div id="list_jeollabukdo" class="list_box">
					<div id="list_title">전라북도</div>
					<div id="list_detail">
						<ul>
							<c:forEach items="${mapList }" var="map">
								<c:if test="${map.mapJobArea eq '전라북도' }">
									<li><a
										href="<c:url value='/map_detail/${map.mapJobNo }'/>">❂
											${map.mapJobName }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div id="list_jeollanamdo" class="list_box">
					<div id="list_title">전라남도</div>
					<div id="list_detail">
						<ul>
							<c:forEach items="${mapList }" var="map">
								<c:if test="${map.mapJobArea eq '전라남도' }">
									<li><a
										href="<c:url value='/map_detail/${map.mapJobNo }'/>">❂
											${map.mapJobName }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>


				<div id="list_gangwondo" class="list_box">
					<div id="list_title">강원도</div>
					<div id="list_detail">
						<ul>
							<c:forEach items="${mapList }" var="map">
								<c:if test="${map.mapJobArea eq '강원도' }">
									<li><a
										href="<c:url value='/map_detail/${map.mapJobNo }'/>">❂
											${map.mapJobName }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>


				<div id="list_gyeongsangbukdo" class="list_box">
					<div id="list_title">경상북도</div>
					<div id="list_detail">
						<ul>
							<c:forEach items="${mapList }" var="map">
								<c:if test="${map.mapJobArea eq '경상북도' }">
									<li><a
										href="<c:url value='/map_detail/${map.mapJobNo }'/>">❂
											${map.mapJobName }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>


				<div id="list_gyeongsangnamdo" class="list_box">
					<div id="list_title">경상남도</div>
					<div id="list_detail">
						<ul>
							<c:forEach items="${mapList }" var="map">
								<c:if test="${map.mapJobArea eq '경상남도' }">
									<li><a
										href="<c:url value='/map_detail/${map.mapJobNo }'/>">❂
											${map.mapJobName }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>


				<div id="list_jejudo" class="list_box">
					<div id="list_title">제주도</div>
					<div id="list_detail">
						<ul>
							<c:forEach items="${mapList }" var="map">
								<c:if test="${map.mapJobArea eq '제주도' }">
									<li><a
										href="<c:url value='/map_detail/${map.mapJobNo }'/>">❂
											${map.mapJobName }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- 각 지역 리스트 끝 -->



				<!-- 지도 SVG 시작 -->
				<svg id="map_korea" height="1100" width="1000"
					viewBox="0 0 1000 1100" xmlns="http://www.w3.org/2000/svg">
				
						<defs>
						    <feMergeNode />
						    
						    <style type="text/css">
.OUTLINE {
	fill: #feeeb8;
	fill-opacity: 10;
	stroke: white;
	stroke-opacity: 10;
	stroke-width: 2;
}

.OUTLINE:hover {
	fill: #fde48a;
}
</style>					    
						</defs>
						
								<g>
								<path id="CD11" class="OUTLINE"
						d=" M 178 231 l -4 2 -4 3 -1 0 0 1 -3 1 -4 -5 -4 0 -6 1 -4 3 -2 -1 -1 -1 -3 2 -3 -3 -1 -3 -2 -3 0 0 -1 -2 -3 2 -3 1 -2 -4 0 -8 -3 -1 0 0 0 0 0 0 -2 -1 -3 -2 2 -4 3 -3 0 -1 0 0 0 0 0 -1 1 0 4 2 7 1 2 -2 0 1 2 0 1 -4 2 -8 7 -1 4 2 0 -3 1 -1 2 -4 3 -4 2 0 3 2 7 2 2 8 1 4 1 1 0 0 0 2 0 2 0 1 0 0 -1 6 3 0 8 -1 0 5 -4 3 -1 5 z " />
								<path id="CD26" class="OUTLINE"
						d=" M 496 722 l 0 4 -1 0 -2 -5 -1 6 -1 -2 0 0 -1 0 -1 1 -1 2 0 1 -1 -1 -1 -6 -1 -6 -2 3 -2 -3 0 2 0 0 0 0 0 0 0 0 -1 0 1 0 -4 1 -2 -5 -1 5 -1 2 0 0 -2 0 -7 -2 0 -2 2 -2 -1 -3 -5 -4 -2 -2 4 -1 9 0 0 -5 1 -6 5 -1 6 -2 7 -1 4 -6 1 -4 2 0 3 1 1 -3 6 -3 4 -1 1 -5 3 -6 7 0 3 -2 0 -3 0 0 2 -3 1 3 0 0 1 0 2 0 4 -1 4 4 1 3 0 1 -1 1 5 1 -7 4 -1 6 -1 4 -1 0 0 0 0 -1 -1 2 -1 1 2 2 -1 4 -2 4 -3 6 -3 4 0 1 0 0 -5 0 -4 0 -2 -1 -1 4 -1 4 1 -1 0 4 -7 0 -2 -4 -1 1 -3 4 z " />
								<path id="CD27" class="OUTLINE"
						d=" M 441 530 l 3 1 3 7 0 4 2 9 1 7 -4 4 -2 -1 0 4 -1 2 -3 6 -2 7 0 8 -4 2 -4 2 -3 1 -3 -5 -6 0 -5 3 -1 6 -3 7 -2 3 -5 0 -7 3 -7 1 0 -8 -4 -4 -1 -3 5 -2 6 0 0 -5 -5 -4 -1 -5 3 -5 3 -2 8 -1 0 -5 -8 -4 -6 0 0 -5 2 -5 3 -4 3 -3 5 -1 2 7 3 3 1 0 2 -4 3 -7 0 -7 2 2 1 1 3 -2 6 -4 3 -3 5 -1 z " />
								<path id="CD28" class="OUTLINE"
						d=" M 91 229 l 1 -2 0 1 0 0 1 0 1 0 0 -1 1 0 -1 -1 0 0 0 0 2 0 -4 -5 0 -5 1 -3 0 0 1 0 -1 0 0 -1 0 0 1 -1 0 -1 4 -1 4 -1 -5 -1 -3 -1 -1 -1 -2 1 1 -3 5 -3 3 -4 4 1 3 3 5 4 4 3 5 2 -2 4 -1 3 -1 5 -2 2 2 5 2 3 -1 7 -1 2 -2 3 -1 -3 -1 6 -7 2 -1 6 -6 1 -1 0 -3 -5 -2 -4 -1 -5 5 -2 -4 -2 0 -3 -2 2 z M 82 219 l 3 1 0 0 1 2 2 3 -2 2 -4 1 -8 5 -9 7 -4 -2 -3 -3 -1 0 -2 1 -2 -4 4 -5 4 -2 7 -1 7 -3 1 -4 z M 64 156 l 3 2 4 4 7 4 0 4 2 3 -1 2 -2 4 2 3 -1 4 0 3 2 0 0 2 -1 1 1 1 -1 1 1 2 1 2 1 1 -1 0 -5 4 -8 1 -8 0 -5 -4 0 -4 4 -3 0 -5 -2 -4 1 0 0 -1 -5 -3 -1 -8 0 -7 4 -4 0 0 1 0 z " />
								<path id="CD29" class="OUTLINE"
						d=" M 113 687 l 2 3 6 3 7 -3 4 -2 2 0 1 0 0 0 0 0 1 0 0 0 1 -1 4 0 4 3 2 3 -1 1 1 1 3 4 6 3 1 4 -1 7 -4 4 -3 4 -7 1 -7 0 -6 2 -1 1 -1 0 -1 1 -4 1 -8 -1 0 -4 -4 -5 -4 -1 -7 0 -4 -7 -1 -1 3 -3 2 -6 2 -4 2 0 1 1 4 -4 1 -4 0 0 0 0 z " />
								<path id="CD30" class="OUTLINE"
						d=" M 223 432 l 1 6 4 1 0 0 3 0 4 -4 1 0 0 2 -1 2 3 2 2 6 5 1 0 5 -2 6 -2 3 -2 7 -1 8 1 7 -5 3 -2 4 -7 -1 -3 -4 -2 -1 1 -2 -1 -2 1 -1 0 0 -3 -2 -2 6 -1 6 -3 4 -1 1 -1 -4 -3 -4 -1 1 -1 0 -2 -3 -1 -7 -5 -4 1 -2 1 -3 2 -8 1 -7 0 -6 9 -3 2 -3 2 -3 2 -5 z " />
								<path id="CD31" class="OUTLINE"
						d=" M 550 641 l 2 6 -1 7 -1 8 -3 3 0 0 -1 0 0 1 0 0 -2 1 -5 -1 1 -1 0 -1 -1 -3 -4 -4 -4 1 -2 0 -1 0 0 0 -1 -3 -1 -7 -4 -1 -6 -2 -4 -5 -2 -3 -4 -3 -5 -3 -1 -3 -3 1 -1 0 0 0 -2 0 -3 -2 -4 -4 5 -5 0 -8 3 -4 1 0 1 1 4 -3 3 0 -2 -3 0 -2 1 -1 0 -1 2 -4 4 -2 4 -1 9 -1 5 0 4 3 3 3 4 7 6 -1 3 -2 4 -2 7 2 1 0 7 3 2 8 0 7 -1 8 -2 4 2 -1 -2 5 -1 4 -1 -1 0 1 -2 1 -2 -6 -3 -6 -3 -1 2 2 -2 1 2 1 1 3 -3 1 2 0 0 0 1 1 0 4 z " />
								<path id="CD36" class="OUTLINE"
						d=" M 184 410 l -2 -2 0 -5 1 -9 -1 -4 -1 1 0 0 -1 0 -1 -4 3 -4 3 0 5 2 5 3 6 3 2 0 0 0 0 0 0 0 2 1 2 2 -2 4 -1 4 2 4 0 3 0 3 2 1 3 3 6 2 3 4 3 2 0 8 -6 2 -2 5 -2 3 -2 3 -9 3 -6 -1 -6 -4 -1 -3 -3 -9 0 -7 2 -7 1 -4 0 0 0 0 -1 1 z " />
								<path id="CD41" class="OUTLINE"
						d=" M 81 192 l 1 -2 -1 -1 -1 -7 -1 -3 1 -3 1 -4 -2 -3 0 -5 4 2 4 2 4 1 3 -1 4 -2 4 0 3 5 -1 -4 -1 -12 -1 -1 0 -1 0 0 0 0 0 0 0 0 3 -2 -1 -5 0 0 1 -3 0 -5 -1 1 -1 -4 3 -6 7 -2 7 -2 3 -2 5 -2 1 -4 1 -1 1 -1 3 -3 1 -6 1 -7 4 -4 3 -2 3 2 1 0 3 -5 1 -3 0 0 1 -2 2 -3 3 -7 8 2 3 -5 1 0 1 0 3 0 0 0 1 0 0 0 0 0 1 0 0 0 1 0 3 1 3 -1 1 0 1 3 4 9 1 5 6 1 4 -2 3 -3 4 0 -1 1 -1 5 0 6 4 2 3 3 2 -1 5 -3 5 0 6 2 1 5 1 8 2 6 6 2 6 1 2 5 6 3 4 3 1 3 -1 1 1 2 0 1 -1 4 -4 3 -5 4 -4 6 0 5 -1 2 1 2 1 6 -3 3 -1 4 7 1 -1 7 0 8 8 0 5 1 4 3 5 3 3 4 4 0 4 0 1 -1 3 2 7 3 4 3 1 2 -5 2 -4 2 1 1 -1 0 -3 4 2 5 2 3 0 6 -1 3 -1 5 -4 7 0 8 -1 7 0 6 -1 4 -1 6 -4 6 -2 5 -4 3 -8 0 0 7 -3 4 -1 1 -1 -1 -1 1 0 -1 0 3 -5 3 0 2 0 0 -2 1 -4 -2 -2 0 -3 1 -2 -1 -3 0 -2 5 -3 4 -5 3 -4 3 1 1 1 1 -5 4 -4 2 -4 2 -4 1 1 3 0 1 0 0 0 0 -2 3 -4 -4 -6 -3 -3 -3 -5 -3 -5 -2 -8 2 -1 3 -1 0 -2 0 -4 1 -7 1 -8 2 -6 2 -3 4 0 -4 -8 1 -8 -1 0 -7 3 -8 -9 -1 2 -7 -6 -3 -1 -5 -10 -11 0 -5 0 -4 -2 1 -1 -1 -1 1 -1 0 0 0 0 0 0 0 1 -4 2 -3 -3 0 -1 -4 -3 -5 -2 0 -2 1 -2 -1 2 3 -7 1 0 -7 0 -7 3 -2 -1 -1 1 0 6 -4 2 0 -3 1 -4 4 -2 3 2 1 4 3 3 3 -1 1 2 1 3 3 0 1 0 4 2 -1 3 -1 -2 -2 0 0 0 -1 1 -1 -1 -2 0 0 0 0 -1 -2 5 -3 6 1 5 0 0 0 1 2 -1 1 1 1 0 1 1 -4 1 0 -1 6 3 -6 1 -4 2 -1 -1 -1 3 0 4 3 1 1 1 -2 1 0 0 0 2 1 -1 -2 -7 -3 -7 -2 -4 -1 0 0 -1 0 -2 -2 -8 -5 -1 -4 9 -7 7 -2 -5 -2 0 -1 1 -1 0 -1 1 -2 1 -7 -2 -3 -2 -5 2 -2 1 -5 1 -3 3 2 2 1 0 0 0 0 0 0 3 1 0 8 2 4 3 -1 3 -2 1 2 0 0 2 3 1 3 3 3 3 -2 1 1 2 1 4 -3 6 -1 4 0 4 5 3 -1 0 -1 1 0 4 -3 4 -2 3 -8 1 -5 4 -3 0 -5 -8 1 -3 0 1 -6 0 0 0 -1 0 -2 0 -2 0 0 -1 -1 -1 -4 -2 -8 -7 -2 -3 -2 -2 0 -3 4 -2 4 -1 1 0 3 -4 -2 -7 1 -2 8 -1 4 -2 0 0 -1 -2 2 -7 -1 -4 -2 -1 0 0 1 0 0 0 0 0 1 -3 3 -5 -2 -4 -3 -5 -4 -3 -3 -4 -1 -3 4 -5 3 -7 -1 -2 -5 z M 120 292 l -5 1 -3 4 -5 4 -2 2 9 10 5 0 -1 -7 -1 -2 0 -1 3 -2 5 -4 -3 -2 1 -1 1 -1 -1 -2 1 -4 z " />
								<path id="CD42" class="OUTLINE"
						d=" M 409 61 l 2 3 0 0 0 3 3 4 3 5 -2 4 2 -1 2 4 1 6 2 4 2 4 4 5 1 0 -1 0 2 3 4 6 5 5 1 3 4 5 0 0 1 0 0 3 4 6 4 4 3 5 2 4 3 3 3 5 0 -1 0 0 0 0 0 1 3 4 4 4 5 5 3 4 3 2 4 5 3 4 4 6 0 5 2 5 -1 0 1 0 4 4 4 3 0 0 0 0 0 0 0 0 0 1 0 -1 1 4 0 4 0 -1 1 4 2 7 4 4 4 4 2 4 1 1 -1 -1 0 0 0 2 2 4 4 3 4 3 2 7 1 4 0 -1 1 2 3 3 2 3 1 0 1 1 2 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 0 0 0 1 1 2 5 0 6 1 8 2 5 -1 0 0 0 0 0 0 0 -1 -1 -1 1 -1 -1 -1 1 -5 4 -5 2 -3 4 -3 4 0 3 0 3 0 1 1 0 -5 0 -6 -3 -5 -4 -3 -2 -7 -1 -3 5 -3 0 -4 -2 0 1 -1 -1 -5 0 -4 0 0 0 -3 -2 -4 1 -4 6 -7 1 -6 -5 -4 -2 -2 0 -3 4 -1 7 -6 -1 -4 -1 -5 -3 -5 -3 -2 -2 -2 1 -1 0 0 -1 -1 0 0 0 -2 1 -3 -1 -6 -2 -4 -4 -2 -2 -2 2 -5 1 -5 0 -4 -7 -2 -3 -1 1 0 0 -2 -1 -1 1 -2 -1 -1 1 -1 -1 0 1 -1 0 1 0 -4 2 -6 -1 -1 -3 5 -4 4 -5 -10 -2 -3 -2 0 0 -2 0 -3 -2 -5 -1 -3 5 -3 -1 -2 -1 -1 0 -1 -1 -2 4 -2 2 -4 2 -1 0 -1 0 -3 1 -2 -5 -2 -4 0 -1 0 0 -4 -3 -7 1 -5 4 0 1 1 5 0 4 -2 3 -4 2 -1 -1 -3 0 -2 1 -1 -1 -1 1 -4 1 -7 0 -4 -5 -2 -7 1 -6 1 -4 0 -6 1 -7 0 -8 4 -7 1 -5 1 -3 0 -6 -2 -3 -2 -5 3 -4 1 0 -1 -1 4 -2 5 -2 -1 -2 -4 -3 -7 -3 -3 -2 -1 1 -4 0 -4 0 -3 -4 -5 -3 -4 -3 -5 -1 -8 0 0 -8 1 -7 -7 -1 1 -4 3 -3 -1 -5 -1 -3 1 -2 0 -5 4 -6 5 -4 4 -3 1 -4 0 -1 -1 -2 1 -1 -1 -3 -4 -3 -6 -3 -2 -5 -6 -1 -6 -2 -2 -6 -1 -8 -1 -5 -6 -2 -5 0 -5 3 -2 1 -3 -3 -4 -2 0 -6 1 -5 1 -1 -4 0 -3 3 -4 2 -6 -1 -1 -5 -4 -9 -1 -3 -1 0 -3 1 -3 -1 0 -3 0 -3 -1 0 -1 -3 3 -1 -1 -1 2 -2 2 -2 0 0 0 0 1 4 6 -2 2 -2 -1 0 0 0 0 0 2 -1 4 -2 7 1 4 4 1 0 0 -1 0 0 -1 -1 0 0 1 0 0 0 0 0 0 -1 0 1 1 0 0 1 8 1 3 -6 6 0 8 3 3 1 4 2 4 -2 4 -2 6 -3 5 1 0 0 0 0 0 0 0 0 0 0 1 1 7 1 0 2 0 0 2 -2 1 2 6 0 3 0 3 -2 5 4 5 3 7 0 5 -5 0 0 4 1 8 3 2 3 1 1 1 -1 2 1 2 -3 5 0 6 -2 3 -5 6 -1 7 -1 2 -6 5 -3 6 -1 1 -5 2 -6 5 0 0 -5 0 1 0 -2 -3 0 3 -1 4 -8 1 -8 -1 -6 4 -2 6 3 1 4 2 8 3 5 2 4 2 6 2 6 3 4 3 5 3 7 1 3 z " />
								<path id="CD43" class="OUTLINE"
						d=" M 321 275 l 4 3 0 0 0 1 2 4 2 5 3 -1 1 0 1 0 4 -2 2 -2 2 -4 1 1 1 0 2 1 3 1 3 -5 5 1 3 2 2 0 0 0 3 2 10 2 -4 5 -5 4 1 3 6 1 4 -2 -1 0 1 0 0 -1 1 1 1 -1 2 1 1 -1 1 1 1 0 1 -1 2 3 4 7 5 0 5 -1 2 -2 2 2 4 4 6 2 3 1 2 -1 0 0 1 0 0 1 1 0 2 -1 2 2 5 3 -4 1 -2 2 -3 -1 0 1 -5 3 -3 5 -4 3 -4 4 -4 2 -4 4 -2 5 -3 7 2 8 -2 6 -5 1 -7 1 -7 -3 -4 -3 -4 -4 -4 -2 0 0 -3 4 -2 6 -6 0 -5 -2 -1 -1 -3 2 -4 4 -1 2 -3 -3 -3 1 -1 5 -1 8 3 4 1 2 -5 0 -3 -3 -1 0 -4 2 -3 -2 -2 -1 -3 6 -6 2 -3 1 -1 1 0 0 0 1 4 1 4 3 1 5 -1 4 -1 2 1 1 -2 -1 -4 -5 -2 -4 0 -1 -4 4 0 4 0 0 -1 1 -6 2 1 5 7 3 2 5 4 3 0 5 -3 3 0 2 0 1 0 0 0 0 0 0 0 1 0 0 0 1 -1 4 0 2 2 2 -2 3 -1 3 3 3 -1 2 1 0 0 3 -3 4 -3 5 1 6 6 0 2 -3 2 3 4 3 2 2 1 0 1 1 2 0 3 -3 6 1 2 5 2 6 1 2 -4 -1 -7 0 0 8 -1 6 -3 4 0 1 0 2 -1 3 -3 6 -5 2 -4 3 -4 2 -9 -1 -8 2 -6 -2 -5 -2 -2 -3 -3 3 -2 -1 -5 -3 -1 -7 -4 -9 0 -6 0 -7 -2 -6 -6 -2 -8 0 -1 -7 1 -8 2 -7 2 -3 2 -6 0 -5 -5 -1 -2 -6 -3 -2 1 -2 0 -2 -1 0 -4 4 -3 0 0 0 -4 -1 -1 -6 0 -8 -3 -2 -3 -4 -6 -2 -3 -3 -2 -1 0 -3 0 -3 -2 -4 1 -4 2 -4 -2 -2 -1 -2 3 -4 5 -5 5 -4 7 1 -1 -5 -1 -5 -5 -4 -5 -2 -2 -5 -3 -5 -3 -3 2 -3 0 0 0 0 0 -1 -1 -3 4 -1 4 -2 4 -2 5 -4 -1 -1 -1 -1 4 -3 5 -3 3 -4 2 -5 3 0 2 1 3 -1 2 0 4 2 2 -1 0 0 0 -2 5 -3 0 -3 0 1 1 -1 1 1 1 -1 3 -4 0 -7 8 0 4 -3 2 -5 4 -6 2 7 4 5 7 0 4 -1 1 -1 1 1 2 -1 3 0 1 1 4 -2 2 -3 0 -4 -1 -5 0 -1 5 -4 z " />
								<path id="CD44" class="OUTLINE"
						d=" M 53 418 l 1 8 2 5 2 2 0 4 -1 2 3 2 1 2 0 0 -1 5 -6 -1 -5 -2 0 -3 1 0 -3 -2 -1 -6 -2 2 1 -5 1 -3 -1 0 0 0 -1 0 0 -3 0 -8 -2 -3 0 0 0 0 0 -2 3 -3 6 1 0 3 -1 0 0 1 0 0 z M 30 354 l 1 1 2 -3 4 -3 2 -6 0 -8 2 -4 1 1 0 0 0 0 0 0 -1 2 1 1 0 0 1 0 -2 3 0 4 2 4 1 3 -2 2 1 0 -1 2 -2 4 3 3 -1 0 1 0 -1 1 -3 3 6 -1 2 -5 4 3 0 0 0 -1 -1 -3 1 -1 3 -5 6 -3 0 -5 0 -4 0 0 -1 0 -1 1 -2 0 -2 -1 0 0 -2 -2 -4 -3 5 -1 2 -1 -1 0 -1 -2 -6 -2 3 -3 0 -1 3 1 2 -1 6 0 2 1 3 1 2 -4 8 -7 3 3 5 2 3 1 0 1 0 0 6 3 3 2 10 1 6 2 7 -1 2 5 2 7 2 4 1 3 11 3 4 -2 3 -4 6 -2 8 -2 7 -1 4 -1 2 0 1 0 1 -3 8 -2 5 2 5 3 3 3 6 3 4 4 3 3 3 5 2 5 5 2 5 4 1 5 1 5 -7 -1 -5 4 -5 5 -3 4 -1 1 0 0 0 0 0 0 0 0 -2 0 -6 -3 -5 -3 -5 -2 -3 0 -3 4 1 4 1 0 0 0 1 -1 1 4 -1 9 0 5 4 3 2 3 1 -1 0 0 0 0 -1 4 -2 7 0 7 3 9 1 3 6 4 6 1 0 6 -1 7 -2 8 -1 3 -1 2 5 4 1 7 2 3 1 0 1 -1 3 4 1 4 1 -1 3 -4 1 -6 2 -6 3 2 0 0 -1 1 1 2 -1 2 2 1 3 4 7 1 2 -4 5 -3 8 0 6 2 2 6 0 7 0 6 4 9 1 7 -1 4 1 0 0 2 -2 1 1 3 -1 2 -1 0 -3 -4 -8 -2 -2 8 -5 2 -7 -1 -3 -5 -1 -3 0 0 -4 2 -5 -3 -3 -6 -1 -7 -1 -5 -3 -2 -6 2 -5 1 -1 0 -1 0 -3 3 -7 1 -8 2 -2 2 -6 0 -3 -1 -3 -3 -3 -8 -4 -2 -3 -2 -1 1 -2 0 -4 -2 -4 1 -2 2 -7 3 -2 7 0 5 -6 3 -7 4 -8 4 -2 2 -1 0 0 1 -7 -2 -4 1 1 -3 -3 -6 -3 -4 -1 -3 3 -2 -4 -2 -2 -2 0 0 -1 -2 -6 -3 -4 -2 -3 -1 -4 1 0 0 1 2 -2 -1 0 -3 1 -1 0 0 3 -1 3 -9 0 -7 1 -3 0 0 0 -1 1 -1 -1 -3 -5 -6 2 -5 6 -3 5 0 -4 -1 -4 -2 -4 -3 -5 -3 1 -5 1 -2 0 0 2 -1 2 -2 -3 1 -1 0 0 -1 0 0 0 0 1 -1 -2 -3 -1 -6 -1 -9 -2 -6 -1 -6 -7 -4 0 -1 -7 -2 -5 1 -3 3 -4 2 -1 -6 -2 -9 -3 -3 0 -1 0 0 0 0 0 0 0 -2 1 -3 1 -4 -1 0 0 -1 -1 2 -4 3 -5 4 -3 2 -5 0 1 -6 7 0 -1 -6 -4 -4 -2 0 -1 0 -1 0 -1 4 -2 4 -2 1 1 -3 1 -3 0 0 0 0 -1 -2 -1 -4 2 -1 0 -1 0 0 -1 0 1 -1 0 0 1 0 1 -4 2 -7 2 4 2 4 2 3 -1 -5 -1 -4 -1 -1 2 -3 0 -7 3 -4 0 1 0 -1 0 1 2 -1 4 -1 -2 3 -2 2 z " />
								<path id="CD45" class="OUTLINE"
						d=" M 134 519 l 0 -5 2 -7 7 -3 2 -2 4 -1 4 2 2 0 1 -1 3 2 4 2 3 8 3 3 3 1 6 0 2 -2 8 -2 7 -1 3 -3 1 0 1 0 5 -1 6 -2 3 2 1 5 1 7 3 6 5 3 4 -2 0 0 1 3 3 5 7 1 5 -2 2 -8 8 2 3 4 1 0 1 -2 -1 -3 2 -1 0 -2 -1 0 1 -4 5 3 2 1 3 -3 2 3 5 2 6 2 8 -2 9 1 2 4 0 1 0 0 2 4 3 7 -4 7 -3 2 -3 5 -4 3 -3 2 -6 2 -5 2 -3 6 -3 4 -5 3 -2 8 0 5 -3 3 -2 7 -1 8 -2 4 -1 3 -2 8 6 6 2 8 0 5 4 3 -1 5 -3 3 -3 5 -2 3 0 1 0 0 0 0 1 4 -2 3 -4 4 -3 -3 -4 -2 -5 -4 -4 -2 -6 -1 -4 1 -2 4 -4 5 -4 1 -3 -2 -1 0 -3 2 -8 0 -4 -1 -5 -3 -2 2 -2 1 -4 -3 -3 1 -4 3 -5 2 -8 -3 -1 -4 0 -8 -4 -3 0 -2 3 -3 -1 -4 -1 -3 -1 -4 -3 1 -2 -1 -1 4 -1 2 -2 2 -1 0 -1 5 -7 -1 -4 -3 -2 -5 -5 -3 -1 -1 -2 1 -1 -4 -6 2 -5 1 -4 4 0 7 -3 3 0 1 0 2 -3 3 -3 3 -5 3 -4 1 1 2 -4 0 -6 0 -1 1 1 0 -2 2 -7 -1 -2 -5 -1 -4 -2 0 -1 1 -1 -4 -1 -8 -2 -3 -6 -2 4 -9 1 -3 4 -5 4 -3 1 0 0 0 0 0 0 0 2 -1 0 1 1 -1 0 1 1 0 0 1 1 -2 0 1 1 0 -1 0 0 -1 4 -1 3 2 1 1 0 -1 0 -1 2 -4 2 -3 0 0 0 0 0 0 2 0 2 0 4 4 2 5 -1 -5 -2 -5 -8 -2 -9 0 -6 0 -3 1 0 0 -3 -3 -4 -3 -1 -1 1 -2 -1 0 1 -1 -1 -2 1 0 3 -2 6 -5 1 -1 1 0 1 -2 3 -2 -1 -3 -4 -4 -3 -6 -4 -11 -2 0 -3 -1 0 -2 5 -2 6 -11 3 -8 -1 -2 -1 -7 5 1 0 -1 3 0 9 0 7 -2 7 -2 4 2 3 -2 0 -4 8 -4 7 -4 z M 70 573 l 1 6 2 3 3 6 6 7 2 0 3 -3 3 -5 2 -8 1 -4 4 0 7 -1 -1 -8 -1 -4 -3 -5 -7 -1 -2 -6 -1 -6 -5 0 -6 1 -4 12 -2 4 -1 5 z " />
								<path id="CD46" class="OUTLINE"
						d=" M 118 837 l 1 -4 -1 -7 -2 -4 1 0 0 -1 -1 -3 1 -3 0 -1 0 0 -1 3 -2 8 0 9 -2 8 -3 2 0 0 2 3 -3 4 -3 2 -7 4 -4 0 0 0 0 1 -4 4 -2 6 -2 5 -2 4 -7 2 -3 3 -3 0 0 -1 0 0 0 0 0 0 0 -2 1 -2 0 -1 1 -1 -1 -1 0 -1 0 0 -3 -3 -4 1 0 1 -1 -1 1 -1 0 -1 0 0 -1 -2 1 0 -1 -1 0 0 1 -1 -1 0 3 -3 1 -7 -6 -2 0 -2 2 1 -1 -4 0 -4 0 0 0 0 0 0 -1 -4 -1 -4 0 1 0 -1 -2 1 0 -3 -2 -2 1 -1 -2 -1 -2 -1 -2 3 -3 0 -3 -4 -9 -3 -2 -3 -1 -1 -1 1 -1 -4 -2 -6 -3 -5 0 -1 1 -1 -1 -1 1 -2 2 -5 3 -8 5 1 3 5 2 3 2 2 3 -3 2 -3 0 -1 -2 -4 3 -4 6 -1 3 -1 -6 -1 -7 0 1 -7 5 -4 0 -5 -2 -4 -1 1 2 -5 -1 -6 0 -6 -2 -4 -1 -3 -1 5 0 8 -4 3 -2 0 -3 -3 -2 -5 -1 -2 3 -2 6 -1 0 -3 -2 0 4 -3 4 -3 1 -2 -5 -3 -4 -2 -1 -1 1 0 0 0 1 -2 -4 -1 -2 5 -2 1 0 -1 -1 -1 -1 -1 -2 3 -2 6 -2 0 -1 -2 -1 2 -2 -7 -3 -1 0 1 0 0 0 1 -1 -1 -1 -2 0 0 -1 0 0 0 -2 -1 -3 -1 1 -1 0 0 0 -1 -1 -2 0 -2 5 -1 6 1 4 1 0 0 0 0 2 0 0 -1 -2 -3 1 -3 0 -1 1 1 3 -2 4 1 2 1 3 -3 3 -1 -1 5 -1 4 0 3 2 0 1 -1 0 3 3 4 1 -1 1 -2 0 -1 2 2 1 6 0 4 2 -1 1 1 1 -1 0 0 0 -2 2 -3 2 -6 0 -4 -5 -3 -3 -4 -1 0 -1 -2 -3 -4 -1 -5 2 -4 -4 2 -3 1 1 -2 0 -2 -1 0 1 1 0 1 -2 0 -3 -4 1 -5 1 2 2 -1 0 -1 0 -1 1 0 -2 0 2 -4 -1 0 0 -2 4 -1 4 -2 -1 -3 1 -1 0 -1 0 -1 0 0 0 0 0 0 0 0 1 -2 3 -6 4 1 2 3 0 -3 -4 -4 -1 -4 2 -6 3 -1 6 2 2 3 1 8 1 4 1 -1 2 0 1 4 2 5 7 1 2 -2 -1 0 1 -1 6 0 4 0 -1 -2 4 -1 5 -3 3 -3 3 -3 0 -2 0 -1 3 -3 0 -7 4 -4 5 -1 6 -2 1 4 2 -1 1 1 5 3 2 5 4 3 7 1 1 -5 1 0 2 -2 1 -2 1 -4 2 1 3 -1 1 4 1 3 1 4 -3 3 0 2 4 3 0 8 1 4 8 3 5 -2 4 -3 3 -1 4 3 2 -1 2 -2 5 3 4 1 8 0 3 -2 1 0 3 2 4 -1 4 -5 2 -4 4 -1 6 1 4 2 5 4 4 2 3 3 3 8 2 3 1 4 0 8 4 6 5 3 4 6 0 4 4 4 3 4 4 3 3 5 1 2 0 3 -3 6 -5 3 -1 -2 -3 5 -3 3 0 2 -3 -2 -2 3 -1 1 -4 0 -5 -3 -1 -5 -3 8 5 3 0 1 -2 5 1 3 1 0 0 0 0 0 0 -1 0 0 3 3 9 0 3 -2 0 -1 -1 -1 5 0 3 2 0 0 3 -2 2 7 -2 6 -2 9 1 2 -1 1 -5 2 -3 1 0 0 -3 -3 -4 -2 -1 1 -2 3 0 4 -3 -1 0 5 2 9 0 3 -3 -2 -5 -1 -1 3 -2 -2 -2 -4 0 -2 0 0 0 -3 3 -3 -2 -1 -1 -1 -1 1 1 -4 3 -2 1 -6 -3 -3 -1 0 1 0 0 -1 0 1 0 0 1 -1 0 1 0 -2 -4 -4 -4 -1 0 0 2 -5 -2 -2 0 0 0 -1 0 0 0 -1 -1 -3 0 -4 1 0 -1 0 -4 3 -1 6 -6 1 -1 -3 -1 1 0 -1 -1 1 -4 4 -7 -1 -4 -1 4 2 4 3 0 0 1 0 1 0 1 0 1 1 1 -1 -3 3 -3 3 1 1 -1 0 0 1 1 3 -2 2 0 6 2 3 1 0 0 0 3 3 4 4 1 1 0 0 3 2 2 1 0 1 2 1 -3 0 1 2 1 0 0 0 1 1 1 -1 1 4 -1 7 -6 0 -7 1 -2 3 1 2 4 1 0 0 0 0 -1 1 1 1 -1 1 -2 4 -4 2 0 -1 -2 1 1 3 0 0 -2 1 -3 -1 -1 1 -1 1 0 0 -3 2 -1 5 -3 -1 0 0 0 0 0 -1 0 0 1 1 -1 -2 -3 -3 -2 -3 1 0 -1 -3 -6 -3 -3 -3 -1 1 -1 1 0 -1 -1 1 -3 -1 -3 0 0 1 1 0 -2 0 -2 -1 -1 1 -2 -1 0 1 -1 -1 0 0 0 0 -2 -3 0 -4 0 0 1 -1 1 -1 0 0 2 -2 1 -4 2 2 2 -4 1 -2 -1 -1 1 -1 3 -3 6 -3 2 -6 2 -4 3 -1 2 5 0 4 0 0 1 1 4 0 2 -5 2 -7 -3 -6 -3 1 -3 2 -4 0 -3 -4 -4 3 -2 4 -3 5 -6 1 -4 -2 0 0 0 0 0 -1 -3 4 -3 4 -2 0 1 1 -4 2 -3 4 -1 0 -1 0 -2 2 -8 0 -4 -1 4 2 4 3 -1 1 1 0 0 0 -2 4 3 3 -1 2 0 -1 -1 0 -3 4 -1 7 0 6 -5 2 -2 4 -2 -1 -6 0 -1 4 -4 -2 -3 -2 -1 1 -2 0 -1 -1 -1 1 -2 -4 0 -4 -1 0 z M 61 823 l 3 -2 2 -2 -4 -2 -2 -3 -2 1 0 -2 -1 0 0 0 -1 -3 -2 -3 0 0 -1 0 -1 2 -3 0 -1 -4 1 2 1 0 1 -3 -1 -3 2 0 -1 -2 -2 -1 -4 4 -3 0 1 4 2 5 3 6 5 3 4 2 z M 49 798 l 1 0 2 0 3 4 3 -2 2 -1 0 4 -3 4 0 0 4 3 4 2 0 0 0 0 0 0 4 1 3 1 0 0 0 1 0 0 0 0 1 0 0 -2 -4 -4 -3 -4 4 3 7 2 5 3 5 1 2 1 1 -1 -8 -2 -4 -4 1 -2 1 -2 -1 0 1 0 -3 1 -6 -2 2 -1 -3 -1 -2 -3 -4 -2 2 -3 -1 -1 0 0 0 0 0 0 0 0 -1 0 -2 1 -2 -2 -1 1 -2 0 0 0 0 0 0 0 0 -1 0 0 0 0 -2 0 -4 2 -1 2 0 1 0 0 0 0 z M 122 727 l 4 -1 1 -1 1 0 1 -1 6 -2 7 0 7 -1 3 -4 4 -4 1 -7 -1 -4 -6 -3 -3 -4 -1 -1 1 -1 -2 -3 -4 -3 -4 0 -1 1 0 0 -1 0 0 0 0 0 -1 0 -2 0 -4 2 -7 3 -6 -3 -2 -3 -4 1 0 0 0 0 -1 4 -4 4 -2 -1 -1 0 -2 4 -2 6 -3 3 1 1 4 7 7 0 4 1 4 5 0 4 z M 95 876 l -1 0 -1 -7 0 -5 6 -2 6 2 3 6 1 4 0 0 0 0 2 4 2 6 -4 -1 1 0 -3 0 -7 -1 z M 191 843 l 1 0 0 1 0 0 1 3 -2 6 -2 3 -10 1 -7 -4 0 -6 3 -3 0 0 0 0 0 1 4 2 5 -3 0 0 0 0 1 0 0 0 1 0 2 0 1 0 1 0 z M 27 823 l 5 2 4 3 -1 1 0 0 0 0 0 0 4 2 3 2 0 0 2 2 3 6 1 4 -1 -1 -2 3 0 6 -4 5 -2 2 -1 -2 -2 2 -1 -1 0 0 0 1 0 1 -3 1 -5 2 1 1 -3 1 -3 1 -5 1 -7 1 -5 0 1 -1 -1 0 1 -1 1 -2 -5 -2 -2 -8 3 -4 1 1 1 0 0 0 -1 -3 5 -4 4 -1 0 -1 4 -3 4 -3 0 -1 -1 0 2 -3 z M 281 794 l 2 1 5 3 0 2 -1 0 -1 -1 -1 1 0 -1 0 3 2 5 1 0 1 0 0 4 0 7 1 5 -6 0 -3 -1 -1 0 0 -1 0 0 0 0 -3 -3 0 -7 4 -3 1 -5 -1 -6 -1 -1 0 0 0 0 0 0 0 0 0 -1 z " />
								<path id="CD47" class="OUTLINE"
						d=" M 560 528 l 7 2 5 -4 3 -4 3 -4 1 -1 0 0 3 -4 3 2 2 6 -1 8 -2 3 -1 0 0 0 -1 4 0 4 0 0 -1 0 0 -1 0 1 0 0 -2 2 -2 3 0 2 1 0 0 0 1 4 0 4 -1 -1 -1 1 0 0 1 4 -1 3 0 0 0 0 0 0 0 1 -1 3 0 3 0 0 0 1 -1 -1 -1 4 -1 8 -2 7 -1 6 -2 4 -2 4 -7 -3 -1 0 -7 -2 -4 2 -3 2 -6 1 -4 -7 -3 -3 -4 -3 -5 0 -9 1 -4 1 -4 2 -2 4 0 1 -1 1 0 2 2 3 -3 0 -4 3 -1 -1 -1 0 -3 4 -7 0 -5 -4 -3 0 -3 1 -4 3 -4 5 -5 1 -6 3 -8 0 -7 -2 -8 -1 -7 2 -6 -3 -3 -3 -3 -3 -1 -7 0 -5 1 -6 5 -3 6 0 3 5 3 -1 4 -2 4 -2 0 -8 2 -7 3 -6 1 -2 0 -4 2 1 4 -4 -1 -7 -2 -9 0 -4 -3 -7 -3 -1 -9 0 -5 1 -3 3 -7 4 -2 2 -1 -1 -2 -2 0 7 -3 7 -2 4 -1 0 -3 -3 -2 -7 -5 1 -3 3 -3 4 -2 5 0 5 6 0 8 4 0 5 -8 1 -3 2 -3 5 1 5 5 4 0 5 -6 0 -5 2 1 3 4 4 0 8 -5 -3 -3 -3 -7 -1 -8 1 -3 2 -2 0 -3 -2 -5 -3 2 -3 0 0 1 0 2 -4 -1 -7 -2 -4 -3 -3 -5 -4 -2 -4 -1 -4 -1 0 -1 0 -5 -2 -8 0 -7 -2 -5 -3 -1 0 -3 1 -1 -4 -4 -3 -4 -5 4 -7 -3 -7 -2 -4 0 0 0 -1 -2 -4 4 -2 4 -3 5 -2 3 -6 1 -3 0 -2 0 -1 3 -4 1 -6 0 -8 7 0 4 1 -1 -2 -2 -6 -2 -5 -6 -1 -3 3 -2 0 -1 -1 -1 0 -2 -2 -4 -3 -2 -3 -2 3 -6 0 -1 -6 3 -5 3 -4 0 -3 -1 0 1 -2 -3 -3 1 -3 2 -3 -2 -2 0 -2 1 -4 0 -1 0 0 0 -1 0 0 0 0 0 0 0 -1 0 -2 3 -3 0 -5 -4 -3 -2 -5 -7 -3 -1 -5 6 -2 1 -1 0 0 0 -4 4 -4 0 1 2 4 4 5 2 1 -1 -1 1 -2 1 -4 -1 -5 -4 -3 -4 -1 0 -1 0 0 1 -1 3 -1 6 -2 3 -6 2 1 3 2 4 -2 1 0 3 3 5 0 -1 -2 -3 -4 1 -8 1 -5 3 -1 3 3 1 -2 4 -4 3 -2 1 1 5 2 6 0 2 -6 3 -4 0 0 4 2 4 4 4 3 7 3 7 -1 5 -1 2 -6 -2 -8 3 -7 2 -5 4 -4 4 -2 4 -4 4 -3 3 -5 5 -3 0 -1 3 1 2 -2 4 -1 5 3 4 1 6 1 1 -7 3 -4 2 0 4 2 6 5 7 -1 4 -6 4 -1 3 2 4 0 5 0 1 1 1 -1 3 2 3 0 3 -5 7 1 3 2 5 4 6 3 5 0 -1 0 0 -1 0 -3 0 -3 3 -4 3 -4 5 -2 5 -4 1 -1 1 1 1 -1 1 1 0 0 0 0 0 0 1 0 0 -1 1 2 1 4 2 5 6 7 -1 3 0 1 0 1 -1 2 1 3 0 4 0 1 0 1 -1 1 1 1 0 0 0 1 1 5 0 6 1 5 -1 -1 0 4 4 7 2 3 -1 0 1 1 1 4 3 7 0 9 0 6 -2 5 -1 -2 -1 1 -3 5 -2 6 0 7 4 8 1 5 0 2 0 0 1 2 -1 2 0 1 0 0 0 0 0 0 -1 3 0 7 -2 8 -3 6 -2 3 -1 6 -1 7 0 7 1 8 -1 4 0 -1 1 4 2 3 1 5 1 5 6 3 0 0 0 3 -4 4 -4 3 -1 0 -2 4 6 2 z M 797 205 l 2 1 1 0 -1 3 0 6 1 2 -3 2 -3 3 -6 0 -4 -2 -3 -5 1 -5 6 -2 4 -2 0 0 2 0 z " />
								<path id="CD48" class="OUTLINE"
						d=" M 307 751 l 4 2 0 5 -1 4 0 0 -1 0 -1 4 1 4 1 0 -1 1 3 3 3 4 3 0 -1 -1 0 0 4 -2 7 -1 4 1 0 0 1 1 0 5 0 7 -1 4 -1 4 1 2 0 0 0 0 0 0 1 0 -1 1 0 0 0 0 -1 1 -2 -1 -1 1 -2 -3 -4 1 -6 -3 -2 -8 -6 2 -2 6 -6 -1 -2 -6 1 -4 -1 1 -1 -4 -2 -3 -2 -4 0 -7 2 -3 0 -1 0 0 0 -2 0 0 0 -1 0 -1 3 -1 2 -5 z M 441 731 l 3 1 1 2 -2 3 0 1 0 0 0 1 -1 0 0 4 3 3 1 5 0 4 0 0 -1 2 -2 3 -1 3 2 0 -1 1 2 -1 3 -2 3 -1 -1 1 -2 5 -1 4 -2 -1 -1 1 -1 1 3 2 0 7 -2 -3 -1 0 0 0 0 0 -1 1 -3 -1 -2 3 -3 4 -1 3 4 4 3 0 -1 1 -1 1 0 -1 -1 0 -1 0 -1 0 -4 2 -6 1 -1 -3 0 0 -1 0 -1 0 2 -5 -1 -3 -2 1 -2 0 -1 -3 5 -3 0 -6 0 -4 0 1 -1 -2 -2 1 0 1 0 0 -3 2 -4 2 -1 3 0 0 -1 0 -2 -4 -3 -3 -1 -4 0 -4 1 -1 0 0 3 -3 4 -4 1 0 0 0 0 0 3 3 4 1 0 -1 4 1 4 0 -1 -2 1 -1 -1 0 0 0 0 0 -3 -4 2 -5 5 -1 3 -5 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 -1 -1 1 0 1 1 0 -4 z M 429 693 l -4 1 -3 2 -2 4 1 3 0 0 0 1 2 3 0 3 0 0 0 1 -1 -1 -1 0 -1 1 4 2 3 6 2 2 -2 1 3 2 -2 1 0 0 0 0 -3 1 -4 1 1 -2 1 -1 -4 -1 3 -3 -4 -1 -3 -4 -3 1 -1 2 0 0 -1 0 0 0 -1 0 -1 -1 -2 -1 -1 2 0 0 -1 0 -3 -1 0 5 -3 2 -3 2 -7 4 0 4 2 -3 5 -2 4 -2 0 -1 0 -1 1 -1 1 1 1 0 0 0 1 -1 2 1 0 0 -1 4 1 4 0 0 0 0 1 -1 0 1 0 0 0 1 2 1 -4 3 -2 2 -1 0 0 0 -1 0 0 0 0 0 0 0 0 0 -4 -1 -1 2 4 2 -2 3 -1 5 -1 7 1 6 1 -2 0 0 1 0 1 -1 0 0 0 0 -1 -1 1 0 0 0 0 -2 -1 -1 4 2 1 5 -1 -2 -1 4 -2 4 -4 2 -6 0 0 -4 5 -1 -5 -3 -1 -3 -1 2 0 -1 -1 2 -2 -1 -1 -1 -2 1 -2 -1 -1 1 -1 -1 -1 0 1 0 -1 -3 4 -1 4 -1 0 -1 -3 -5 -1 -4 -1 1 0 -1 -1 0 0 0 -1 2 -2 3 0 3 0 0 0 0 0 0 0 0 0 0 -4 2 -2 -1 0 0 0 -1 -1 -1 1 -1 0 -1 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 -4 0 -6 0 -2 7 -6 1 -4 2 0 1 -3 -4 -3 -2 3 -1 -2 0 -2 0 0 -1 -1 0 1 0 -1 1 0 0 -4 -1 -5 -4 -1 -3 0 1 2 -2 1 -2 -1 -2 0 -4 1 -2 0 0 0 0 -2 -2 0 -5 1 -4 2 -3 -3 2 -2 5 -1 4 0 0 0 0 0 0 0 0 -2 0 0 0 1 -3 -2 0 1 0 -3 1 2 2 2 4 0 3 -1 0 0 1 -1 1 1 0 0 0 0 -1 -1 0 -1 -1 -2 2 -3 -2 0 0 -1 0 0 0 0 1 0 0 -3 1 -1 -2 0 0 0 -2 -4 -3 1 3 -1 2 1 0 0 0 -1 1 1 0 0 1 0 0 0 0 0 0 0 0 0 1 -2 1 -4 5 -5 0 -2 -2 0 0 0 0 -1 1 -5 2 -4 1 0 0 -1 -1 -2 -5 3 -6 0 -3 -1 -2 -3 -5 -4 -3 -3 -4 -4 -4 0 -4 -4 -6 -5 -3 -4 -6 0 -8 -1 -4 -2 -3 -3 -8 4 -4 2 -3 -1 -4 0 0 0 0 0 -1 2 -3 3 -5 3 -3 1 -5 -4 -3 0 -5 -2 -8 -6 -6 2 -8 1 -3 2 -4 1 -8 2 -7 3 -3 0 -5 2 -8 5 -3 3 -4 3 -6 5 -2 6 -2 3 -2 4 -3 3 -5 3 -2 4 5 4 3 1 4 3 -1 1 0 5 3 7 2 8 0 5 2 1 0 1 0 1 4 2 4 5 4 3 3 2 4 1 7 -2 4 -1 0 0 0 -2 3 5 3 3 2 2 0 3 -2 8 -1 7 1 3 3 5 3 7 -1 7 -3 5 0 2 -3 3 -7 0 5 1 7 3 3 3 3 6 3 7 -2 8 1 7 2 8 0 6 -3 5 -1 4 -5 4 -3 3 -1 3 0 5 4 7 0 0 8 -5 5 4 4 3 2 2 0 0 0 1 0 3 -1 1 3 5 3 4 3 2 3 4 5 6 2 4 1 1 7 -2 3 0 0 0 3 -3 2 -7 0 -3 6 -1 5 -4 1 -6 3 -1 3 -3 -1 -2 0 -1 4 -4 6 -7 1 -6 2 -5 1 -1 6 0 5 -9 0 -4 1 2 2 5 4 1 3 -2 2 -3 2 -4 1 2 -2 0 -1 -4 -1 -2 6 -3 -2 -1 -3 -3 1 -2 -1 -2 0 -1 1 0 -3 -2 -6 -2 3 -1 1 0 -1 -1 -1 0 -1 -1 1 -3 -3 -3 2 1 0 -1 0 1 1 -1 0 -2 -5 -2 -6 4 -6 z " />
								<path id="CD50" class="OUTLINE"
						d=" M 115 1034 l 5 2 3 2 5 3 6 2 3 5 -1 4 0 0 1 0 0 0 1 1 2 1 -2 1 3 0 -1 7 -2 1 -3 7 -4 4 -3 5 -3 5 -5 4 -5 0 -3 1 0 0 0 0 0 0 -1 1 -2 1 0 1 -3 1 -8 2 -4 0 0 0 -2 0 -3 2 -6 3 -7 0 -8 1 -7 1 -7 -1 -8 0 -7 0 -6 1 -3 5 -6 -1 -3 -4 -4 -3 -5 -2 -2 -4 -2 -8 2 -7 3 -4 1 0 1 0 3 -3 4 -3 3 -5 3 -4 4 -2 6 -4 4 -2 5 -1 6 -1 7 -3 4 -2 4 -1 5 -1 -1 1 4 -1 7 -1 6 -2 3 -3 1 1 0 0 1 0 0 1 0 0 1 0 2 -1 2 0 1 0 0 0 1 0 6 -1 z " />
								</g>
								
								<g>
								<text id="LCD11" class="TEXT" x="155" y="210">▼서울</text>
								<text id="LCD26" class="TEXT" x="500" y="695">▼부산</text>
								<text id="LCD27" class="TEXT" x="415" y="565">▼대구</text>
								<text id="LCD28" class="TEXT" x="60" y="175">▼인천</text>
								<text id="LCD29" class="TEXT" x="125" y="705">▼광주</text>
								<text id="LCD30" class="TEXT" x="220" y="460">▼대전</text>
								<text id="LCD31" class="TEXT" x="530" y="620">▼울산</text>
								<text id="LCD36" class="TEXT" x="190" y="415">▼세종</text>
								<text id="LCD41" class="TEXT" x="215" y="245">▼경기도</text>
								<text id="LCD42" class="TEXT" x="360" y="175">▼강원도</text>
								<text id="LCD43" class="TEXT" x="260" y="380">▼충청북도</text>
								<text id="LCD44" class="TEXT" x="95" y="445">▼충청남도</text>
								<text id="LCD45" class="TEXT" x="170" y="590">▼전라북도</text>
								<text id="LCD46" class="TEXT" x="135" y="760">▼전라남도</text>
								<text id="LCD47" class="TEXT" x="435" y="460">▼경상북도</text>
								<text id="LCD48" class="TEXT" x="365" y="670">▼경상남도</text>
								<text id="LCD50" class="TEXT" x="60" y="1070">▼제주도</text>
								</g>
				</svg>
				<!-- 지도 SVG 끝 -->



			</div>
			<!-- 지도 영역 끝 -->



		</div>
		<!-- wrap 끝 -->

	</section>

	<!-- bottom.jsp -->
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>
</html>