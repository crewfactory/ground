<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-언론보도자료</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>


<div class="container-fluid" style="background:url('/img/lab-bg-img-0000.jpg') no-repeat center; height:350px;">
	<div class="row sub-row">
		<div class="col-12" style="margin-top:90px;">
			<img src="/img/lab-tit-img-0001.png" class="mobile-100-percent">
		</div>
	</div>
</div>


<div class="container-fluid my-5">
	<div class="row sub-row">
		<div class="col-12">
			<p class="font-20 font-bold"># 수료후 지원가능한 직무/직종</p>
			<div class="col-12 my-4">
				<div class="col-7 mobile-100-percent">
					<div class="col-12">
						<ul>
							<li class="pt-3 my-2 mx-2 font-16 font-bold">항공관련직종</li>
							<li class="my-2 mx-2 font-16">항공승무원, 공항지상직 등 공항서비스 항공관련 전 분야로 취업컨설팅</li>
							<li class="pt-3 my-2 mx-2 font-16 font-bold">호텔 및 여행서비스</li>
							<li class="my-2 mx-2 font-16">호텔서비스 관련분야에 글로벌 호텔취업, 리조트, 관광업체로의 취업을 목표</li>
							<li class="pt-3 my-2 mx-2 font-16 font-bold">크루즈 및 선원</li>
							<li class="my-2 mx-2 font-16">바다위의 호텔이라 불리는 대/중형 크루즈 승무원으로의 취업</li>
							<li class="pt-3 my-2 mx-2 font-16 font-bold">여행사</li>
							<li class="my-2 mx-2 font-16">글로벌여행사 및 랜드사로의 취업</li>
							<li class="pt-3 my-2 mx-2 font-16 font-bold">기업교육 및 CS</li>
							<li class="my-2 mx-2 font-16">해외기업 사내 CS, 개발도상국 CS교육 강사로의 취업</li>
						</ul>
						<div class="col-12">
							<a href="/counsel/online.do?cost=&imgchk=y"><button class="banner-button mt-5">직무컨설팅받기</button></a>
						</div>
					</div>
				</div>
				<div class="col-5 mobile-hidden"><img src="/img/lab-img-globe.png" width="100%"></div>
			</div>
		</div>		
	</div>
</div>

<!-- 크루팩토리 채용시스템(공통) -->
<%@ include file="../include/recruitsys.jsp"%>

