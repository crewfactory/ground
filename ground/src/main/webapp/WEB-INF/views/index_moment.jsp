<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 메인크루모먼트 -->
<div class="container-fluid py-2 mb-5 main-moment">
  <div class="row">
    <div class="col-12 text-center">
      <img src="img/main-sign-txt_04.png" class="mobile-75-percent">
    </div>
    <div class="col-12 slider sl-main-moment">
      <c:forEach items="${moment}" var="moment">
        <div class="slick-slide mx-2" class="main-moment-container">
				<a href="/crewpeople/momentv.do?idx=${moment.idx}&branch=" class="">
           		<img src="${moment.thumbnail}" width="100%">
           	</a>
           	<p class="px-3 py-2">${fn:substring(moment.title, 0, 32)}</p>
           	<p class="px-3 font-gray"><fmt:formatDate value="${moment.regdate}" pattern="yyyy-MM-dd"/></p>
        </div>
      </c:forEach>
    </div>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	
	$('.sl-main-moment').slick({
      autoplay: true, 		//자동슬라이드
      slidesToShow: 3, 		//큰이미지 몇개 보여줄것인지
      slidesToScroll: 1,
      arrows: false,
      fade: false,
      dot: true,
      centerMode: true,
      //variableWidth: true
      responsive: [ 
  	  { /* 반응형웹*/ 
  		  breakpoint: 960, 
  		  /* 기준화면사이즈 */ 
  		  settings: {slidesToShow:2, arrows: false, } 
  	  	/* 사이즈에 적용될 설정 */ 
  	  },
  	  { /* 반응형웹*/
  		  breakpoint: 768, 
  		  /* 기준화면사이즈 */ 
  		  settings: {slidesToShow:1, arrows: false, } 
  	  	/* 사이즈에 적용될 설정 */ } 
  	]
	});
	
});
</script> 