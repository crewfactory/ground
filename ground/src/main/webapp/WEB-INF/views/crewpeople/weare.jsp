<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-취업매거진</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>
<%@ include file = "../include/nav.jsp" %>

<div class="container-fluid mt-5">
	<div class="row gs-row">
	  <div class="col-12">
	    <div class="col-2 mb-1 font-30 font-bold mobile-100-percent">취업매거진</div>
	    <div class="col-10 py-2 mobile-100-percent font-16 font-gray">전직지상직출신 강사/선배들이 알려주는 취업성공노하우!</div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>

<div class="container-fluid mt-4">
	<div class="row gs-row">
		<div class="col-12">
			<div class="col-12 faq-search text-center" id="mobile-100-percent">
				<form role="form" name="frmSearch" id="frmSearch">		
				<input type="hidden" name="init" value="${init}" />
				<input type="hidden" name="startPage" id="startPage" value="" />
				<input type="hidden" name="visiblePages" id="visiblePages" value="" />
				<div class="input-group faq-search-row">
					<input class="form-control" name="searchText" id="searchText" type="text" placeholder="검색어를 입력하세요" style="height:3rem;" value="${param.searchText}">
					<div class="input-group-append">
						<button class="btn btn-primary" name="searchBtn" id="searchBtn"><img class="faq-search-btn" src="../img/ico-search-wh.png"></button>
					</div>
				</div>
				</form>	
			</div>
			<div class="col-12 mt-3">
				<label class="lb-tag" onclick="javascript:searchTag('대한항공');">대한항공 공항인터쉽</label>
				<label class="lb-tag" onclick="javascript:searchTag('아시아나항공');">아시아나항공채용</label>
				<label class="lb-tag" onclick="javascript:searchTag('자소서');">자기소개서</label>
				<label class="lb-tag" onclick="javascript:searchTag('일본');">일본취업</label>
				<label class="lb-tag" onclick="javascript:searchTag('면접');">면접</label>
				<label class="lb-tag" onclick="javascript:searchTag('지상직');">항공사지상직</label>
			</div>
		</div>
	</div>
</div>


<div class="container-fluid" id="containter-body">
	<div class="row gs-row">
		<ul class="col-12">
			<c:forEach items="${result}" var="list">
				<li class="px-2 py-3 col-4 mobile-100-percent" style="height:30rem;">
					<div class="col-12 my-1 border rad-div-10 off-hide" id="blog-image">
					<c:choose>
						<c:when test="${list.thumbnail eq ''}"><img src="/img/weare.png" style="width:100%;" class="hvr-grow"></c:when>
						<c:otherwise><img src="${list.thumbnail}" style="width:100%;" class="hvr-grow"></c:otherwise>
					</c:choose>
					</div>
					<div class="col-12 px-2 font-18 mt-3">
						<a href="/crewpeople/wearev.do?idx=${list.idx}&init=N&startPage=&visiblePages=&search=" class=""><strong>${fn:substring(list.title, 0, 46)}</strong></a>
					</div>
					<div class="col-12 px-2 py-3">
						<p class="font-14 font-gray"><a href="/crewpeople/wearev.do?idx=${list.idx}&init=N&startPage=&visiblePages=&search=" class="">${fn:substring(list.description, 0, 55)}</a></p>
					</div>
					<div class="col-12 px-2 py-1">
						<div class="col-6"><span class="font-12 font-gray text-left"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></span></div>
					</div>
				</li>
			</c:forEach>
		</ul>
		<div class="col-12 my-5 paging text-center">
			<ul class="pagination pagination-lg" id="pagination"></ul>
		</div>
	</div>  
</div>


<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

<script>

function searchTag(obj){
	$('#searchText').val(obj);	
	$("#frmSearch").submit();
}

$(document).ready(function() {
	
	$("#search").click(function(){
	    $("#frmSearch").submit();
	});
	     
	var totalPages = ${totalPage};	//전체 페이지
	var visiblePages = 3;						//리스트 보여줄 페이지
	var startPage = ${startPage};		//현재 페이지
	 
	$('#pagination').twbsPagination({
	    totalPages: totalPages,
	    visiblePages: visiblePages,
       startPage: startPage,
       onPageClick: function (event, page) {
        	$('#startPage').val(page);//보고 싶은 페이지
        	$('#visiblePages').val(visiblePages);
        	$("#frmSearch").submit();
        }
	});
});

function invalidMemberShip(){
	alert("로그인이 필요한 메뉴입니다. 로그인페이지로 이동합니다.");
	location.href = "/member/login.do";
}


</script>
</body>
</html>