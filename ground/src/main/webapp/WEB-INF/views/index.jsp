<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/site.jsp"%>
<title><%=site_title%></title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="include/header.jsp"%>

</head>
<body>

<%@ include file="include/nav.jsp"%>
<%@ include file="include/floating-left.jsp"%>
<%@ include file="include/floating-right.jsp"%>



<!-- 메인베너 -->	
<%@ include file="index_banner.jsp" %>

<div class="containter-fluid py-5" id="containter-body">
	<div class="row quick-row">
		<div class="col-12 text-center">
			<div class="swiper-container sw-main-quick-container">
				<ul class="swiper-wrapper">
					<li class="swiper-slide ml-2 mr-1 my-2"><a href="/counsel/online.do?cost=&imgchk=y"><img src="/img/main-quick-menu-001.png" alt="취업컨설팅" class="mobile-100-percent"></a></li>
					<li class="swiper-slide mx-1 my-2"><a href="/support/trcs.do"><img src="/img/main-quick-menu-002.png" alt="국민내일배움카드" class="mobile-100-percent"></a></li>
					<li class="swiper-slide mx-1 my-2"><a href="/counsel/online.do?cost=&imgchk=y"><img src="/img/main-quick-menu-003.png" alt="직무컨설팅" class="mobile-100-percent"></a></li>
					<li class="swiper-slide mx-1 my-2"><a href="/counsel/online.do?cost=&imgchk=y"><img src="/img/main-quick-menu-004.png" class="mobile-100-percent"></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="col-12 line-1-gray"></div>
<script>
if ($(window).width() > 768) {
	var quickMenuSwiper = new Swiper('.sw-main-quick-container', {
		slidesPerView : 4,
	});
}else if ($(window).width() > 470) {
	var quickMenuSwiper = new Swiper('.sw-main-quick-container', {
		slidesPerView : 3,
	});
}else{
	var quickMenuSwiper = new Swiper('.sw-main-quick-container', {
		slidesPerView : 2.2,
	});
}
</script>


<div class="container-fluid bg-light-gray pb-3 line-1-gray mobile-hidden" id="containter-body">
	<div class="row sub-row py-5">
		<div class="col-12">
			<div class="col-12 mb-3">
				<ul class="">
					<li class="col-2 float-left pr-4"><p class="font-28 font-bold">새소식</p></li>
					<li class="float-left pr-2"><label class="rad-div-20 border bg-navy font-white px-4 py-2 font-14">전체</label></li>
					<li class="float-left pr-2"><label class="rad-div-20 border bg-white px-4 py-2 font-14">공지사항</label></li>
					<li class="float-left pr-2"><a href=""><label class="rad-div-20 border bg-white font-black px-4 py-2 font-14">지상직채용</label></a></li>
					<li class="float-left pr-2"><a href=""><label class="rad-div-20 border bg-white font-black px-4 py-2 font-14">여행사채용</label></a></li>
				</ul>
			</div>
			<c:forEach items="${news}" var="news"  varStatus="status">
				<div class="col-3 px-1 my-1" id="mobile-100-percent">
					<div class="col-12 border bg-white py-3">
						<div class="font-gray font-14 mx-4 my-3-m">
							<c:choose>
								<c:when test="${news.section eq '01'}">지상직채용</c:when>
								<c:when test="${news.section eq '02'}">여행사채용</c:when>
								<c:otherwise>공지사항</c:otherwise>
							</c:choose>
							<span class="mx-2 font-6 font-pink"></span>
							<span class="mx-4 float-right mobile-show">→</span>
						</div>
						<div class="font-16 mx-4 my-2" style="line-height:20px;">
							<a href="<c:choose><c:when test="${news.section eq '00'}">/news/annview.do?idx=${news.idx}</c:when><c:otherwise>/support/recruitv.do?idx=${news.idx}&section=${news.section}</c:otherwise></c:choose>"><strong>${news.title}</strong>&nbsp;<label class="ml-2 hot-dot"></label></a>
						</div>
						<div class="font-gray font-14 mx-4 mb-3 mobile-hidden">${news.description}</div>
						<span class="mx-4 float-left mobile-hidden">→</span>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>

