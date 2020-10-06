<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file="../include/header.jsp" %>
<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          
		  <form role="form" name="recruit" method="post" action="/manager/recruit/insert.do" data-toggle="validator">          
          <div class="row">
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="topyn">구분</label>
                      <div class="input-group">
                        <select class="form-control mr-2" name="topyn" id="topyn" required>
                          <option value="N">일반글</option>
                          <option value="Y">상위노출</option>
                        </select>
                        <select class="form-control mr-2" name="section" id="section" required>
                          <option value="01">지상직채용공고</option>
                          <option value="02">여행사채용공고</option>
                        </select>
                        <div class="help-block with-errors text-danger"></div>
                      </div>

                    </div>
                    <div class="form-group">
                      <label for="steptitle">진행상황</label>
                      <div class="input-group">
                        <input type="text" class="form-control mr-2" name="steptitle" id="steptitle" placeholder="예:서류전형" data-error="진행상황을 입력하세요." required>
                        <input type="text" class="form-control input-group-append" name="stepdetail" id="stepdetail" placeholder="예:00월00일" data-error="진행상황을 입력하세요." required>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div> 
                    <div class="form-group">
                      <label for="title" class="control-label">제목</label>
                      <input type="text" class="form-control" name="title" id="title" placeholder="제목" data-error="제목을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="title" class="control-label">Description<span class="mx-2">(포털사이트 검색에 활용되는 내용을 텍스트형태로 서술하세요)</span></label>
                      <textarea class="form-control" name="description" rows="4" required></textarea>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="editor" class="control-label">내용</label>
	                  <textarea class="form-control" name="content" id="editor" required></textarea>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <a href="../recruit.do" class="btn btn-light">취소</a>
                </div>
              </div>
            </div>


          </div>	
		
		</form>          
  
          
          
          
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
<script src="/editor/build/ckeditor.js"></script>
<script src="/editor/src/cke-config.js"></script>  
<script> 

 
 	$(document).ready(function() {
	 	$("#form").validator();	//폼발리데이터
	}); 	

</script>
  
</body>

</html>


