<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/map_detail.css'/>"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
		<!-- js -->
		<script src="<c:url value='/js/map_detail.js'/>"></script>
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
		
	</head>
	
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<!-- section.jsp -->
		<section class="section">
		
				<div id="background">
				</div>
				
		
				<div class="section_wrap">
			
			
				<div id="map_detail_title">
				<h2>어린이 직업 체험 장소</h2>
				</div>	
				
				<div id="map_detail_sub_title"><h4>${map. mapJobName}</h4></div>
				
				<div id="background_star">
				<img src="<c:url value='/images/map_background_star.png'/>">
				</div>
											
				<div id="map_info">
				
					<span id="map_bookmark">
					<img src="<c:url value='/images/bookmark.png'/>">
					</span>
				
					<div id="map_info_logo">
					<img src="<c:url value='${map. mapJobLogo}'/>">
					</div>
					
					<div id="map_info_detail">
					
					<ul>					
						<li>
						<div id="map_info_detail_line">
						<strong>체험 장소 이름</strong>
						<div>${map. mapJobName}</div>
						</div>
						</li>
						
						<li>
						<div id="map_info_detail_line">
						<strong>체험 장소 주소</strong>
						<div>${map. mapJobAdd}</div>
						</div>
						</li>
						
						<li>
						<div id="map_info_detail_line">
						<strong>문의처</strong>
						<div>${map. mapJobPH}</div>
						</div>
						</li>
						
						<li>
						<div id="map_info_detail_line">
						<strong>홈페이지 주소</strong>
						<div><a href="<c:url value='${map. mapJobLink}'/>">${map. mapJobLink}</a></div>
						</div>
						</li>
					</ul>
					
					</div>
					
				</div>
				
				<%-- <div id="background_donut">
				<img src="<c:url value='/images/map_american_food.png'/>">
				</div> --%>
				
				
				<div id="map_category">
				
				<div id="map_category_img">
				<img src="<c:url value='${map.categoryImg }'/>">
				</div>
				
				<div id="map_category_img">
				<img src="<c:url value='${map.categoryImg }'/>">
				</div>
				
				<div><b>이 체험 장소는 '${map.categoryName }', '${map.categoryName }' 유형에게 알맞는 장소예요!</b></div>
				
				</div>
				
				
				<div id="speech_bubble_box1">
				<div id="speech_bubble1">여기에서는 어떤 체험을 할 수 있을까?</div>
				<div id="speech_bubble_char1">
				<img src="<c:url value='/images/map_bubble_duck.png'/>">
				</div>
				</div>
				
				<div id="map_experience">
				
				<img src="<c:url value='${map.mapJobImg1 }'/>">
				<img src="<c:url value='${map.mapJobImg2 }'/>">
				<img src="<c:url value='${map.mapJobImg3 }'/>">
				
				<%-- <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="<c:url value='/images/sample1.png'/>" class="d-block w-100">
				    </div>
				    <div class="carousel-item">
				      <img src="<c:url value='/images/sample2.png'/>" class="d-block w-100">
				    </div>
				    <div class="carousel-item">
				       <img src="<c:url value='/images/sample3.png'/>" class="d-block w-100">
				    </div>
				  </div>  
				  <!-- 슬라이드 버튼 -->
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div> --%>
				
				</div>
				
				
														
				<div id="speech_bubble_box2">
				<div id="speech_bubble_char2">
				<img src="<c:url value='/images/map_bubble_rabbit.png'/>">
				</div>
				<div id="speech_bubble2">우와~ 어디에 있는 곳이지?</div>
				</div>
				
				<div id="map_api">
				    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=hao62ejqqn"></script>
					<div id="map" style="width:100%; height:500px;"></div>
					
					<script>
						var map = new naver.maps.Map('map',{
						  center: new naver.maps.LatLng(37.3405761, 127.3164609),
						  zoom: 30
						});

						var marker = new naver.maps.Marker({
						  position: new naver.maps.LatLng(37.3405761, 127.3164609),
						  map: map
						});
					</script>
				
				</div>
				
				
				</div> <!-- wrap 끝 -->
			
		</section>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>