<div class="container-fluid mobile-show line-1-gray pt-3 pb-4">
	<div class="row sub-row py-1">
		<div class="col-12">
			<div class="col-6 font-28 font-bold mb-1">새소식</div>
			<div class="col-6 text-right mb-1 pt-2"><span class="mx-2">공지</span><span class="mx-2">지상직</span><span class="mx-2">여행사</span></div>
			<c:forEach items="${news}" var="news"  varStatus="status">
				<div class="col-12 pt-1 my-1">
					<span class="font-16 mr-1 font-blue">
						<c:choose>
								<c:when test="${news.section eq '01'}">지상직</c:when>
								<c:when test="${news.section eq '02'}">여행사</c:when>
								<c:otherwise>공지</c:otherwise>
							</c:choose>
					</span>
					<span class="font-16 my-2" style="line-height:20px;">
						<a href="<c:choose><c:when test="${news.section eq '01' || news.section eq '02'}">/support/recruitv.do?idx=${news.idx}&section=${news.section}</c:when><c:otherwise>/news/annview.do?idx=${news.idx}</c:otherwise></c:choose>"><strong>${fn:substring(news.title, 0, 23)}</strong>...&nbsp;<label class="ml-2 hot-dot"></label></a>
					</span>
				</div>
			</c:forEach>
		</div>
	</div>
</div>

<%@ include file = "include/subscribe.jsp" %>


<div class="container-fluid mobile-hidden">
	<div class="row sub-row">
		<div class="col-12 pt-5 pb-4">
			<p class="px-2 font-28 font-bold">교육과정안내<span class="mx-4 font-14 font-gray font-normal">크루팩토리의 직무에 특화된 교육과정</span></p>
<!-- 		<ul class="px-2 mb-3 mt-4">
				<li class="float-left pr-2"><label class="rad-div-20 bg-ivory font-black px-4 py-2"># 국내항공사</label></li>
				<li class="float-left pr-2"><label class="rad-div-20 bg-ivory font-black px-4 py-2"># 외국항공사</label></li>
				<li class="float-left pr-2"><label class="rad-div-20 bg-ivory font-black px-4 py-2"># 일본공항취업</label></li>
			</ul> -->
		</div>
	</div>
</div>
<div class="container-fluid mb-3 mobile-hidden">
	<div class="row sub-row">
		<div class="col-12 mb-5">
			<ul>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/education/spsp.do"><img src="/img/main-edu-img-0001.png" alt="국내항공사지상직교육과정" class="rad-div-10"></a>
					</div>
				</li>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/detail/detail09.do"><img src="/img/main-edu-img-0002.png" alt="외국항공사지상직교육과정" class="rad-div-10"></a>
					</div>
				</li>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/education/kogs.do"><img src="/img/main-edu-img-0003.png" alt="CRS/DCS자격증취득과정" class="rad-div-10"></a>
					</div>
				</li>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/education/travel.do"><img src="/img/main-edu-img-0004.png" alt="항공사지상직 All-Pass과정" class="rad-div-10"></a>
					</div>
				</li>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/education/osgs.do"><img src="/img/main-edu-img-0005.png" alt="여행사 취업 교육과정" class="rad-div-10"></a>
					</div>
				</li>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="https://www.crew-factory.com/ "><img src="/img/main-edu-img-0006.png" alt="국내항공사지상직교육과정" class="rad-div-10"></a>
					</div>
				</li>
			</ul>
		</div>	
	</div>
</div>



<div class="container-fluid mt-3 mobile-show">
	<div class="row sub-row">
		<div class="col-12 pb-3">
			<p class="font-28 font-bold">교육과정안내<span class="mx-4 font-14 font-gray font-normal">크루팩토리의 직무에 특화된 교육과정</span></p>
		</div>
	</div>
