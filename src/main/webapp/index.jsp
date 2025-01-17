<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>우리동네 온라인서점, 바로보네</title>
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/main.css" />

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.0.min.js"></script>
</head>
<body>
	<div>
		<!-- 1 -->
		<header>
			<!-- 로그인헤더 -->
			<div id="bt_line">
				<div id="hd_top">
					<ul class="top_left">
						<li><a href="#">서점찾기</a></li>
						<li><a href="#">GoWith</a> <em>바로보네 제휴 서점 가입 안내</em></li>
					</ul>
					<ul class="top_right">
						<li><a href="#"><img src="img\img_kakao_channel_main.png" /></a>
						</li>

						<li class="lgnctgr"><c:choose>
								<c:when test="${not empty loginUser.username}">
									<a href="memberUpdate.do?userid=${loginUser.userid}">${loginUser.username}
										님</a>
								</c:when>
								<c:otherwise>
									<a href="login.do">로그인</a>
								</c:otherwise>
							</c:choose></li>

						
						<li class="lgnctgr"><c:choose>
								<c:when test="${not empty loginUser.username}">
									<a href="logout.do">로그아웃</a>
								</c:when>
								<c:otherwise>
									<a href="join.do">회원가입</a>
								</c:otherwise>
							</c:choose></li>


						<li class="lgnctgr">
							<c:choose>
								<c:when test="${empty loginUser.username }">
									
									<a href="login.do" onclick="alert('로그인 후 이용가능')"> 
										게시판
									</a>
									<script type="text/javascript"> aler</script>
								</c:when>
								<c:otherwise>
									
									<a href="toBoard.jsp"> 게시판 </a>
									
								</c:otherwise>
								</c:choose>
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
		<div id="bcr">
			<div id="wrap">
				<!-- 동그라미 추천책 -->
				<div id="container">
					<div class="obook"></div>
					<div class="obook"></div>
					<div class="obook"></div>
					<div class="obook"></div>
					<div class="obook"></div>
				</div>

				<!-- 슬라이드 -->
				<div id="slideWrap">
					<div class="slide">
						<ul class="slide_box">
							<li><a href="#"><img src="img\slideimg1.jpg" /></a></li>
							<li><a href="#"><img src="img\slideimg2.jpg" /></a></li>
							<li><a href="#"><img src="img\slideimg3.jpg" /></a></li>
							<li><a href="#"><img src="img\slideimg4.jpg" /></a></li>
							<li><a href="#"><img src="img\slideimg5.jpg" /></a></li>
						</ul>
						<span class="prev">&lt;</span> <span class="next">&gt;</span>
					</div>

					<article class="book_box">
						<ul class="side_tab">
							<li>오늘의 책</li>
							<li>특가상품</li>
							<li>편집자추천</li>
						</ul>
						<ul class="side_itm" id="itm1">
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<ul class="side_itm" id="itm2">
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<ul class="side_itm" id="itm3">
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</article>
				</div>

				<!-- 책 -->

				<!-- 베스트셀러 -->
				<section id="best">
					<div class="bk_lft">
						<ul>
							<li>
								<h2>베스트셀러</h2> <span>어떤 책을 많이 읽을까?</span>
								<p>
									<a href="#">전체보기 ></a>
								</p>
							</li>
						</ul>
					</div>

					<!-- 책 양식 -->
					<div class="bk_rit">
						<ul class="best">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
				</section>

				<!-- 새로나온책 -->
				<section id="new">
					<div class="bk_lft">
						<h2>새로나온책</h2>
						<span>새로 나온 책 뭐가 있지? </span>

						<div class="slideicon">
							<span class="prev1">&lt;</span> <span class="next1">&gt;</span>
						</div>
					</div>
					<div class="bk_rit">
						<div class="new_list">
							<ul>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
					</div>
				</section>

				<!-- 서점현황 -->
				<div id="current">
					<img src="img\current.png" id="back" />
					<h2>서점현황</h2>
					<h4>이달의 서점/우리동네서점/GoWith</h4>
					<ul class="cclcate">
						<li>
								<div class="ccl"><a href="">
									<img src="img\circleimg1.jpg" alt="" /></a>
								</div>
								<h3>이달의 서점</h3>
								<h4>이루리북스을 소개합니다.</h4>
						</li>
						<li>
								<div class="ccl"><a href="">
									<img src="img\circleimg2.jpg" alt="" /></a>
								</div>
								<h3>우리동네서점찾기</h3>
								<h4>가까운 서점을 쉽게 찾아보세요!</h4>
						</li>
						<li>
								<div class="ccl"><a href="">
									<img src="img\circleimg3.jpg" alt="" /></a>
								</div>
								<h3>GoWith</h3>
								<h4>서점 홍보 및 가입 절차 안내</h4>
						</li>
					</ul>
				</div>

				<!-- 편집자 추천 -->
				<section id="recommend">
					<div class="bk_lft">
						<h2>편집자추천</h2>
						<span>어떤 책을 읽어볼까?</span>
					</div>
					<div class="rcmnd_pk">
						<ul class="rcmnd_box">
							<li>가정/건강/생활</li>
							<li>유아</li>
							<li>어린이</li>
							<li>인문</li>
							<li>예술/대중문화</li>
							<li>경제/경영</li>
							<li>문학</li>
							<li>청소년</li>
						</ul>
					</div>
					<div class="bk_rit">
						<ul class="recommend_list1" id="rlist">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<ul class="recommend_list2" id="rlist">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<ul class="recommend_list3" id="rlist">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<ul class="recommend_list4" id="rlist">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<ul class="recommend_list5" id="rlist">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<ul class="recommend_list6" id="rlist">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<ul class="recommend_list7" id="rlist">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<ul class="recommend_list8" id="rlist">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
				</section>

				<!-- 카드스토리 -->
				<section id="story">
					<h3>BAROVONE 카드스토리</h3>

					<h4>카드스토리로 책을 읽어 보세요!</h4>

					<div class="card_icon">
						<img src="img\icon-cardstory.png" alt="" />
					</div>

					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</section>
			</div>

			<!-- 9 -->

			<!-- 공지 -->
			<div id="notice">
				<div class="row">
					<div class="md1">
						<div class="head1">
							<h3>공지사항</h3>
							<br /> <br />
							<button type="button">
								전체보기 ><i class="bottomright"></i>
							</button>
						</div>
						<div class="deliver1">
							<ul>
								<li><a href="">2024년 출판사 배송사 여름 휴가 배송일정 안내 (8월 1일~2일)</a></li>
								<li><a href="">2024년 설 연휴 배송일정 안내</a></li>
								<li><a href="">2023년 추석 및 임시 공휴일 배송일정 안내</a></li>
							</ul>
						</div>
					</div>
					<div class="md">
						<div class="head">
							<h3>FAQ</h3>
							<br /> <br />
							<button type="button">전체보기 ></button>
						</div>
						<div class="deliver">
							<ul>
								<li><a href="">[상품]책 단면이 울퉁불퉁한데 반품/교환이 가능한가요?</a></li>
								<li><a href="">[상품]판매상태 품절(절판)과 일시품절은 어떻게 다른가요?</a></li>
								<li><a href="">[상품]주문할 때 정상적으로 판매 중이었던 상품이 왜 품절(일시품절/절</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<footer>
				<article id="copyright">
					<div class="btm_logo">
						<img src="img\footer_bi_new.png" alt="" />
					</div>
					<div class="btm_mid">
						<span class="btm_mid1">(주)웅진북센 | 대표: 이정훈 | 주소: [10881]경기도
							파주시 문발로 77 | 개인정보보호책임자: 양상융 yangsy@wjbooxen.com<br />
							사업자등록번호:128-81-22320 사업자정보확인 | 통신판매업신고번호: 제2014-경기파주-5439호
						</span> <span class="btm_mid2">Copyright© (주)웅진북센 All Right
							Reserved.</span> <span class="btm_mid3"> <ins>Customer
								Center</ins> <strong>031-955-2840</strong> <i> AM 09:00 ~ PM
								18:00(점심 12:00 ~ 13:00) 토,일요일 및 공휴일 휴무 </i>
						</span>
					</div>
					<section class="btm_btm">
						<div class="ft_nav">
							<ul class="ft_menu">
								<li><a href="#">회사방침</a></li>
								<li><a href="#">이용약관</a></li>
								<li><a href="#">개인정보처리방침</a></li>
								<li><a href="#">바로보네서점</a></li>
								<li><a href="#">법인대량구매</a></li>
								<li><a href="#">고객센터</a></li>
								<li><a href="#">서점관리자</a></li>
							</ul>
						</div>
						<img src="img\escrow_43x43_gray.png" />
					</section>
				</article>
			</footer>
		</div>
	</div>
	<script type="text/javascript" src="js/common.js"></script>
</body>
</html>
