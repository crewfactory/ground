<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!-- 피씨용 메인비쥬얼 -->
<div class="container-fluid main-visual off-hide mobile-hidden">
	<div class="row">
		<div class="swiper-container" id="sw-main-visual">
			<div class="text-center mobile-hidden" style="position: absolute; z-index: 999; bottom:20px; left:19%;">
				<button class="mx-1 " id="sw-main-visual-silde-prev">
					<img src="/img/ico-prev-btn.png">
				</button>
				<button class="mx-1 " id="sw-main-visual-silde-next">
					<img src="/img/ico-start-btn.png">
				</button>
				<button class="mx-1 " onclick="stopSlide('mainvisualSwiper')">
					<img src="/img/ico-stop-btn.png">
				</button>
			</div>
			<div class="swiper-wrapper" style="position:relative;">
				
				<!--DCS CRS-->
				<div class="swiper-slide bg-navy" style="width:100%; background:url('/img/2020-main-visual-0826-bg.jpg') no-repeat top;">
					<div class="sub-row" >
						<img src="/img/2020-main-visual-0826-t.png" class="mobile-75-percent m-pad-30" alt="자격증취득">
						<div class="m-pad-30"><button class="banner-button3 mt-5" type="button" onclick="location.href='/education/crsdcs.do' " style="position: absolute; bottom: 22%; left:18%;">자세히보기</button></div>
					</div>
				</div>
				
				<!-- 대졸공채 -->
				<div class="swiper-slide bg-navy" style="width:100%; background:url('/img/2020-main-visual-0630-bg.jpg') no-repeat top;">
					<div class="sub-row" >
						<img src="/img/2020-main-visual-0630-t.png" class="mobile-75-percent m-pad-30" alt="특강신청">
						<div class="m-pad-30"><button class="banner-button mt-5" type="button" onclick="location.href='/detail/detail02.do' " style="position: absolute; bottom: 22%; left:19%;">자세히보기</button></div>
					</div>
				</div>
				<!--<div class="swiper-slide bg-navy" style="width:100%; background:url('/img/2020-main-visual-003-bg.jpg') no-repeat top;">
					<div class="sub-row" >
						<img src="/img/2020-main-visual-003-t.png" class="mobile-75-percent m-pad-30" alt="특강신청">
						<div class="m-pad-30"><button class="banner-button mt-5" type="button" onclick="location.href='/counsel/specclass.do' " style="position: absolute; bottom: 20%; left: 54%;">자세히보기</button></div>
					</div>
				</div> -->
				<!-- 미주노선 -->
				<div class="swiper-slide bg-navy" style="width:100%; background:url('/img/2020-main-visual-004-bg.jpg') no-repeat top;">
					<div class="sub-row" >
						<img src="/img/2020-main-visual-004-t.png" class="mobile-75-percent m-pad-30" alt="미주노선">
						<div class="m-pad-30"><button class="banner-button mt-5" type="button" onclick="location.href='/detail/detail04.do' " style="position: absolute; bottom: 20%; left: 48%;">자세히보기</button></div>
					</div>
				</div>
				
				<!-- 7월클래스 -->
				<div class="swiper-slide bg-navy" style="width:100%; background:url('/img/2020-main-visual-classopen-bg.jpg') no-repeat top;">
					<div class="sub-row">
						<img src="/img/2020-main-visual-classopen-t.png" class="mobile-75-percent m-pad-30" alt="6월개강일정">
						<div class="m-pad-30"><button class="banner-button mt-5" type="button" onclick="location.href='/banner/classopen.do' " style="position: absolute; bottom: 19%; left:21%;">자세히보기</button></div></div>
					</div>
				
				<!-- 후기평으로 선택받는 -->
				<div class="swiper-slide bg-navy" style="width:100%; background:url('/img/2020-main-visual-class-bg.jpg') no-repeat top;">
					<div class="sub-row" style="margin-top:90px;">
						<img src="/img/2020-main-visual-class-txt.png" class="mobile-75-percent m-pad-30" alt="크루팩토리수업">
						<div class="m-pad-30"><a href="/crewpeople/review.do"><button class="banner-button mt-5">자세히보기</button></a></div>
					</div>
				</div>
				<!-- 집중케어시스템 -->
				<div class="swiper-slide bg-navy" style="width:100%; background:url('/img/2020-main-visual-mento-bg.jpg') no-repeat top;">
					<div class="sub-row margin-top-130">
						<img src="/img/2020-main-visual-mento-t.png" class="mobile-75-percent m-pad-30" alt="크루팩토리 멘토링">
						<div class="m-pad-30"><a href="/support/system.do"><button class="banner-button mt-5">지금신청하기</button></a></div>
					</div>
				</div>
				
				<!-- 여행사 취업 무료 컨설팅 -->
				<div class="swiper-slide bg-navy" style="width:100%; background:url('/img/2020-main-visual-travel-cs-bg.jpg') no-repeat center;">
					<div class="sub-row" style="margin-top:100px;">
						<img src="/img/2020-main-visual-travel-cs-img.png" class="mobile-75-percent m-pad-30" alt="여행사직무컨설팅">
						<div class="m-pad-30"><a href="/counsel/online.do"><button class="banner-button mt-5">지금신청하기</button></a></div>
					</div>
				</div>
				<!-- 2020년도 항공사별 채용절차
				<div class="swiper-slide bg-navy" style="width:100%; background:url('/img/2020-main-visual-img-002-bg.jpg') no-repeat center;">
					<div class="sub-row" style="margin-top:50px;">
						<img src="/img/2020-main-visual-img-002-text.png" class="mobile-75-percent m-pad-30" alt="채용절차">
						<div class="m-pad-30"><a href="/support/system.do"><button class="banner-button mt-5">자세히보기</button></a></div>
					</div>
				</div>-->
				<!-- CRS DCS 자격증 취득반 -->
				<div class="swiper-slide bg-navy" style="width:100%; background:url('/img/2020-main-visual-crsdcs-bg.jpg') no-repeat right;">
					<div class="sub-row" >
						<img src="/img/2020-main-visual-crsdcs-t.png" class="mobile-75-percent m-pad-30" alt="crs/dcs 자격증취득반">
						<div class="m-pad-30"><button class="banner-button mt-5" type="button" onclick="location.href='/education/crsdcs.do' " style="position: absolute; bottom: 19%; left:21%;">자세히보기</button></div></div>
					</div>
				</div>
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</div>
</div>
<!-- 모바일배너 -->
<div class="container-fluid mobile-show">
	<div class="row">
		<div class="swiper-container" id="sw-m-main-visual">
			<div class="swiper-wrapper">
				
				<!-- 대졸공채 -->
				<div class="swiper-slide" style="width:100%;">
					<img src="/img/2020-main-visual-0826-bg-m.jpg" width="100%">
					<div class="col-12" style="position:absolute; top:0px; left:0px; margin-top:20px;">
						<img src="/img/2020-main-visual-0826-t-m.png">
						<div class="col-12">
							<a href="/education/crsdcs.do"><button class="banner-button5 mx-4 pl-5 text-left">자세히보기</button></a>
						</div>
					</div>
				</div>
			
				<!-- 대졸공채 -->
				<div class="swiper-slide" style="width:100%;">
					<img src="/img/2020-main-visual-0630-bg-m.jpg" width="100%">
					<div class="col-12" style="position:absolute; top:0px; left:0px; margin-top:20px;">
						<img src="/img/2020-main-visual-0630-t-m.png">
						<div class="col-12">
							<a href="/detail/detail02.do"><button class="banner-button mx-4 pl-5 text-left">자세히보기</button></a>
						</div>
					</div>
				</div>
				<!-- <div class="swiper-slide" style="width:100%;">
					<img src="/img/2020-main-visual-003-bg-m.jpg" width="100%">
					<div class="col-12" style="position:absolute; top:0px; left:0px; margin-top:20px;">
						<img src="/img/2020-main-visual-003-t-m.png">
						<div class="col-12">
							<a href="/counsel/specclass.do"><button class="banner-button mx-4 pl-5 text-left">자세히보기</button></a>
						</div>
					</div>
				</div>  -->
				<!-- 미주노선 -->
				<div class="swiper-slide" style="width:100%;">
					<img src="/img/2020-main-visual-004-bg-m.jpg" width="100%">
					<div class="col-12" style="position:absolute; top:0px; left:0px; margin-top:20px;">
						<img src="/img/2020-main-visual-004-t-m.png">
						<div class="col-12">
							<a href="/detail/detail04.do"><button class="banner-button mx-4 pl-5 text-left">자세히보기</button></a>
						</div>
					</div>
				</div>
				<!-- 7월클래스 -->
				<div class="swiper-slide" style="width:100%;">
					<img src="/img/2020-main-visual-classopen-bg-m.png" width="100%">
					<div class="col-12" style="position:absolute; top:0px; left:0px; margin-top:20px;">
						<img src="/img/2020-main-visual-classopen-t-m.png">
						<div class="col-12">
							<a href="/banner/classopen.do"><button class="banner-button mx-4 pl-5 text-left">자세히보기</button></a>
						</div>
					</div>
				</div>
				<!-- 후기평으로 선택  -->
				<div class="swiper-slide" style="width:100%;">
					<img src="/img/2020-main-visual-class-bg-m.png" width="100%">
					<div class="col-12" style="position:absolute; top:0px; left:0px; margin-top:20px;">
						<img src="/img/2020-main-visual-class-txt-m.png">
						<div class="col-12">
							<a href="/crewpeople/review.do"><button class="banner-button mx-4 pl-5 text-left">자세히보기</button></a>
						</div>
					</div>
				</div>
				<!-- 크루팩토리의 집중케어시스템 -->
				<div class="swiper-slide" style="width:100%;">
					<img src="/img/2020-main-visual-mento-bg-m.png" width="100%">
					<div class="col-12" style="position:absolute; top:0px; left:0px;">
						<img src="/img/2020-main-visual-mento-t-m.png">
						<div class="col-12">
							<a href="/support/system.do"><button class="banner-button mx-4 pl-5 text-left">지금멘토신청</button></a>
						</div>
					</div>
				</div>
				
				<!-- 여행사무료컨설팅 -->
				<div class="swiper-slide" style="width:100%;">
					<img src="/img/2020-main-visual-travel-cs-bg-m.png" width="100%">
					<div class="col-12" style="position:absolute; top:0px; left:0px; margin-top:30px;">
						<img src="/img/2020-main-visual-travel-cs-m.png">
						<div class="col-12">
							<a href="/counsel/online.do"><button class="banner-button mx-4 pl-5 text-left">신청하기</button></a>
						</div>
					</div>
				</div>
				
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</div>
</div>


<script>
if ($(window).width() > 768) {
	var mainvisualSwiper = new Swiper('#sw-main-visual', {
		loop : true,
		centeredSlides : true,
		speed : 800,
		autoplay: { delay: 5000, disableOnInteraction: false, },
		pagination: {
        el: '.swiper-pagination', clickable: true,
      },
		navigation : {
			nextEl : '#sw-main-visual-silde-next',
			prevEl : '#sw-main-visual-silde-prev',
		},
	});
}else{
	var mainvisualSwiper = new Swiper('#sw-m-main-visual', {
		loop : true,
		centeredSlides : true,
		autoplay: { delay: 5000, disableOnInteraction: false, },
		speed : 500,
		pagination: {
	        el: '.swiper-pagination', clickable: true,
	      },
	});
}
</script>