</div>
<div class="container-fluid mobile-show" id="containter-body">
	<div class="row sub-row mb-4">
		<div class="col-12">
			<ul class="">
				<li class="col-6 px-1 py-1 rad-div">
					<div class="col-12 rad-div">
						<a href="/education/spsp.do"><img src="/img/main-edu-img-mo-0001.png" alt="국내항공사지상직교육과정" width="100%" class="rad-div"></a>
					</div>
				</li>
				<li class="col-6 px-1 py-1 rad-div">
					<div class="col-12 rad-div">
						<a href="/detail/detail09.do"><img src="/img/main-edu-img-mo-0002.png" alt="외국항공사지상직교육과정" width="100%" class="rad-div"></a>
					</div>
				</li>
				<li class="col-6 px-1 py-1 rad-div">
					<div class="bg-navy col-12 rad-div">
						<a href="/education/kogs.do"><img src="/img/main-edu-img-mo-0003.png" alt="CRS/DCS자격증취득과정" width="100%" class="rad-div"></a>
					</div>
				</li>
				<li class="col-6 px-1 py-1 rad-div">
					<div class="bg-navy col-12 rad-div">
						<a href="/education/travel.do"><img src="/img/main-edu-img-mo-0004.png" alt="항공사지상직 All-Pass과정" width="100%" class="rad-div"></a>
					</div>
				</li>
				<li class="col-6 px-1 py-1 rad-div">
					<div class="bg-navy col-12 rad-div">
						<a href="/education/osgs.do"><img src="/img/main-edu-img-mo-0005.png" alt="여행사취업준비반" width="100%" class="rad-div"></a>
					</div>
				</li>
				<li class="col-6 px-1 py-1 rad-div">
					<div class="col-12">
						<a href="https://www.crew-factory.com/"><img src="/img/main-edu-img-mo-0006.png" alt="일본공항지상직채용반" width="100%" class="rad-div"></a>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>

<div class="containter-fluid mobile-hidden" style="background-color:#300643;" id="containter-body">
	<div class="row sub-row">
		<div class="col-12 py-5">
			<p class="px-2 font-28 font-bold font-white">합격생인터뷰<span class="mx-4 font-14 font-gray">실제합격한 크루팩토리합격생들의 리얼후기</span></p>
			<div class="col-12 my-4 swiper-container" id="sw-main-review">
				<div class="swiper-wrapper">
					<c:forEach items="${review}" var="review"  varStatus="status">
						<div class="swiper-slide">
							<div class="bg-white rad-div-10 review-container">
								<ul class="col-12" id="review-wrapper">
									<li class="col-4 float-left px-2 my-3 off-hide mobile-hidden"><img src="${review.thumbnail}" class="cricle-img"></li>
									<li class="col-8 float-left px-2 my-2 mobile-100-percent">
										<p class="font-14 font-gray mb-2">${review.section }</p>
										<p class="font-20"><strong>${review.title}</strong>&nbsp;<label class="ml-2 hot-dot"></label></p>
										<div class="bg-skyblue rad-div-10 mt-4 px-4 py-4 mobile-hidden">
											<p class="font-12-gs">${review.description}</p>
										</div>
										<div class="col-12 float-right text-right mobile-hidden">
											<span class="font-12 font-gray mr-3"><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd"/></span>
										</div>
										<div class="col-12 mt-2">
											<a href="/crewpeople/review.do"><span class="font-14 font-under-line font-bold">자세히보기</span></a>
										</div>
									</li>
								</ul>
								<ul class="col-12 mt-1 mobile-show">
									<li class="col-12 bg-skyblue rad-div-10 mt-2 px-4 py-4">
										<p class="font-14">${fn:substring(review.description, 0, 88)}...</p>
									</li>
									<li class="col-12">
										<div class="col-12 float-right text-right">
											<span class="font-12 font-gray mr-3"><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd"/></span>
										</div>
									</li>									
								</ul>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-12 text-center main-review-swiper-pagination"></div>
		</div>
	</div>
</div>

