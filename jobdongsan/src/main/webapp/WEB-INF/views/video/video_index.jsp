<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/video_index.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/video_index.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="section">
			<div class="job_background">
				<%-- <img src="<c:url value='/images/background.png'/>"> --%>
			</div>
			<div id="wrap">
				<div class="video_head">
					<div class="video_headname">
						어린이 직업 진로 동영상
					</div>
				</div>
				<div class="empty_box"></div>
				
				<c:if test="${not empty memId }">
				<div class="user_category">
					<div class="user_category_title">
						<div class="user_category_img">
							<c:set var="doneLoop" value="false" />
							<c:forEach items="${videoListtt }" var="test" >
							<c:if test="${not doneLoop}">
								<img src="<c:url value='${test.categoryImg }'/>">
							<c:set var="doneLoop" value="true"/>
							</c:if>
							</c:forEach>
						</div>
						<div class="user_category_name">
							<c:set var="doneLoop" value="false" />
							<c:forEach items="${videoListtt }" var="test" >
							<c:if test="${not doneLoop}">
								<c:if test="${test.categoryNo eq '1' }">
									<b class="a">뚝딱이</b> 유형 영상
								</c:if>
								<c:if test="${test.categoryNo eq '2' }">
									<b class="b">탐험이</b> 유형 영상
								</c:if>
								<c:if test="${test.categoryNo eq '3' }">
									<b class="c">멋쟁이</b> 유형 영상
								</c:if>
								<c:if test="${test.categoryNo eq '4' }">
									<b class="d">친절이</b> 유형 영상
								</c:if>
								<c:if test="${test.categoryNo eq '5' }">
									<b class="e">씩씩이</b> 유형 영상
								</c:if>
								<c:if test="${test.categoryNo eq '6' }">
									<b class="f">성실이</b> 유형 영상
								</c:if>
							<c:set var="doneLoop" value="true"/>
							</c:if>
							</c:forEach>
						</div>
						<div class="video_more_btn">
							<c:set var="doneLoop" value="false" />
							<c:forEach items="${videoListtt }" var="test" >
							<c:if test="${not doneLoop}">
							<button class="videobtn1" onclick="location.href='<c:url value='/video_category/${test.categoryNo }'/>'">더보기</button >
							<c:set var="doneLoop" value="true"/>
							</c:if>
							</c:forEach>
						</div>
					</div>
					<div class="user_category_cont">
						<%
							int counttt = 0;
						%>
						<c:set var="doneLoop" value="false" />
						<c:forEach items="${videoListtt }" var="test" >
						<c:if test="${not doneLoop}">
							<div class="video_jinro_cont2">
								<div class="video_test">
									<a href="<c:url value='/video_detail/${test.videoNo }'/>" >
										<img class="video_thumbnail" src="<c:url value='${test.videoThumbnail }'/>">
										<img class="video_play" src="<c:url value='/images/video_play.png'/>">
										<div class="video_test_name">
											${test.videoName }
										</div>
									</a>
								</div>
							</div>
						<%
							counttt++;
							if(counttt == 4) {
						%>
						<c:set var="doneLoop" value="true"/>
						<%
							}
						%>
						</c:if>
						</c:forEach>
					</div>
				</div>
				</c:if>
				
				<div class="video_dream_jinro">
					<div class="video_jinro_title">
						<div class="video_jinro_img">
							<img src="<c:url value='/images/video_rocket.png'/>">
						</div>
						<div class="video_jinro_name">
							드림주니어-진로탐사대 
						</div>
						<div class="video_more_btn">
							<button class="videobtn1" onclick="location.href='<c:url value='/video_subject/1'/>'">더보기</button >
						</div>
					</div>
					<div class="video_jinro_cont">
						<%
							int count = 0;
						%>
						<c:set var="doneLoop" value="false" />
						<c:forEach items="${videoList }" var="video" >
						<c:if test="${not doneLoop}">
						<c:if test="${video.videoCtg eq '진로탐사대' }">
							<div class="video_jinro_cont2">
								<div class="video_test">
									<a href="<c:url value='/video_detail/${video.videoNo }'/>" >
										<img class="video_thumbnail" src="<c:url value='${video.videoThumbnail }'/>">
										<img class="video_play" src="<c:url value='/images/video_play.png'/>">
										<div class="video_test_name">
											${video.videoName }
										</div>
									</a>
								</div>
							</div>
						<%
							count++;
							if(count == 4) {
						%>
						<c:set var="doneLoop" value="true"/>
						<%
							}
						%>
						</c:if>
						</c:if>
						</c:forEach>
					</div>
				</div>
				<div class="video_dream_tam">
					<div class="video_tam_title">
						<div class="video_tam_img">
							<img src="<c:url value='/images/video_tam.png'/>">
						</div>
						<div class="video_tam_name">
							드림주니어-탐나는진로탐사대
						</div>
						<div class="video_more_btn">
							<button class="videobtn1" onclick="location.href='<c:url value='/video_subject/2'/>'">더보기</button >
						</div>
					</div>
					<div class="video_tam_cont">
						<%
							int count2 = 0;
						%>
						<c:set var="doneLoop" value="false" />
						<c:forEach items="${videoList }" var="video" >
						<c:if test="${not doneLoop}">
						<c:if test="${video.videoCtg eq '탐나는진로탐사대' }">
							<div class="video_jinro_cont2">
								<div class="video_test">
									<a href="<c:url value='/video_detail/${video.videoNo }'/>" >
										<img class="video_thumbnail" src="<c:url value='${video.videoThumbnail }'/>">
										<img class="video_play" src="<c:url value='/images/video_play.png'/>">
										<div class="video_test_name">
											${video.videoName }
										</div>
									</a>
								</div>
							</div>
							<%
								count2++;
								if(count2 == 4) {
							%>
							<c:set var="doneLoop" value="true"/>
							<%
								}
							%>
						</c:if>
						</c:if>
						</c:forEach>
					</div>
				</div>
				<div class="video_dream_jr">
					<div class="video_jr_title">
						<div class="video_jr_img">
							<img src="<c:url value='/images/video_jr.png'/>">
						</div>
						<div class="video_jr_name">
							드림주니어
						</div>
						<div class="video_more_btn">
							<button class="videobtn1" onclick="location.href='<c:url value='/video_subject/3'/>'">더보기</button >
						</div>
					</div>
					<div class="video_jr_cont">
						<%
							int count3 = 0;
						%>
						<c:set var="doneLoop" value="false" />
						<c:forEach items="${videoList }" var="video" >
						<c:if test="${not doneLoop}">
						<c:if test="${video.videoCtg eq '드림주니어' }">
							<div class="video_jinro_cont2">
								<div class="video_test">
									<a href="<c:url value='/video_detail/${video.videoNo }'/>" >
										<img class="video_thumbnail" src="<c:url value='${video.videoThumbnail }'/>">
										<img class="video_play" src="<c:url value='/images/video_play.png'/>">
										<div class="video_test_name">
											${video.videoName }
										</div>
									</a>
								</div>
							</div>
							<%
								count3++;
								if(count3 == 4) {
							%>
							<c:set var="doneLoop" value="true"/>
							<%
								}
							%>
						</c:if>
						</c:if>
						</c:forEach>
					</div>
				</div>
				<div class="video_jangbogo">
					<div class="video_jang_title">
						<div class="video_jang_img">
							<img src="<c:url value='/images/video_jang.png'/>">
						</div>
						<div class="video_jang_name">
							해양직업의 세계-꿈꾸는 장보고
						</div>
						<div class="video_more_btn">
							<button class="videobtn1" onclick="location.href='<c:url value='/video_subject/4'/>'">더보기</button >
						</div>
					</div>
					<div class="video_jang_cont">
						<%
							int count4 = 0;
						%>
						<c:set var="doneLoop" value="false" />
						<c:forEach items="${videoList }" var="video" >
						<c:if test="${not doneLoop}">
						<c:if test="${video.videoCtg eq '해양직업의 세계 - 꿈꾸는 장보고' }">
							<div class="video_jinro_cont2">
								<div class="video_test">
									<a href="<c:url value='/video_detail/${video.videoNo }'/>" >
										<img class="video_thumbnail" src="<c:url value='${video.videoThumbnail }'/>">
										<img class="video_play" src="<c:url value='/images/video_play.png'/>">
										<div class="video_test_name">
											${video.videoName }
										</div>
									</a>
								</div>
							</div>
							<%
								count4++;
								if(count4 == 4) {
							%>
							<c:set var="doneLoop" value="true"/>
							<%
								}
							%>
						</c:if>
						</c:if>
						</c:forEach>
					</div>
				</div>
				<div class="video_mirae">
					<div class="video_mirae_title">
						<div class="video_mirae_img">
							<img src="<c:url value='/images/video_mirae.png'/>">
						</div>
						<div class="video_mirae_name">
							미래직업가이드
						</div>
						<div class="video_more_btn">
							<button class="videobtn1" onclick="location.href='<c:url value='/video_subject/5'/>'">더보기</button >
						</div>
					</div>
					<div class="video_mirae_cont">
						<%
							int count5 = 0;
						%>
						<c:set var="doneLoop" value="false" />
						<c:forEach items="${videoList }" var="video" >
						<c:if test="${not doneLoop}">
						<c:if test="${video.videoCtg eq '미래직업 가이드' }">
							<div class="video_jinro_cont2">
								<div class="video_test">
									<a href="<c:url value='/video_detail/${video.videoNo }'/>" >
										<img class="video_thumbnail" src="<c:url value='${video.videoThumbnail }'/>">
										<img class="video_play" src="<c:url value='/images/video_play.png'/>">
										<div class="video_test_name">
											${video.videoName }
										</div>
									</a>
								</div>
							</div>
							<%
								count5++;
								if(count5 == 4) {
							%>
							<c:set var="doneLoop" value="true"/>
							<%
								}
							%>
						</c:if>
						</c:if>
						</c:forEach>
					</div>
				</div>
				<div class="video_e">
					<div class="video_e_title">
						<div class="video_e_img">
							<img src="<c:url value='/images/video_e.png'/>">
						</div>
						<div class="video_e_name">
							창의적 진로개발-지식채널e
						</div>
						<div class="video_more_btn">
							<button class="videobtn1" onclick="location.href='<c:url value='/video_subject/6'/>'">더보기</button >
						</div>
					</div>
					<div class="video_e_cont">
						<%
							int count6 = 0;
						%>
						<c:set var="doneLoop" value="false" />
						<c:forEach items="${videoList }" var="video" >
						<c:if test="${not doneLoop}">
						<c:if test="${video.videoCtg eq '창의적 진로개발 지식채널e' }">
							<div class="video_jinro_cont2">
								<div class="video_test">
									<a href="<c:url value='/video_detail/${video.videoNo }'/>" >
										<img class="video_thumbnail" src="<c:url value='${video.videoThumbnail }'/>">
										<img class="video_play" src="<c:url value='/images/video_play.png'/>">
										<div class="video_test_name">
											${video.videoName }
										</div>
									</a>
								</div>
							</div>
							<%
								count6++;
								if(count6 == 4) {
							%>
							<c:set var="doneLoop" value="true"/>
							<%
								}
							%>
						</c:if>
						</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>


































