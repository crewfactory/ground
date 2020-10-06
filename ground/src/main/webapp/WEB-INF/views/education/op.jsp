<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-여행사오퍼레이터</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
<%@ include file="../include/nav.jsp"%>



<div class="container-fluid" style="background:url('/img/edu-class-operator-bg.jpg') no-repeat right;">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-7 mt-5 py-5 px-5 mobile-100-percent" style="border-radius: 20px 20px 0px 0px; background-color:rgba(255, 255, 255, 1.0);">
				<p class="font-14 mb-4 font-gray">Travel Agency Operator</p>
				<p class="font-40 mb-4">여행사오퍼레이터<br>교육과정</p>
				<p class="font-14 mb-4 font-gray">여행실무교육을 통해서 여행상품기획 및 PPT제작 등의 교육진행.<br>여행사에 필요로한 인재를 양성합니다.</p>
				<div class="mt-5">
					<a href="/counsel/online.do"><button class="banner-button2 my-2">상담신청</button></a>
					<a href="/counsel/online.do?cost=y&imgchk="><button class="banner-button2 my-2">수강료조회</button></a>
				<a href="/banner/classopen.do"><button class="banner-button2 my-2">개강일정</button></a>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid py-5">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-6 py-5 mobile-100-percent">
				<p class="my-3 font-40 font-gray"><span class="font-bold font-black">수강</span>에서 <span class="font-bold font-black">취업</span>까지</p>
				<p class="my-3 font-40">멘토의 집중케어로</p>
				<p class="my-3 font-40 font-bold">취업목표달성</p>
				<p class="my-3 font-gray">크루팩토리여행사학원은 전직여행사출신 강사/교수진으로 이루어진 1:1 담당멘토제도를 통해 수강생의 취업까지 집중케어하고 있습니다.</p>
				<!-- <div class="col-12"><button class="banner-button mt-5">직무컨설팅 신청하기</button></div> -->
			</div>
			<div class="col-1 mobile-100-percent"></div>
			<div class="col-5 py-4 mobile-100-percent">
				<img src="/img/edu-class-common-sys-img.jpg" class="mobile-100-percent rad-div-20">
			</div>
		</div>
	</div>
</div>

