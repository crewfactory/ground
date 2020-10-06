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
                    <h3 class="under-line mx-1">강사진관리@</h3>
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
                    <table id="tabler" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th>메인</th>
                            <th>정렬</th>
                            <th>사진</th>
                            <th>이름</th>
                            <th>직책</th>
                            <th>주제</th>
                            <th>스케쥴</th>
                            <th>관리자</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                        	<td>
                        	<c:choose>
                       		  <c:when test="${ list.openidx eq '01' }">메인, 첫번째</c:when>
                       		  <c:when test="${ list.openidx eq '02' }">메인, 두번째</c:when>
                       		  <c:when test="${ list.openidx eq '03' }">메인, 세번째</c:when>
                       		  <c:when test="${ list.openidx eq '04' }">메인, 네번째</c:when>
                       		  <c:when test="${ list.openidx eq '05' }">메인, 다섯번째</c:when>
                       		  <c:otherwise></c:otherwise>
                       		</c:choose>
                       		</td>
                       		<td>${list.openpos}</td>
                            <td><img src="${list.thumbnail}"></td>
                            <td><a href="/manager/pro/view.do?idx=${list.idx}">${list.proname}</a></td>
                            <td>${list.ranks}</td>
                            <td>${list.subject}</td>
                            <td>${list.schedule}</td>
                            <td>${list.regid}</td>
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
    	$('#tabler').DataTable({
    		"order": [[0, 'desc'], [1, 'desc']],
    		"iDisplayLength": 200
    	});
	});
 	
 	function goWrite(){
 		document.location.href="/manager/pro/write.do";
 	}
 	
 </script>


