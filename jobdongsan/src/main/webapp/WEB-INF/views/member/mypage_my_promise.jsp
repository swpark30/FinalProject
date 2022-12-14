<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<!-- head.jsp -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<!-- css -->
<link rel="stylesheet"
	href="<c:url value='/css/mypage_my_promise.css' />" />
<!-- js -->
<script src="<c:url value='/js/mypage_my_promise.js' />"></script>
</head>
<body>
	<!-- top.jsp -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<section class="section">
		<div class="image_box">
			<div class="back_img1"></div>
		</div>


		<div class="section_wrap">
			<div class="interest_title">
				<p>내가 작성한 다짐</p>
			</div>
			<img src="images/interest_man.png" class="interest_man">
			<!-- form 태그 -->
			<form id="my_promise_submit" method="post"
				action="<c:url value='/my_promise_text'/>">

				<div class="view_box">
						<div class="inner_view_box">
						
							<!----------------- 컨텐츠 내용 ------------------->
							<div class="contents_wrap">
								<div class="mem_info">
									<input type="text" name="school" size="19" value="${arr[0] }" readonly>
									<input type="text" name="grade" size="8" value="${arr[1] }" readonly>
									<input type="text" name="class" size="8" value="${arr[2] }" readonly>
									<input type="text" name="name" size="16" value="${arr[3] }" readonly>
								
								</div>
								<div class="contents_title">자기이해</div>
								<div class="friends_think wrap_box">
									<div class="list_title">친구의 생각</div>
									<ul class="list_sentence">
										<li>나의 친구들은 나를 <input type="text" name="friends_think"
											size="14" value="${arr[4] }" readonly> 라고
											부른다.
										</li>
										<li>나의 친구들은 나에게 <input type="text" name="friends_think2"
											size="14" value="${arr[5] }" readonly> 잘한다고 한다.
										</li>
										
									</ul>
								</div>
								<div class="my_think wrap_box">
									<div class="list_title">나의 생각</div>
									<ul class="list_sentence">
										<li>나는 <input type="text" name="my_think" size="45"
											value="${arr[6] }" readonly> 잘한다.
										</li>
										<li>나는 <input type="text" name="my_think2" size="45"
											value="${arr[7] }" readonly> 잘한다.
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="inner_view_box">
							<div class="contents_wrap2">
								<div class="my_future wrap_box">
									<div class="list_title">나의 미래</div>
									<ul class="list_sentence">
										<li>나의 꿈은 <input type="text" name="my_future" size="35"
											value="${arr[8] }" readonly> 이다.
										</li>
										<li>내가 원하는 직업은 <input type="text" name="my_future2"
											size="20" value="${arr[9] }" readonly> 이다.
										</li>
									</ul>
								</div>
								<div class="my_future_plan wrap_box">
									<div class="list_title">나의 미래를 위한 약속</div>
									<ul class="list_sentence">
										<li>나는 집에서 <input type="text" name="my_plan" size="40"
											value="${arr[10] }" readonly> 약속합니다.
										</li>
										<li>나는 학교에서 <input type="text" name="my_plan2" size="40"
											value="${arr[11] }" readonly> 약속합니다.
										</li>
									</ul>
								</div>
								<div class="my_promise wrap_box">
									<div class="list_title">나의 다짐</div>
									<ul class="list_sentence">
										<li>나는 <input type="text" name="my_promise" size="55"
											value="${arr[12] }" readonly> 다짐합니다.
										</li>
									</ul>
								</div>
							</div>
						</div>
					
					<%-- </c:forEach> --%>
				
				</div>
			</form>
		</div>

	</section>
	<!-- bottom.jsp -->
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>
</html>