<div class="container-fluid py-5 bg-ivory">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-12 mobile-100-percent text-center">
				<img src="/img/detail_op_001.png" class="mobile-100-percent">
				<img src="/img/detail_op_002.jpg" class="mobile-100-percent">
				<p class="font-18 my-3" style="line-height:25px;">CRS는 컴퓨터 시스템을 통해 예약, 발권 시스템을 구축 고객의 요청을 기반으로 도착지, 운항스케줄, 좌석CLASS 등을 조회하여 적정 항공운임을 자동으로 산출하는 예약의 기반이 되는 시스템으로 
				여행사취업을 목표로 한다면 반드시 배워야하는 필수 커리큘럼입니다.</p>
				<div><a href="/education/crsdcs.do"><button class="banner-button mt-5">CRS/DCS과정 상세보기</button></a></div>
			</div>
			<div class="col-6"></div>
		</div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12 py-2 text-center mb-5">
			<img src="/img/detail_op_003.jpg" class="mobile-100-percent">
			<p class="font-18 my-3 mobile-hidden" style="line-height:25px;">현지답사 및 자료/정보 수집을 통해 여행상품을 기획하고 패키지로 개발하여,<br> 상품으로 판매를 하거나 패키지 여행을 원하지 않는 FIT(자유여행) 여행객들을 대신하여 전체 일정을 기획하고<br> 숙소, 식당, 렌트카, 항공등을 예약 수배하여 고객이 여행을 출발과 도착까지 모든 일정을 관리하는 기획자. </p>
			<p class="font-18 my-3 mobile-show" style="line-height:25px;">현지답사 및 자료/정보 수집을 통해 여행상품을 기획하고 패키지로 개발하여,상품으로 판매를 하거나 패키지 여행을 원하지 않는 FIT(자유여행) 여행객들을 대신하여 전체 일정을 기획하고 숙소, 식당, 렌트카, 항공등을 예약 수배하여 고객이 여행을 출발과 도착까지 모든 일정을 관리하는 기획자. </p>
			<img src="/img/detail_op_004.png" class="mobile-100-percent mt-3">
		</div>
	
	
	<div class="container-fluid ">
		<div class="row gs-row">
			<div class="col-12 py-2 text-center ">
				<img src="/img/detail_op_005.png" class="mobile-100-percent">
				<img src="/img/detail_op_mo006.png" class="mobile-100-percent mobile-show">
			</div>
		</div>
	</div>
	
	<div class="container-fluid ">
		<div class="row gs-row">
			<div class="col-12 mb-5  text-center mobile-hidden">
				<img src="/img/detail_op_006.png" >
				
			</div>
		</div>
	</div>
		<div class="col-12 my-4 ">
			<div class="col-5 mobile-100-percent">
				
				<img src="/img/edu-op-img-0000.png" width="100%" class="rad-div-10">
			</div>
			<div class="col-1 mobile-hidden"></div>
			<div class="col-6" id="mobile-100-percent">
				<p class="font-18 font-bold my-3">관광의 기초 /상품설명</p>
				<ul>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">관광의 개념을 파악하고 관광산업의 3구조를 이해하기</li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">고객의 요구를 파악하고 상품을 추천하여 고객의 만족도를  향상시킬 수 있는 교육</li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">상품을 선택한 후 설명하고 결과를 활용하는 능력을 배양 </li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-4">
			<div class="col-5 mobile-100-percent">
				<img src="/img/edu-op-img-0001.png" width="100%" class="rad-div-10">
			</div>
			<div class="col-1 mobile-hidden"></div>
			<div class="col-6" id="mobile-100-percent">
				<p class="font-18 font-bold my-3">상품상담 및 자료작성</p>
				<ul>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">여행정보의 중요성과 기능을 이해하고 상품상담 매뉴얼 작성요령</li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">여행정보매체유형을 탐색하여 여행객들에게 다양한 정보를 제공</li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">상담자료를 수집하고 작성한 후 전달하는 능력을 함양</li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">항공운임/지상비/기타비용을 산출하여 원가료를 작성하고 견적서 산출하기</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-4">
			<div class="col-5 mobile-100-percent">
				<img src="/img/edu-op-img-0002.png" width="100%" class="rad-div-10">
			</div>
			<div class="col-1 mobile-hidden"></div>
			<div class="col-6" id="mobile-100-percent">
				<p class="font-18 font-bold my-3">지상수배와 랜드오퍼레이터의 역할</p>
				<ul>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">항공예약의 목적을 이해하고 각 나라별 도시 및 공항코드 교육 </li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">여행목적지의 호텔, 식당, 차량, 가이드, 관광지 등을 예약현지의 숙박, 식당, 관광지를 수배하는 능력을 향상</li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">여행상품기획 및 구성(인바운드,아웃바운드)</li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">여행목적에 따른 견적서 산출 & 현지의 안전역할 업무파악</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-4">
			<div class="col-5 mobile-100-percent">
				<img src="/img/edu-op-img-0003.png" width="100%" class="rad-div-10">
			</div>
			<div class="col-1 mobile-hidden"></div>
			<div class="col-6" id="mobile-100-percent">
				<p class="font-18 font-bold my-3">여행요금상담</p>
				<ul>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">수속업무진행(여권및비자처리업무)</li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">여행상품결산</li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">여행요금을상담하는능력을 함양</li>
				</ul>
			</div>
		</div>
		<div class="col-12 my-4">
			<div class="col-5 mobile-100-percent">
				<img src="/img/edu-op-img-0004.png" width="100%" class="rad-div-10">
			</div>
			<div class="col-1 mobile-hidden"></div>
			<div class="col-6" id="mobile-100-percent">
				<p class="font-18 font-bold my-3">여행상품계약</p>
				<ul>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">여행계약서를 이해하고 작성요령을 파악하여 계약체결 </li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">계약체결시 유의사항 안내하기</li>
					<li class="ml-4 mx-2 my-2" style="list-style-type:disc;">개인별 답변 / 태도 &amp; 자세 / 아이컨텍 &amp; 스마일 / 음성이미지 피드백</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid  bg-light-gray-v3">
		<div class="row gs-row ">
			<div class="col-12 py-2 mt-5 text-center ">
				<img src="/img/detail_op_007.png" class="mobile-100-percent">
			</div>
			<div class="col-12 py-2  text-center ">
				<p class="font-18 my-3 mobile-hidden" style="line-height:25px;">여행사 경력을 쌓고, 여행상품 기획부서에서 오퍼레이터를 하다 경력을  쌓고 <br>항공사의 상품개발팀이나 타 여행사로 이직이 가능하다.<br> 여행사를 창업하여 자신만의 특색있는 상품을 개발하여 창업도 가능하다.<br>오피레이터는 경력이 곧 실력이며 모든 여행에 대한 지식이 자산이며 여행사의 수익의 원천이기 때문에 꼭 필요한 직종이다. </p>
				<p class="font-18 my-3 mobile-show" style="line-height:25px;">여행사 경력을 쌓고, 여행상품 기획부서에서 오퍼레이터를 하다 경력을 쌓고 항공사의 상품개발팀이나 타 여행사로 이직이 가능하다. 여행사를 창업하여 자신만의 특색있는 상품을 개발하여 창업도 가능하다. 오퍼레이터는 경력이 곧 실력이며 모든 여행에 대한 지식이 자산이며 여행사의 수익의 원천이기 때문에 꼭 필요한 직종이다.</p>
				<img src="/img/detail_op_008.png" class="mobile-100-percent">
			</div>
			<div class="col-12 py-5 mobile-100-percent text-center">
		  	<img src="/img/crsdcs-org-img.png" class="mobile-100-percent">
		  	</div>
		</div>
	</div>

<!-- 크루팩토리 채용시스템(공통) -->
<%@ include file="../include/recruitsys.jsp"%>

<!-- 하단링크 -->
<%@ include file="../include/footlink.jsp"%>

<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
<%@ include file="../include/footer.jsp"%>
</footer>

</body>
</html>