<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>

</style>

<script>
	$(document).ready(function() {
		$("#gnb-menu").hover(function() {
			$("#snb-menu-pc").stop().slideDown(200);
		}, function() {
			$("#snb-menu-pc").stop().slideUp(200);
		});
		$("#snb-menu-pc").hover(function() {
			$("#snb-menu-pc").stop().slideDown(200);
		}, function() {
			$("#snb-menu-pc").stop().slideUp(200);
		});
	});

</script>


<!--<div class="container-fluid bg-yellow top-banner" id="containter-body">
	<div class="row main-row bg-yellow">
		<div class="col-12 text-center" id="top-banner-img-cont">
			<div class="col-12" id="mobile-100-percent">
				<a href="" data-toggle="modal" data-target="#coronaModal"><img src="/img/corona_top_banner_01.png" class="mobile-100-percent"></a>
			</div>
			<div class="top-banner-btn-x">
				<a href="javascript:hideTopBanner();"><img src="/img/corona_top_banner_03.png"></a>
			</div>
		</div>
	</div>
</div> -->

<script>
	$(document).ready(function() {
		var topbarsession = sessionStorage.getItem("8defd9dl");
		if(topbarsession == "close"){
			$(".top-banner").hide();
		}
	});

	function hideTopBanner(){
		$(".top-banner").hide(300);
		sessionStorage.setItem("8defd9dl", "close");
		//alert(sessionStorage.getItem("8defd9dl"));
	}
</script>

<!-- Common Top Menu Start -->
<header id="head">
	<div class="head-row">
		<div class="col-6 align-middle">
			<div class="logo" style="padding-top: 10px;">
				<a href="/"><img src="/img/logo.png"></a>
				<h1 class="hide">크루팩토리항공사지상직학원</h1>
			</div>
		</div>
		<div class="col-6 text-right">
			<div class="campus py-2 line-1-gray">
				<ul>
					<li><a href="/">강남캠퍼스</a></li>
					<li><a href="http://www.crewfa.com/" target="_blank">인천캠퍼스</a></li>
					<li><a href="http://www.crew-factory.com/" target="_blank">항공사승무원</a></li>
					<li><a href="http://www.crewgo3.com/" target="_blank">항공운항과입시</a></li>
					<li><a href="http://www.factoryop.com/" target="_blank">여행사</a></li>
				</ul>
			</div>
			<div class="outlink py-2">
				<ul>
					<li style="width: 300px;">
						<div class="col-4">
							<label class="sm-label font-10">개강일정</label>
						</div>
						<div class="col-8 text-left">
							<div class="slick slk-main-class-open">
							
								<div class="slick-slide font-14 mx-3" style="margin-top:2px;">일반공채반<span class="mx-2">:</span>9월 14일</div>
								<div class="slick-slide font-14 mx-3" style="margin-top:2px;">대졸공채반<span class="mx-2">:</span>9월 14일</div>
								<div class="slick-slide font-14 mx-3" style="margin-top:2px;">자격증단기반<span class="mx-2">:</span>9월 14일</div>
								
							</div>
						</div>
					</li>
					<li class="font-14 font-bold pt-1">
					<c:choose>
						<c:when test="${!empty sessionScope.crewfactoryMemberInfo}"><a href="/member/logout.do">로그아웃</a></c:when>
						<c:otherwise><a href="/member/login.do">로그인</a></c:otherwise>
					</c:choose>
					</li>
					<li><a href="https://www.facebook.com/crewseoul" target="_blank"><img src="/img/sns-facebook-ico-bl.png"></a></li>
					<li><a href="https://www.instagram.com/crewfactory_fly/" target="_blank"><img src="/img/sns-instagram-ico-bl.png"></a></li>
					<li><a href="https://pf.kakao.com/_hxlUNxb" target="_blank"><img src="/img/sns-kakao-ico-bl.png"></a></li>
					<!--<li><a href="https://blog.naver.com/crewfac101" target="_blank"><img src="/img/sns-naver-ico-bl.png"></a></li> -->
				</ul>
			</div>
		</div>
	</div>
</header>

<script>
	$(document).ready(function() {
		$('.slk-main-class-open').slick({
			autoplay : true,
			vertical : true,
			slidesToShow : 1,
			slidesToScroll : 1,
			arrows : false,
			fade : false,
		});
	});
</script>

