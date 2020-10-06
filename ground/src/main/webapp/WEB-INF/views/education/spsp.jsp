<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-외국항공사지상직 취업준비반</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
<%@ include file="../include/nav.jsp"%>

<div class="container-fluid" style="background:url('/img/edu-class-spsp-banner-bg.jpg') no-repeat right;">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-7 mt-5 py-5 px-5 mobile-100-percent" style="border-radius: 20px 20px 0px 0px; background-color:rgba(255, 255, 255, 1.0);">
				<p class="font-14 mb-4 font-gray">Intensive course for FSCs</p>
				<p class="font-40 mb-4">한진ㆍ금호그룹 <br>대졸공채 취업반 </p>
				<p class="font-14 mb-4 font-gray">한진, 금호 계열사 대졸공채 채용직무를 이해하고 <br>채용과정과 해당 항공사에 관련된 기업이슈 등을 분석하는 전문 취업 코스입니다.</p>
				<div class="mt-5">
				<a href="/counsel/online.do"><button class="banner-button2 my-2">상담신청</button></a>
				<a href="/counsel/online.do?cost=y&imgchk="><button class="banner-button2 my-2">수강료조회</button></a>
				<a href="/banner/classopen.do"><button class="banner-button2 my-2">개강일정</button></a>
				</div>
			</div>
		</div>
	</div>
</div>

<div style="text-align: center;">
		<img src="/img/d2-001.jpg" alt="대졸공채" id="mobile-100-percent" class="mobile-show">
		<img src="/img/d2-002.jpg" alt="대졸공채" id="mobile-100-percent" class="mobile-show">
		<img src="/img/d2-01.png" alt="대졸공채" id="mobile-100-percent" class="mobile-show">
		<img src="/img/d2-02.png" alt="대졸공채" id="mobile-100-percent" class="mobile-show">
	</div>
	
	<div style="text-align: center;">
		<img src="/img/d2-02-001.png" alt="대졸공채"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/d2-02-01.png" alt="대졸공채"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/d2-02-02.png" alt="대졸공채"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/d2-02-03.png" alt="대졸공채"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/d2-02-04.png" alt="대졸공채"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
	</div>

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