<div class="containter-fluid mobile-show" style="background-color:#300643;">
	<div class="row sub-row">
		<div class="col-12 pt-4 pb-3">
			<p class="pl-3 font-28 font-bold font-white">합격생인터뷰<span class="ml-4 font-14 font-gray">실제합격한 크루팩토리합격생들의 리얼후기</span></p>
			<div class="col-12 my-4" id="sw-m-main-review">
				<div class="">
					<c:forEach items="${review}" var="review"  varStatus="status">
						<div class="col-12 my-1">
							<a href="/crewpeople/review.do">
								<ul class="col-12">
									<li class="col-3 float-left px-3 my-2"><img src="${review.thumbnail}" class="rad-div-20" width="60px;"></li>
									<li class="col-9 float-left px-2 my-2">
										<p class="font-14 font-white my-2">${review.section } <span class="font-12 font-blue mx-3">★★★★★</span><span class="font-12 font-gray float-right mx-3"><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd"/></span></p>
										<p class="font-20 font-white">${fn:substring(review.title, 0, 24)}...&nbsp;<label class="ml-2 hot-dot"></label></p>
									</li>
								</ul>
								<ul class="col-12">
									<li class="col-12 px-3 py-2">
										<p class="font-12 font-newgray">${fn:substring(review.description, 0, 88)}...</p>
									</li>								
								</ul>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
if ($(window).width() > 768) {
	var mainreviewSwiper = new Swiper('#sw-main-review', {
		speed : 400,
		slidesPerView : 1.5,
		slidesBetween : 30,
		autoplay: { delay: 4000},
		pagination: {
	        el : '.main-review-swiper-pagination', clickable : true,
	      },
	});
}else{
	var mainreviewSwiper = new Swiper('#sw-m-main-review', {
		loop : true,
		speed : 400,
		slidesPerView : 1,
		//autoplay: { delay: 4000, disableOnInteraction: false, },
		pagination: {
	        el : '.main-review-m-swiper-pagination', clickable : true,
	      },
	});
}
</script>


<!-- PC화면 -->
<div class="container-fluid mobile-hidden">
	<div class="row sub-row my-5">
		<p class="px-2 font-28 font-bold">취업매거진<span class="mx-4 font-14 font-gray font-normal">선배들이 알려주는 취업에 성공하는법</span></p>
		<ul class="col-12 my-3">
			<c:forEach items="${blog}" var="blog"  varStatus="status">
			<li class="col-6 px-2 py-4 float-left">
				<div class="col-12">
					<div class="col-5">
						<img src="${blog.thumbnail}" width="100%" class="rad-div-10">
					</div>
					<div class="col-6 pl-4">
						<p class="font-18 mt-2"><strong>${blog.title}</strong>&nbsp;<label class="ml-2 hot-dot"></label></p>
						<p class="font-14 font-gray my-3 mobile-hidden">${fn:substring(blog.description, 0, 60)}...</p>
						<div class="col-12 my-2"><a href="/crewpeople/wearev.do?idx=${blog.idx}"><span class="font-14 font-under-line font-black font-bold">자세히보기</span></a><span class="img_bizcenter"></span></div>
					</div>
				</div>
			</li>
			</c:forEach>
		</ul>
	</div>
</div>

<!-- 모바일화면 -->
<div class="container-fluid mobile-show" id="containter-body">
	<div class="row sub-row mt-4">
		<p class="pl-3 font-28 font-bold">취업매거진<span class="mx-4 font-14 font-gray font-normal">선배들이 알려주는 취업에 성공하는법</span></p>
		<div class="col-12 my-3">
			<div class="col-12">
				<ul class="mx-1">
					<c:forEach items="${blog}" var="blog"  varStatus="status">
					<li class="col-6 px-1 py-1">
						<div class="col-12">
							<img src="${blog.thumbnail}" width="100%" class="rad-div-10">
						</div>
						<div class="col-12 mx-1 my-2">
							<div class="col-6 mobile-100-percent swiper-blog-content">
								<p class="font-16"><strong>${fn:substring(blog.title, 0, 30)}</strong>...&nbsp;<label class="ml-2 hot-dot"></label></p>
								<p class="font-14 font-gray my-1">${fn:substring(blog.description, 0, 30)}...</p>
								<div class="col-12 mb-1"><a href="/crewpeople/wearev.do?idx=${blog.idx}"><span class="font-12 font-under-line font-black"><strong>자세히보기</strong></span><span class="img_bizcenter"></span></a></div>
							</div>
						</div>
					</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>