<nav class="container-fluid bg-skyblue line-1-gray mobile-hidden">
	<div class="row gs-row">
		<ul class="col-12 gnb-menu" id="gnb-menu" style="height:45px;">
			<li class="float-left font-16"><a href="/introduce/intro.do" class=""><b>크루팩토리소개</b></a></li>
			<li class="float-left font-16"><a href="/support/univ.do"><b>교육과정안내</b></a></li>
			<li class="float-left font-16"><a href="/support/alko.do?section=ko&search=ke" class=""><b>취업연구실</b></a></li>
			<li class="float-left font-16"><a href="/counsel/online.do" class=""><b>국비지원센터</b></a></li>
			<li class="float-left font-16"><a href="/crewpeople/moment.do" class=""><b>커뮤니티</b></a><label class="ml-2 hot-dot"></label></li>
			<li class="float-left font-16"><a href="/counsel/online.do" class=""><b>온라인상담</b></a><label class="ml-2 hot-dot"></label></li>
		</ul>
	</div>
</nav>

<section id="snb-menu-pc" style="width:100%; display:none;">
	<div class="container-fluid bg-white line-1-gray">
		<div class="row gs-row">
			<div class="col-12 mb-2" id="snb-wrap">
				<ul class="ml-4" style="margin:0 auto;">
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">크루팩토리소개</h2>
						<ul class="font-15">
							<li class="py-1"><a href="/introduce/intro.do">교육이념</a></li>
							<li class="py-1"><a href="/introduce/edu.do?section=to&search=to">크루팩토리특별혜택</a></li>
							<li class="py-1"><a href="/introduce/pro.do">전문강사진소개</a></li>
							<li class="py-1"><a href="/introduce/facil.do">교육시설안내</a></li>
							<li class="py-1"><a href="/introduce/corw.do">제휴업체보기</a></li>
							<li class="py-1"><a href="/introduce/map.do">학원위치조회</a></li>
						</ul>
					</li>
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">교육과정안내</h2>
						<ul class="font-15 font-normal font-black">
							<li class="py-1"><a href="/education/spsp.do">FSC대졸공채취업반</a></li>
							<li class="py-1"><a href="/detail/detail09.do">LCC/HSC대졸공채취업반</a></li>
							<li class="py-1"><a href="/education/kogs.do">공항지상직서비스취업반</a></li>
							<li class="py-1"><a href="/education/osgs.do">외국항공사취업집중반</a></li>
							<li class="py-1"><a href="/education/crsdcs.do">CRS/DCS자격증</a></li>
							<li class="py-1"><a href="/education/allpass.do">지상직 All-Pass</a></li>
							<li class="py-1"><a href="/education/op.do">여행사오퍼레이터</a></li>
							<li class="py-1"><a href="/education/travel.do">여행사취업대비반</a></li>
							
						</ul>
					</li>
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">취업연구실</h2>
						<ul class="font-15 font-normal font-black">
							<li class="py-1"><a href="/support/jgsrecruit.do">일본공항지상직취업</a></li>
							<li class="py-1"><a href="/support/recruit.do?section=01">지상직채용소식</a></li>
							<li class="py-1"><a href="/support/recruit.do?section=02">여행사채용소식</a></li>
							<li class="py-1"><a href="/news/press.do">언론보도자료</a></li>
							<li class="py-1"><a href="/support/system.do">채용시스템</a></li>
						</ul>
					</li>
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">국비지원센터</h2>
						<ul class="font-15 font-normal font-black">
							<li class="py-1"><a href="/support/trcs.do">국민내일배움카드</a></li>
							<li class="py-1"><a href="/support/trcsedu.do">국비지원과정조회</a></li>
							<li class="py-1"><a href="/counsel/online.do?cost=y&imgchk=">나의국비금액보기</a></li>
						</ul>
					</li>
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">커뮤니티</h2>
						<ul class="font-15 font-normal font-black">
							<li class="py-1"><a href="/crewpeople/weare.do">취업매거진</a></li>
							<li class="py-1"><a href="/crewpeople/moment.do">포토갤러리</a>
							<li class="py-1"><a href="/crewpeople/review.do">합격생인터뷰</a>
						</ul>
					</li>
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">온라인상담</h2>
						<ul class="font-15 font-normal font-black">
							<li class="py-1"><a href="/counsel/online.do">상담신청</a></li>
							<li class="py-1"><a href="/counsel/online.do?cost=y&imgchk=">수강료조회</a></li>
							<li class="py-1"><a href="/counsel/online.do?cost=&imgchk=y">직무컨설팅신청</a></li>
							<li class="py-1"><a href="/news/announce.do">공지사항</a></li>
							<li class="py-1"><a href="/counsel/faq.do">자주묻는질문</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-ivory line-1-gray">
		<div class="row gs-row">
			<div class="col-12">
				<ul>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3;"><img src="/img/top-quick-btn-phone.png"></li>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3;"><a href="/counsel/faq.do"><img src="/img/top-quick-btn-faq.png"></a></li>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3;"><a href="/counsel/online.do?cost=y&imgchk="><img src="/img/top-quick-btn-fee.png"></a></li>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3;"><a href="/introduce/map.do"><img src="/img/top-quick-btn-map.png"></a></li>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3;"><a href="/counsel/online.do"><img src="/img/top-quick-btn-counsel.png"></a></li>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3; padding-right: 1px;"><a href="https://pf.kakao.com/_hxlUNxb"><img src="/img/top-quick-btn-kko.png"></a></li>
				</ul>
			</div>
		</div>
	</div>
