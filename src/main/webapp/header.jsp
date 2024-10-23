<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>
<link rel ="stylesheet" type="text/css" href ="css/common.css">

</head>

<body>

<header>
			<!-- 로그인헤더 -->
			<div id="bt_line">
				<div id="hd_top">
					<ul class="top_left">
						<li><a href="#">서점찾기</a></li>
						<li><a href="#">GoWith</a> <em>바로보네 제휴 서점 가입 안내</em></li>
					</ul>
					<ul class="top_right">
						<li>
									<a href="#"><img src="img\img_kakao_channel_main.png" /></a>
						</li>
						
						<li class="lgnctgr">
							<c:choose>
								<c:when test="${not empty loginUser.username}">
									<a href="memberUpdate.do?userid=${loginUser.userid}">${loginUser.username} 님</a>
								</c:when>
								<c:otherwise>
									<a href="login.do">로그인</a>
								</c:otherwise>
							</c:choose>
						</li>
						
						
						<li class="lgnctgr">
							<c:choose>
								<c:when test="${not empty loginUser.username}">
									<a href="logout.do">로그아웃</a>
								</c:when>
								<c:otherwise>
									<a href="join.do">회원가입</a>
								</c:otherwise>
							</c:choose>
						
						</li>
						
						
						<li class="lgnctgr">
								<a href="toBoard.jsp">게시판</a>
						</li>
					</ul>
				</div>
			</div>

			<!-- 검색헤더 -->
			<div id="hd_mid">
				<ul class="top_logo">
					<li><a href="index.jsp"><img src="img\borovone_logo1.png" /></a></li>
					<li><a href="index.jsp"><img src="img\borovone_logo2.png" /></a></li>
				</ul>
				<div class="search">
					<input type="search" id="search_box" /> <a href="#"><img
						src="img\icon_search2.png" /></a>
				</div>
			</div>

			<!-- 카테고리헤더 -->
			<div id="hd_btm">
				<ul class="menu">
					<li><a href=""><img src="img\icon_category.png"
							id="cateicon" /></a>
						<div class="panel_box">
							<div class="panel">
								<ul class="sub1">
									<li><a href="#">문학 ></a></li>
									<li><a href="#">경제/경영 ></a></li>
									<li><a href="#">인문 ></a></li>
									<li><a href="#">예술/대중문화 ></a></li>
									<li><a href="#">종교 ></a></li>
									<li><a href="#">역사 ></a></li>
									<li><a href="#">인물 ></a></li>
									<li><a href="#">사회 ></a></li>
									<li><a href="#">과학 ></a></li>
									<li><a href="#">유아 ></a></li>
									<li><a href="#">어린이 ></a></li>
									<li><a href="#">청소년 ></a></li>
									<li><a href="#">학습/참고서 ></a></li>
									<li><a href="#">수험서/자격증 ></a></li>
									<li><a href="#">컴퓨터/인터넷 ></a></li>
									<li><a href="#">잡지 ></a></li>
									<li><a href="#">만화 ></a></li>
									<li><a href="#">대학교재 ></a></li>
									<li><a href="#">여행/지도 ></a></li>
									<li><a href="#">취미/레저 ></a></li>
									<li><a href="#">가정/건강/생활 ></a></li>
									<li><a href="#">외국어/어학 ></a></li>
									<li><a href="#">사전 ></a></li>
									<li><a href="#">외국도서 ></a></li>
								</ul>
							</div>
						</div></li>
					<li><a href="#">베스트셀러</a></li>
					<li><a href="#">새로나온책</a></li>
					<li><a href="#">편집자추천</a></li>
					<li><a href="#">이벤트</a></li>
					<li><a href="#">테마추천</a></li>
					<li><a href="#">바로보네서점</a></li>
					<li><a href="#">특가</a></li>
				</ul>

				<ul class="top_icon">
					<li><a href="#"><img src="img\top_icon04.png" /></a></li>
					<li><a href="#"><img src="img\top_icon03.png" /></a></li>
					<li><a href="#"><img src="img\top_icon02.png" /></a></li>
					<li><a href="#"><img src="img\top_icon01.png" /></a></li>
				</ul>
			</div>
		</header>
<script type="text/javascript" src="js/common.js"></script>

</body>

</html>