<div class="container-fluid" id="containter-body">
	<div class="row sub-row my-5">
		<div class="col-12 mb-3">
			<p class="pl-3 font-28 mx-1 font-bold">포토갤러리<span class="mx-4 font-14 font-gray font-normal">수업모습, 간담회, 설명회 등 실제수업모습</span></p>
		</div>
		<div class="col-12 my-3" id="sw-main-moment">
			<ul class="col-12">
				<c:forEach items="${moment}" var="moment"  varStatus="status">
					<c:choose><c:when test="${status.count eq 1}"><li class="col-6 py-2 px-2 mobile-100-percent"></c:when><c:otherwise><li class="col-3 py-2 px-2 mobile-50-percent rad-div-10 off-hide"></c:otherwise></c:choose>
						<div class="col-12 rad-div-10 off-hide">
							<a href="/crewpeople/momentv.do?idx=${moment.idx}"><img src="${moment.thumbnail}" width="100%" class="hvr-grow"></a>
							<div class="col-12 px-3" style="padding-top:5px; position:absolute; bottom:0px; left:0px; height:25px; background-color:rgba(0, 0, 0, 0.5);">
							<p class="font-12 font-white"><strong>${moment.title}</strong></p>
						</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>



<div class="container-fluid py-4" style="background-color:#1a408e;">
	<div class="row sub-row">
		<div class="col-12 text-center">
			<a href="/counsel/online.do?cost=y&imgchk="><img src="/img/banner-img-nationexp.png" alt="국비지원금액알아보기" class="mobile-100-percent"></a>
		</div>
	</div>
</div>

<!-- <div class="container-fluid py-5">
	<div class="row sub-row">
		<div class="col-12">
			<p class="font-28 font-bold">전문강사진<span class="mx-4 font-14 font-gray font-normal">우리들의 열정을 보여줄께</span></p>
		</div>
	</div>
</div> -->
<!-- 강사진공통 start -->
<%@ include file="index_pro.jsp" %>

<!-- 강사진공통 end -->


<!-- 생생후기 -->
<%@ include file="index_reply.jsp" %>

<!-- 강사광고배너 -->
<div class="container-fluid">
	<div class="row main-bt-banner-01">
		<div class="col-12 text-center">
			<img src="/img/main-teacherbanner-01.png">
		</div>
	</div>
<!-- 	<div class="row main-bt-banner-02">
		<div class="col-12 text-center">
			<img src="/img/main-teacherbanner-02.png" id="mobile-100-percent"> 
		</div>
	</div> -->
</div>



<!-- 고객센터 -->
<div class="container-fluid mobile-show" id="mobile-100-percent">
	<div class="row main-row">
		<div class="col-12 text-center">
			<img src="/img/main-sign-txt_09.png" id="mobile-100-percent">
		</div>
	</div>
</div>

<div class="container-fluid mobile-show py-5" id="mobile-100-percent" style="background:url('/img/wis-bg3.png') no-repeat center; height:100%;">
	<div class="row main-row text-center">
		<div class="col-6 off-hide main-pro-category" style="border-right: 1px solid #474747">
			<p class="font-24 font-white pt-4 px-4">전화상담</p>
			<p class="font-bold font-26-m font-pink py-1 pb-2 px-4">02-547-7279</p>
			<p class="font-18-m font-lightblack-2 px-4">주말/공휴일 상담가능</p>
			<a href='tel:02-547-7279'><button class="btn btn-primary" style="width: 100px; margin-top: 25px;">전화걸기 ☎</button></a>
		</div>
		<div class="col-6 off-hide main-pro-category">
			<p class="font-24 font-white pt-4 px-4">카카오톡</p>
			<p class="font-bold font-26-m font-pink py-1 pb-2 px-4 ">KAKAO TALK</p>
			<p class="font-18-m font-lightblack-2 px-4">카카오톡 상담 바로가기</p>
			<a href="https://pf.kakao.com/_hxlUNxb"><button class="btn btn-primary" style="width: 100px; margin-top: 25px;">친구추가 +</button></a>
		</div>
	</div>
</div>


<footer>
	<%@ include file="include/footer.jsp"%>
</footer>


</body>
</html>