<div class="container-fluid my-5">
	<div class="row sub-row">
		<div class="col-12">
			<p class="font-20 font-bold my-3 pb-3"># 크루팩토리 항공사지상직 취업처</p>
			<div class="col-12 my-2">
				<ul class="col-12">
					<li class="font-bold ml-3 font-16" style="list-style-type:disc;">국내항공사<span class="mx-3 font-12 font-gray">공채지원, 취업지원</span></li>
				</ul>
				<div class="col-12 my-4 swiper-container ko-recruit-sw">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="/docs/code/0a247468-5f7d-48f5-99e9-8904c75d401b.png" class="border" width="120px" alt="대한항공"></div>
						<div class="swiper-slide"><img src="/docs/code/2f581d87-2a81-41a0-9944-d73ef905ae7c.png" class="border" width="120px" alt="아시아나항공"></div>
						<div class="swiper-slide"><img src="/docs/code/dcc5f664-9400-46a7-b2f0-2cb388082373.png" class="border" width="120px" alt="제주항공"></div>
						<div class="swiper-slide"><img src="/docs/code/1e69610f-93b3-4028-8993-d9f2e5e67982.png" class="border" width="120px" alt="진에어"></div>
						<div class="swiper-slide"><img src="/docs/code/25b44d13-f2f8-42c1-8098-db585fc23975.png" class="border" width="120px" alt="티웨이항공"></div>
						<div class="swiper-slide"><img src="/docs/code/3fbe2b0b-445a-4fce-b5ad-ee4baee0339d.png" class="border" width="120px" alt="이스타항공"></div>
						<div class="swiper-slide"><img src="/docs/code/24945731-bf53-4b80-b586-165aaaa89d78.png" class="border" width="120px" alt="에어부산"></div>
						<div class="swiper-slide"><img src="/docs/code/e652e1c9-bd3b-4622-bf72-eeb5cc4fe434.png" class="border" width="120px" alt="에어서울"></div>
						<div class="swiper-slide"><img src="/docs/code/c53cbf26-c71a-4ea2-bed2-07f9c66fd1ed.png" class="border" width="120px" alt="에어프레미아"></div>
					</div>
				</div>
			</div>
			<div class="col-12 my-2">
				<ul class="col-12">
					<li class="font-bold ml-3 font-16" style="list-style-type:disc;">외국항공사<span class="mx-3 font-12 font-gray">공채지원, 취업지원, 취업연계, 채용대행</span></li>
				</ul>
				<div class="col-12 my-4 swiper-container ko-recruit-sw">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="/docs/code/243ba2ff-5b01-4d59-8daf-95845f9e54b7.png" class="border" width="120px" alt="에미레이트"></div>
						<div class="swiper-slide"><img src="/docs/code/1abddc20-4e63-4c5e-b943-c349e00ec895.png" class="border" width="120px" alt="카타르"></div>
						<div class="swiper-slide"><img src="/docs/code/e70ca4a5-ddc3-4b39-89e4-1099e06d27a0.png" class="border" width="120px" alt="루프트한자"></div>
						<div class="swiper-slide"><img src="/docs/code/d26463f1-1d06-4685-b7c5-4ac096fe4268.png" class="border" width="120px" alt="사우디아"></div>
						<div class="swiper-slide"><img src="/docs/code/8c0e1183-0a50-440b-b23f-6fe5fa59b96e.png" class="border" width="120px" alt="동방항공"></div>
						<div class="swiper-slide"><img src="/docs/code/279273fb-73d5-4ce3-a362-0df9cc85afc9.png" class="border" width="120px" alt="싱가폴"></div>
						<div class="swiper-slide"><img src="/docs/code/793f179c-3fd0-43fd-84a5-36c0f72098d2.png" class="border" width="120px" alt="비엣젯"></div>
						<div class="swiper-slide"><img src="/docs/code/b2923e0f-33cc-421e-a1a2-8f2c6671ac43.png" class="border" width="120px" alt="에어차이나"></div>
						<div class="swiper-slide"><img src="/docs/code/48f2f756-f7ef-4d67-b645-fdd4fac9d45b.png" class="border" width="120px" alt="ANA"></div>
						<div class="swiper-slide"><img src="/docs/code/48c55331-6eb3-44f9-8d08-0a8e56268783.png" class="border" width="120px" alt="홍콩항공"></div>
						<div class="swiper-slide"><img src="/docs/code/4476a805-7181-4cc5-ab56-e35938ff8b17.png" class="border" width="120px" alt="뱀부"></div>
						<div class="swiper-slide"><img src="/docs/code/763390d9-329f-4bdb-b8e7-86691423c9c9.png" class="border" width="120px" alt="에어로케이"></div>
						<div class="swiper-slide"><img src="/docs/code/86cb2c40-cedb-4acf-824f-e6767de42e3b.png" class="border" width="120px" alt="하이난"></div>
						<div class="swiper-slide"><img src="/docs/code/c7c3dc05-7cb5-4f99-b4d6-81e6d331e581.png" class="border" width="120px" alt="피치"></div>
						<div class="swiper-slide"><img src="/docs/code/1bad55da-6b39-42c2-8ffc-db952e952871.png" class="border" width="120px" alt="KLM"></div>
						<div class="swiper-slide"><img src="/docs/code/c0108810-680b-47f7-aab5-e163c598937c.png" class="border" width="120px" alt="텐진"></div>
						<div class="swiper-slide"><img src="/docs/code/605a456c-c4eb-4410-bbfa-7b423dab64ac.png" class="border" width="120px" alt="베트남"></div>
						<div class="swiper-slide"><img src="/docs/code/b385f331-833b-47e2-9f11-7406d85c36eb.png" class="border" width="120px" alt="핀에어"></div>
						<div class="swiper-slide"><img src="/docs/code/5ccef7fd-79d6-4085-a0da-3fa45a56b091.png" class="border" width="120px" alt="JAL"></div>
						<div class="swiper-slide"><img src="/docs/code/246e763a-2a35-4cbb-9ae0-b26f7e029c24.png" class="border" width="120px" alt="케세이퍼시픽"></div>
						<div class="swiper-slide"><img src="/docs/code/9bf36b62-729f-4da6-adff-3a3453b49e76.png" class="border" width="120px" alt="에띠하드"></div>
						<div class="swiper-slide"><img src="/docs/code/eec998b4-a5d4-4f14-9b63-59579cd7a07a.png" class="border" width="120px" alt="에어아시아"></div>
					</div>
				</div>
			</div>
			<div class="col-12 my-2">
				<ul class="col-12">
					<li class="font-bold ml-3 font-16" style="list-style-type:disc;">국내국제공항<span class="mx-3 font-12 font-gray">공채지원, 취업지원</span></li>
				</ul>
				<div class="col-12 my-4 swiper-container ko-recruit-sw">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="/docs/code/0a247468-5f7d-48f5-99e9-8904c75d401b.png" class="border" width="120px" alt="대한항공"></div>
						<div class="swiper-slide"><img src="/docs/code/2f581d87-2a81-41a0-9944-d73ef905ae7c.png" class="border" width="120px" alt="아시아나항공"></div>
						<div class="swiper-slide"><img src="/docs/code/dcc5f664-9400-46a7-b2f0-2cb388082373.png" class="border" width="120px" alt="제주항공"></div>
						<div class="swiper-slide"><img src="/docs/code/1e69610f-93b3-4028-8993-d9f2e5e67982.png" class="border" width="120px" alt="진에어"></div>
						<div class="swiper-slide"><img src="/docs/code/25b44d13-f2f8-42c1-8098-db585fc23975.png" class="border" width="120px" alt="티웨이항공"></div>
						<div class="swiper-slide"><img src="/docs/code/3fbe2b0b-445a-4fce-b5ad-ee4baee0339d.png" class="border" width="120px" alt="이스타항공"></div>
						<div class="swiper-slide"></div>
					</div>
				</div>
			</div>
			<div class="col-12 my-2">
				<ul class="col-12">
					<li class="font-bold ml-3 font-16" style="list-style-type:disc;">외국국제공항<span class="mx-3 font-12 font-gray">공채지원, 취업지원, 취업연계, 채용대행</span></li>
				</ul>
				<div class="col-12 my-4 swiper-container ko-recruit-sw">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="/docs/code/0a247468-5f7d-48f5-99e9-8904c75d401b.png" class="border" width="120px" alt="대한항공"></div>
						<div class="swiper-slide"><img src="/docs/code/2f581d87-2a81-41a0-9944-d73ef905ae7c.png" class="border" width="120px" alt="아시아나항공"></div>
						<div class="swiper-slide"><img src="/docs/code/dcc5f664-9400-46a7-b2f0-2cb388082373.png" class="border" width="120px" alt="제주항공"></div>
						<div class="swiper-slide"><img src="/docs/code/1e69610f-93b3-4028-8993-d9f2e5e67982.png" class="border" width="120px" alt="진에어"></div>
						<div class="swiper-slide"><img src="/docs/code/25b44d13-f2f8-42c1-8098-db585fc23975.png" class="border" width="120px" alt="티웨이항공"></div>
						<div class="swiper-slide"><img src="/docs/code/3fbe2b0b-445a-4fce-b5ad-ee4baee0339d.png" class="border" width="120px" alt="이스타항공"></div>
						<div class="swiper-slide"></div>
					</div>
				</div>
			</div>
		</div>		
	</div>
</div>

<script>
if ($(window).width() > 768) {
	var jrecruitMouSwiper = new Swiper('.ko-recruit-sw', {
		slidesPerView : 9,
	});
}else{
	var jrecruitMouSwiper = new Swiper('.ko-recruit-sw', {
		slidesPerView : 2.7	
	});
}
</script>

<!-- 하단링크 -->
<%@ include file="../include/footlink.jsp"%>

<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>

</body>
</html>