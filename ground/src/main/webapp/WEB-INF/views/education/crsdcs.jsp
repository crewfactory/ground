<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-지상직 All-Pass과정</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
<%@ include file="../include/nav.jsp"%>


<div class="container-fluid" style="background:url('/img/edu-class-crsdcs-banner-bg.jpg') no-repeat right;">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-7 mt-5 py-5 px-5 mobile-100-percent" style="border-radius: 20px 20px 0px 0px; background-color:rgba(255, 255, 255, 1.0);">
				<p class="font-14 mb-4 font-gray">CRS/DCS Certification Education</p>
				<p class="font-45 mb-4">CRS/DCS<br>자격증 단기취득반 </p>
				<p class="font-14 mb-4 font-gray"></p>
				<div class="mt-5 my-3 mobile-100-percent" >
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
				<p class="my-3 font-gray">크루팩토리지상직학원은 전직지상직출신 강사/교수진으로 이루어진 1:1 담당멘토제도를 통해 수강생의 취업까지 집중케어하고 있습니다.</p>
				<!-- <div class="col-12"><button class="banner-button mt-5">직무컨설팅 신청하기</button></div> -->
			</div>
			<div class="col-1 mobile-100-percent"></div>
			<div class="col-5 py-4 mobile-100-percent">
				<img src="/img/edu-class-common-01.jpg" class="mobile-100-percent rad-div-20">
			</div>
		</div>
	</div>
</div>

<div class="container-fluid my-5">
	<div class="row gs-row">
		<div class="col-12">
			<ul>
				<li class=" my-3 font-28  text-center"><span class="font-30 font-bold">CRS/DCS Master과정</span>     ---- 3주만에 끝내고 면접준비 가능</li>
			
			</ul>
			
		</div>
		<div class="col-12  text-center">
			<img src="/img/edu-class-crsdcs-img-001.jpg" class="mobile-100-percent">
		</div>
		
		
		
		<!-- 예약기반시스템 -->
		<div class="col-12 mt-7 text-center">
			<img src="/img/edu-class-crsdcs-img-002.jpg" class="mobile-100-percent">
		</div>
		<div class="col-12 mt-5">
			<ul>
				<li class=" my-3 font-30  text-center font-navy font-navy-m"><span class="font-30 font-bold">[CRS 교육과정]</li>
				<li class=" my-3 font-20  text-center font-gray">(Computerized Reservation System)</li>
			</ul>
		</div>
		<div class="col-12 text-center">
			<img src="/img/edu-class-crsdcs-img-003.jpg" class="mobile-100-percent">
			<p class="my-3 mt-5 font-20">전세계 약 500여개 항공사의 모든 항공편 조회 및 스케줄 확인 </p>
			<p class="my-3 font-20">도착지, 운항스케줄, 좌석CLASS등을 조회가능 </p>
		</div>
		<div class="col-12 mt-5 text-center">
			<img src="/img/edu-class-crsdcs-img-004.jpg" class="mobile-100-percent">
		</div>
		
		
		
		<!-- 수속기반시스템 -->
		<div class="col-12 mt-7 text-center">
			<img src="/img/edu-class-crsdcs-img-005.jpg" class="mobile-100-percent">
		</div>
		<div class="col-12 mt-5">
			<ul>
				<li class=" my-3 font-30  text-center font-navy font-navy-m"><span class="font-30 font-bold">[DCS 교육과정]</li>
				<li class=" my-3 font-20  text-center font-gray">(Departure Control System)</li>
			</ul>
		</div>
		<div class="col-12 text-center">
			<img src="/img/edu-class-crsdcs-img-006.jpg" class="mobile-100-percent">
			<p class="my-3 mt-5 font-20">CRS시스템을 통해 만들어진 승객의 고유정보(PNR)을 기반으로 </p>
			<p class="my-3 font-20">탑승수속, 수하물 관리, 출발/탑승 업무 및 탑승기록 등을 기록가능 </p>
		</div>
		
		
		<div class="col-12 mt-7 text-center ">
				<img src="/img/edu-class-crsdcs-img-007.jpg" class="mobile-100-percent">
				<ul>
					<li class=" my-3 mz-3  font-gray  mobile-100-percent"> [▲항공사  체크인카운터 근무 시 사용하는 프로그램]</li>
				</ul>
		</div>
		
		
