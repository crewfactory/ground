<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="/manager/index.do">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">대시보드</span>
            </a>
          </li>
          <c:if test="${sessionScope.ManagerInfo.section eq 'super'}">
          <li class="nav-item">
            <a class="nav-link" href="/manager/auth/Auth.do?act=b">
              <i class="mdi mdi-key menu-icon"></i>
              <span class="menu-title">권한관리</span>
            </a>
          </li>
          </c:if>
<!--           <li class="nav-item">
            <a class="nav-link" href="/manager/code.do?act=f">
              <i class="mdi mdi mdi-link-variant menu-icon"></i>
              <span class="menu-title">코드관리</span>
            </a>
          </li> -->
          <li class="nav-item">
            <a class="nav-link" href="/manager/pro/list.do">
              <i class="mdi mdi-account menu-icon"></i>
              <span class="menu-title">강사관리</span>
            </a>
          </li>
          <li class="nav-item <c:if test="${ param.act eq 'c'}">active</c:if>">
            <a class="nav-link" data-toggle="collapse" href="#mem" aria-expanded="false" aria-controls="mem">
              <i class="mdi mdi-account menu-icon"></i>
              <span class="menu-title">회원관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="mem">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"><a class="nav-link" href="/manager/member.do?team=${sessionScope.ManagerInfo.team}">회원관리</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/counsel.do?team=${sessionScope.ManagerInfo.team}">상담신청관리</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/spclass.do?team=${sessionScope.ManagerInfo.team}">특강신청관리</a></li>
                <%-- <li class="nav-item"><a class="nav-link" href="/manager/befmem.do?team=${sessionScope.ManagerInfo.team}">이전회원조회</a></li> --%>
                <li class="nav-item"><a class="nav-link" href="/manager/black.do?team=${sessionScope.ManagerInfo.team}">삭제된상담신청내역</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item <c:if test="${ param.act eq 'd'}">active</c:if>">
            <a class="nav-link" data-toggle="collapse" href="#bbs" aria-expanded="false" aria-controls="bbs">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">게시판관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="bbs">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="/manager/announce.do?team=${sessionScope.ManagerInfo.team}">공지사항</a></li>
                <li class="nav-item"> <a class="nav-link" href="/manager/news.do?team=${sessionScope.ManagerInfo.team}">언론보도자료</a></li>
                <li class="nav-item"> <a class="nav-link" href="/manager/recruit.do">지상직채용공고</a></li>
                <!-- <li class="nav-item"> <a class="nav-link" href="/manager/interview.do">면접질문항목</a></li> -->
                <li class="nav-item"> <a class="nav-link" href="/manager/faq.do?team=${sessionScope.ManagerInfo.team}">자주묻는질문</a></li>
                <!-- li class="nav-item"> <a class="nav-link" href="/manager/various.do">항공사최신뉴스</a></li-->
              </ul>
            </div>
          </li>
          <li class="nav-item <c:if test="${ param.act eq 'e'}">active</c:if>">
            <a class="nav-link" data-toggle="collapse" href="#cpm" aria-expanded="false" aria-controls="cpm">
              <i class="mdi mdi-circle-outline menu-icon"></i>
              <span class="menu-title">블러그관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="cpm">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"><a class="nav-link" href="/manager/blog/WeAre.do?team=${sessionScope.ManagerInfo.team}">지상직매거진</a></li>
                <!-- <li class="nav-item"><a class="nav-link" href="/manager/blog/Wave.do?section=wave">그루웨이브</a></li> -->
                <li class="nav-item"><a class="nav-link" href="/manager/blog/Moment.do?section=moment&team=${sessionScope.ManagerInfo.team}">포토갤러리</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/review.do?team=${sessionScope.ManagerInfo.team}">합격생인터뷰</a></li>
              </ul>
            </div>
          </li>
        </ul>
      </nav>
      <!-- partial -->