</section>


<!-- 모바일용글로벌메뉴 -->
<div class="container-fluid mobile-show pc-hidden">
	<div class="row">
		<div class="col-12 line-1-gray" style="height:35px;">
			<div class="col-3 bg-skyblue font-14 text-center" style="height:100%; padding-top:7px;">개강일정</div>
			<div class="col-5 px-2 font-14" style="padding-bottom: 5px; height:100%; padding-top:6px;">
				<div class="slick slk-main-class-open-m">
					
					<div class="slick-slide mx-2"> 일반공채반 :  9월 14일</div>
					<div class="slick-slide mx-2"> 대졸공채반 :  9월14일</div>
					<div class="slick-slide mx-2"> 자격증단기반 :9월 14일</div>
				
				</div>
			</div>
			<div class="col-4 float-right" style="padding-top:7px;">
				<ul class="col-12 text-right">	
					<li class="float-right" style="margin-right:10px;"><a href="https://www.facebook.com/crewseoul" target="_blank"><img src="../img/sns-facebook-ico-bl.png" width="100%"></a></li>
					<li class="float-right" style="margin-right:10px;"><a href="https://www.instagram.com/crewfactory_fly/" target="_blank"><img src="../img/sns-instagram-ico-bl.png" width="100%"></a></li>
					<li class="float-right" style="margin-right:10px;"><a href="https://pf.kakao.com/_hxlUNxb" target="_blank"><img src="../img/sns-kakao-ico-bl.png" width="100%"></a></li>
					<!-- <li class="float-right" style="margin-right:10px;"><a href="https://blog.naver.com/crewfac101" target="_blank"><img src="../img/sns-naver-ico-bl.png" width="100%"></a></li> -->
				</ul>
			</div>
		</div>
	</div>
	<div class="row line-1-gray" style="padding-top:0px; padding-bottom:0px; padding-left:5px;">
		<div class="col-12">
			<div class="col-7">
				<a href="/"><img src="/img/logo-m.png" alt="메인로고" class="float-left"></a>
			</div>
			<div class="col-4 float-right pr-3 text-right" style="margin-top:11px;">
				<a href="tel:02-547-7279"><img src="/img/ico-phone-img.png"></a>
			</div>
		</div>
	</div>
</div>

<style>
	.swiper-slide:nth-child(1n) { width:25px; }
	.swiper-slide:nth-child(2n) { width:55px; }
	.swiper-slide:nth-child(3n) { width:55px; }
	.swiper-slide:nth-child(4n) { width:70px; }
	.swiper-slide:nth-child(5n) { width:55px; }
	.swiper-slide:nth-child(6n) { width:55px; }
	.swiper-slide:nth-child(7n) { width:55px; }
</style>

<div class="container-fluid mobile-show bg-navy" style="height:42px;">
	<div class="row">
		<div class="col-12">
			<div class="swiper-container" id="m-gnb-menu">
				<ul class="swiper-wrapper" style="width:450px; padding-top:10px; padding-bottom:10px;">
					<li class="swiper-slide ml-2 mr-3 font-16 text-center active-menu">
						<label class="font-white" style="padding-bottom:3px;"><strong>메인</strong></label>
					</li>
					<li class="swiper-slide mr-3 font-16 text-center">
						<label class="font-white" onclick="javascript:showSubMenu('#sub-intro')"><strong>학원소개</strong></label>
					</li>
					<li class="swiper-slide mr-3 font-16 text-center">				
						<label class="font-white" onclick="javascript:showSubMenu('#sub-edu')"><strong>교육과정</strong></label>
					</li>
					<li class="swiper-slide mr-3 font-16 text-center">
						<label class="font-white" onclick="javascript:showSubMenu('#sub-lab')"><strong>취업연구실</strong></label>
					</li>
					<li class="swiper-slide mr-3 font-16 text-center">
						<label class="font-white" onclick="javascript:showSubMenu('#sub-nation')"><strong>국비지원</strong></label>
					</li>
					<li class="swiper-slide mr-3 font-16 text-center">
						<label class="font-white" onclick="javascript:showSubMenu('#sub-comm')"><strong>커뮤니티</strong></label>
					</li>
					<li class="swiper-slide ml-2 mr-3 font-16 text-center">
						<label class="font-white"  onclick="javascript:showSubMenu('#sub-counsel')"><strong>상담신청</strong></label>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<script>
