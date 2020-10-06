<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file = "../include/header.jsp" %>
<!-- <style>
	.ck.ck-editor{
		max-width: 100%;
	}
	.ck-editor__editable{
		min-height: 800px;
	}
</style> -->
<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          
		  <form action="/manager/announce/insert.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.team}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <input type="file" name="thumbnail" id="thumbnail" style="display:none;">
          <div class="row">
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="section">구분/노출범위설정</label>
                      <div class="input-group">
                        <select class="form-control mr-2" name="section" id="section">
                          <option value="notice">공지</option>
                          <option value="event">행사</option>
                          <option value="special">특강</option>
                          <option value="etc">기타</option>
                        </select>
                        <select class="form-control mr-2" name="domain" id="domain" style="background-color:#e1fdff;">
                          <option value="all">전체사이트</option>
                          <option value="person">개별사이트</option>
                        </select>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div> 
                    <div class="form-group">
                      <label for="title" class="control-label">제목</label>
                      <input type="text" class="form-control" value="" name="title" id="title" placeholder="제목" data-error="제목을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="description" class="control-label">설명 : 게시글을 요약할 수 있는 문장으로 400자 내외로 <font color="red">줄바꿈없이</font> 입력</label>
                      <textarea class="form-control" name="description" id="description" rows="5" maxlength="500"></textarea>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="editor" class="control-label">내용</label>
	                  	<textarea class="form-control" name="content" id="editor" data-error="내용을 입력하세요." required></textarea>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <a href="../announce.do" class="btn btn-light">취소</a>
                </div>
              </div>
            </div>
          </div>	
		</form>          
        </div>
        <!-- content-wrapper ends -->
		<%@ include file="../include/footer.jsp" %>
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

<script>
	
	$("#upload-tn").click(function (e) {
  		e.preventDefault();
 		$("#thumbnail").click();
 	});	
	
	$(document).ready(function(){
		$("#thumbnail").on("change", handleImageFileSelect);
	});
	
	function handleImageFileSelect(e){
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		fileArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지파일만 업로드 가능합니다.");
				return;
			}
			var reader = new FileReader();
			reader.onload = function(e){
				$("#wrapper-tn").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	function deleteImageAction(){
		$("#wrapper-tn").attr("src", "/admin/images/no-image.png");
		$("#thumbnail").val("");
	}
	
</script>

</body>  
</html>


  


