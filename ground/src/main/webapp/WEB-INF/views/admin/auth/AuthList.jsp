<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file = "../include/header.jsp" %>

<body>   
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">         
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="d-flex justify-content-between flex-wrap">
                <div class="d-flex align-items-end flex-wrap">
                  <div class="mr-md-3 mr-xl-5">
                    <h3 class="under-line mx-1">권한관리@</h3>
                  </div>
                </div>
				<div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-danger bg-white btn-icon mr-3 mt-2 mt-xl-0" onclick="goWrite()">
                    <i class="mdi mdi-plus text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 d-none d-md-block ">
                    <i class="mdi mdi-download text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                    <i class="mdi mdi-clock-outline text-muted"></i>
                  </button>
                  <!-- button class="btn btn-primary mt-2 mt-xl-0">Download report</button-->
                </div>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="table-responsive">
                    <table id="data-table" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                            <th>권한</th>
                            <th>소속팀</th>
                            <th>이름</th>
                            <th>아이디</th>
                            <th>최근접속일</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                            <td>${list.section}</td>
                            <td>
                            	<c:choose>
                            		<c:when test="${list.team eq 'operator'}">운영자</c:when>
                            		<c:when test="${list.team eq 'cabin'}">숭무팀</c:when>
                            		<c:when test="${list.team eq 'goone'}">항운1팀</c:when>
                            		<c:when test="${list.team eq 'gotwo'}">항운2팀</c:when>
                            		<c:when test="${list.team eq 'ground'}">지상직팀</c:when>
                            	</c:choose>
                            </td>
                            <td><a href="/manager/auth/AuthView.do?idx=${list.idx}">${list.usernm}</a></td>
                            <td>${list.userid}</td>
                            <td><fmt:formatDate value="${list.recdate}" pattern="yyyy-MM-dd HH:MM" /></td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
		<%@ include file="../include/footer.jsp" %>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
 </body>

<script>
 	
 	$(document).ready(function() {
    	$('#data-table').DataTable();
	} );
 	
 	function goWrite(){
 		document.location.href="/manager/auth/AuthWrite.do";
 	}
 	
</script>