$(document).ready(function() {
	var now = "${param.act}";
});
</script>

<div class="container-fluid mobile-show bg-skyblue">
	<div class="row">
		<div class="col-12 bg-skyblue py-1" style="display:none;" id="sub-counsel">
			<ul class="mx-2">
				<li class="mx-2 my-2 font-14 float-left"><a href="/counsel/online.do">상담신청</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/counsel/online.do?cost=y&imgchk=">수강료조회</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/counsel/online.do?cost=&imgchk=y">직무컨설팅신청</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/news/announce.do">공지사항</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/counsel/faq.do">자주묻는질문</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="https://pf.kakao.com/_hxlUNxb">카톡상담</a></li>
			</ul>
		</div>
		<div class="col-12 bg-skyblue py-1" style="display:none;" id="sub-edu">
			<ul class="mx-2">
				<li class="mx-2 my-2 font-14 float-left"><a href="/education/spsp.do">FSC대졸공채취업반</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/detail/detail09.do">LCC/HSC대졸공채취업반</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/education/kogs.do">공항지상직서비스취업반</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/education/osgs.do">외국항공사취업집중반</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/education/crsdcs.do">CRS/DCS자격증취득</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/education/allpass.do">지상직 All-Pass</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/education/op.do">여행사오퍼레이터</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/education/travel.do">여행사취업</a></li>
			</ul>
		</div>
		<div class="col-12 bg-skyblue py-1" style="display:none;" id="sub-lab">
			<ul class="mx-2">
				<li class="mx-2 my-2 font-14 float-left"><a href="/support/jgsrecruit.do">일본공항 지상직취업</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/support/recruit.do?section=01">지상직채용공고</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/support/recruit.do?section=02">여행사채용공고</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/news/press.do">언론보도자료</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/support/system.do">크루팩토리 채용시스템</a></li>
			</ul>
		</div>
		<div class="col-12 bg-skyblue py-1" style="display:none;" id="sub-nation">
			<ul class="mx-2">
				<li class="mx-2 my-2 font-14 float-left"><a href="/support/trcs.do">국민내일배움카드</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/support/trcsedu.do">국비지원과정조회</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/counsel/online.do?cost=y&imgchk=">나의국비지원금액보기</a></li>
			</ul>
		</div>
		<div class="col-12 bg-skyblue py-1" style="display:none;" id="sub-comm">
			<ul class="mx-2">
				<li class="mx-2 my-2 font-14 float-left"><a href="/crewpeople/weare.do">취업매거진</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/crewpeople/moment.do">포토갤러리</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/crewpeople/review.do">합격생인터뷰</a></li>
			</ul>
		</div>
		<div class="col-12 bg-skyblue py-1" style="display:none;" id="sub-intro">
			<ul class="mx-2">
				<li class="mx-2 my-2 font-14 float-left"><a href="/introduce/intro.do">교육이념</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/introduce/edu.do?section=to&search=to">크루팩토리 특별혜택</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/introduce/pro.do">전문강사진소개</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/introduce/facil.do">교육시설안내</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/introduce/corw.do">제휴업체보기</a></li>
				<li class="mx-2 my-2 font-14 float-left"><a href="/introduce/map.do">학원위치조회</a></li>
			</ul>
		</div>
	</div>
</div>

<script>
	function showSubMenu(obj){
		// Init
		$('#sub-counsel').hide();
		$('#sub-edu').hide();
		$('#sub-lab').hide();
		$('#sub-nation').hide();
		$('#sub-comm').hide();
		$('#sub-intro').hide(); 
		
		if($(obj).css('display') == 'none'){
			$(obj).show();
		}else{
			$(obj).hide();
		}
		
	}
</script>

<script>
if ($(window).width() < 767) {
	var quickMenuSwiper = new Swiper('#m-gnb-menu', {
		slidesPerView : 'auto',
		slidesBetween : 30,
	});
}
</script>





<script>
	$(document).ready(function() {
		$('.slk-main-class-open-m').slick({
			autoplay : true,
			vertical : true,
			slidesToShow : 1,
			slidesToScroll : 1,
			arrows : false,
			fade : false,
		});
	});
</script>




