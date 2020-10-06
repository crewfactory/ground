<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-크루모먼트</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>
<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>

<div class="container-fluid mt-5">
	<div class="row gs-row">
	  <div class="col-12">
	    <div class="col-2 mb-1 font-30 font-bold mobile-100-percent">포토갤러리</div>
	    <div class="col-10 py-2 mobile-100-percent font-16 font-gray">수업모습, 간담회, 설명회 등 실제수업모습</div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>

<div class="container-fluid my-4">
   <div class="row gs-row">
      <div class="col-12 pb-2">
      	<div class="col-12 faq-search text-center" id="mobile-100-percent">
         	<form role="form" name="frmSearch" id="frmSearch">		
				<input type="hidden" name="init" value="${init}" />
				<input type="hidden" name="startPage" id="startPage" value="" />
				<input type="hidden" name="visiblePages" id="visiblePages" value="" />
				<input type="hidden" name="branch" id="branch" value="${param.branch}"/>
				<div class="input-group faq-search-row">
			  		<input class="form-control" name="searchText" id="searchText" type="text" placeholder="검색어를 입력하세요" style="height:3.5rem;" value="${param.searchText}">
			  		<div class="input-group-append">
						<button class="btn btn-primary" name="searchBtn" id="searchBtn"><img class="faq-search-btn" src="../img/ico-search-wh.png"></button>
			  		</div>
				</div>
		  		</form>	
		  </div>
	   </div>
	</div>
</div>	  

<div class="container-fluid" id="containter-body">
  <div class="row gs-row">
	<div class="col-12 moment-list">
	  <ul>
	    <c:forEach items="${result}" var="list">
	    <li>
			<div class="my-2 off-hide moment-thumbnail">
			  <a href="/crewpeople/momentv.do?idx=${list.idx}&branch=${param.branch}&init=N&startPage=${param.startPage}&visiblePages=${param.visiblePages }&search=${param.search}" class="hvr-grow">
				<c:choose>
					<c:when test="${list.thumbnail eq ''}"><img src="/img/weare.png" style="width:100%;"></c:when>
					<c:otherwise><img src="${list.thumbnail}" style="width:100%;"></c:otherwise>
				</c:choose>
			 	</a>
			</div>
			<div class="mx-2 my-3" style="height:2rem;">
			<span class="font-18"><a href="/crewpeople/momentv.do?idx=${list.idx}&branch=${param.branch}&init=N&startPage=${param.startPage}&visiblePages=${param.visiblePages }&search=${param.search}">${list.title}</a></span>
			<c:if test="${ nowdate <= regdate + 14 }"><label class="mx-2 hot-dot"></label></c:if>
			</div>
			<div class="mx-2 font-14 font-gray">
			<span class="align-left"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></span>
			</div>
	    </li>
	    </c:forEach>
	  </ul>  
	</div>		
  </div>	
</div>

<div class="container-fluid my-5" id="containter-body">
	<div class="row gs-row">
		<div class="col-12 paging text-center">
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

$(document).ready(function() {
       
	$("#search").click(function(){
	    $("#frmSearch").submit();
	});
	     
	var totalPages = ${totalPage};	//전체 페이지
	var visiblePages = 3;			//리스트 보여줄 페이지
	var startPage = ${startPage};	//현재 페이지
	 
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

</script>
</body>
</html>