</div>
<!--미리배워보는  -->
	<div class="container-fluid ">
		<div class="row">
			<div class="col-12 mt-7">
				<img src="/img/edu-class-crsdcs-img-008.jpg" width="100%"  class="mobile-hidden">
			</div>
			<div class="col-12">
				<img src="/img/edu-class-crsdcs-img-mo-008.jpg" width="100%"   id="mobile-100-percent" class="mobile-show">
			</div>
		</div>
	</div>
	
	
<div class="container-fluid my-5 mt-5 mb-5">
	<div class="row cf-row ">
		<div class="col-12 mt-5 mb-5 text-center">
			<img src="/img/edu-class-crsdcs-img-009.png" class="mobile-100-percent">
		</div>
		<div class="col-12 my-4 mt-5">
			<ul>
				<li class=" my-3 font-50 text-center font-navy font-navy-m font-bold">FACT 01</li>
				<li class=" my-3 font-30  text-center ">‘1:3 체계적인 관리 시스템’</li>
				<li class=" my-3 font-15 text-center font-darkgray ">※ 3인 관리 체계</li>
			</ul>
		</div>
		<div class="col-12 mt-8 "  id="mobile-100-percent">
				<div class="col-6 text-center" id="mobile-100-percent"   >
					<img src="/img/edu-class-crsdcs-img-mo-010.jpg" class="text-center" id="mobile-100-percent"  >
				</div>	
				<div class="col-6 mt-6 " id="mobile-100-percent" >		
					<img src="/img/edu-class-crsdcs-img-mo-011.png"  id="mobile-100-percent" >
					<P class="mt-3 font-18">전직 지상직출신 강사/교수진으로 이루어진 1:1 담당 멘토제도를 통해개별 피드백 및 면담 상시 진행</P>
				</div>
		</div>		
	</div>
</div>


<div class="container-fluid ">
	<div class="row cf-row ">
		<div class="col-12">
		</div>
	</div>
</div>

<div class="container-fluid my-5 bg-light-gray-v3 " style="margin: 0 auto; text-align: center;">
	<div class="row gs-row">
		<div class="col-5 mt-5 mb-5  mz-5 text-right" id="mobile-100-percent">
			<P class="mt-3 font-50  font-navy font-navy-m font-bold">FACT 02</P>
			<P class="mt-5 font-30-m" >‘수강부터 취업연계까지’</P>
			<P class="mt-5 font-18" style="line-height: 30px;">개인의 장·단점 파악 후 부족한 부분을 채우는 교육으로 <br>목표항공사 설정 및 취업연계까지 <br>진행 단기간에 최종합격까지의 가능성을 끌어내 줍니다</P>
			<P class="mt-3font-15 font-darkgray mt-3" >※ 1:1 이미지체킹 후 개인별 맞춤컨설팅 진행</P>
		</div>
		<div class="col-1"></div>
		<div class="col-6 mt-5 mb-5  " id="mobile-100-percent">
			<img src="/img/edu-class-crsdcs-img-mo-012.jpg"  id="mobile-100-percent" >
		</div>
			
	</div>
</div>


<div class="container-fluid my-5 ">
	<div class="row gs-row">
		<div class="col-6 mt-5 mb-5  " id="mobile-100-percent">
			<img src="/img/edu-class-crsdcs-img-mo-013.jpg"  id="mobile-100-percent" >
		</div>
		<div class="col-1"></div>
		<div class="col-5 mt-5 mb-5  mz-5 " id="mobile-100-percent">
			<P class="mt-3 font-50 font-navy-m font-navy font-bold">FACT 03</P>
			<P class="mt-5 font-30-m" >‘자기소개서 1:1첨삭’</P>
			<P class="mt-5 font-18" style="line-height: 30px;">항공사 기업분석 및 채용 이해는 당연!<br>변화되는 자기소개서 항목과<br>남들과 차별화 된 나만의 답변을 할 수 있도록 <br>1:1 첨삭 상시 진행</P>
	
		</div>
			
	</div>
</div>

<!--미리배워보는  -->
	<div class="container-fluid ">
		<div class="row">
			<div class="col-12 mt-7">
				<img src="/img/edu-class-crsdcs-img-014.jpg" width="100%"  class="mobile-hidden">
			</div>
			<div class="col-12">
				<img src="/img/edu-class-crsdcs-img-mo-014.jpg" width="100%"   id="mobile-100-percent" class="mobile-show">
			</div>
		</div>
	</div>






<!-- 하단링크 -->
<%@ include file="../include/footlink.jsp"%>

<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>

</body>
</html>