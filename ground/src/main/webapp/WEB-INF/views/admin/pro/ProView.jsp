<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file = "../include/header.jsp" %>
<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          
		  <form action="/manager/pro/update.do" name="form" id="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
          <input type="hidden" name="idx" value="${result.idx }">
          <input type="hidden" name="editthumbnail" value="${result.thumbnail }">
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
						<div class="form-group" style="width:400px;">
              			<label class="col-12 mb-4">강사대표사진등록 (400px * 500px)</label>
              			<div class="col-12" style="background-color:#eaeaea; border-radius:10px;">
              				<img src="${result.thumbnail }" class="wrapper-tn" id="wrapper-tn" width="100%">
              			</div>
              			<label class="col-12 my-2">배경이 투명한 PNG파일로 등록하시기바랍니다.</label>
              			<div class="my-2">
              				<input type="file" name="thumbnail" id="thumbnail" style="display:none;">
              				<button type="button" class="btn btn-primary" id="upload">업로드</button>
              				<button type="button" class="btn btn-danger" id="deleter" onclick="deleteImageAction()">지우기</button>
              			</div>
               	</div>
                </div>
              </div>
            </div>
				<div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
						<div class="form-group">
							<label for="section" class="control-label">노출순위(메인노출을 설정하면 사이트메인에 노출됨, 상단노출은 강사소개페이지에서 상위에 노출시키고자 할때 설정 함)</label>
	                  <div class="input-group">	                 
		                  <select name="openidx" id="openidx" class="form-control" required>
		                  	<option value="99" <c:if test="${result.openidx eq '99' }">selected</c:if>>메인노출암함</option>
		                  	<option value="01" <c:if test="${result.openidx eq '01' }">selected</c:if>>첫번째노출</option>
		                  	<option value="02" <c:if test="${result.openidx eq '02' }">selected</c:if>>두번째노출</option>
		                  	<option value="03" <c:if test="${result.openidx eq '03' }">selected</c:if>>세번째노출</option>
		                  	<option value="04" <c:if test="${result.openidx eq '04' }">selected</c:if>>네번째노출</option>
		                  	<option value="05" <c:if test="${result.openidx eq '05' }">selected</c:if>>다섯번째노출</option>
		                  </select>
		                  <select name="openpos" id="openpos" class="form-control" required>
		                  	<option value="99">숫자가 높을수록 상단에 정렬됨</option>
		                  	<option value="30" <c:if test="${result.openpos eq '30' }">selected</c:if>>30</option>
		                  	<option value="29" <c:if test="${result.openpos eq '29' }">selected</c:if>>29</option>
		                  	<option value="28" <c:if test="${result.openpos eq '28' }">selected</c:if>>28</option>
		                  	<option value="27" <c:if test="${result.openpos eq '27' }">selected</c:if>>27</option>
		                  	<option value="26" <c:if test="${result.openpos eq '26' }">selected</c:if>>26</option>
		                  	<option value="25" <c:if test="${result.openpos eq '25' }">selected</c:if>>25</option>
		                  	<option value="24" <c:if test="${result.openpos eq '24' }">selected</c:if>>24</option>
		                  	<option value="23" <c:if test="${result.openpos eq '23' }">selected</c:if>>23</option>
		                  	<option value="22" <c:if test="${result.openpos eq '22' }">selected</c:if>>22</option>
		                  	<option value="21" <c:if test="${result.openpos eq '21' }">selected</c:if>>21</option>
		                  	<option value="20" <c:if test="${result.openpos eq '20' }">selected</c:if>>20</option>
		                  	<option value="19" <c:if test="${result.openpos eq '19' }">selected</c:if>>19</option>
		                  	<option value="18" <c:if test="${result.openpos eq '18' }">selected</c:if>>18</option>
		                  	<option value="17" <c:if test="${result.openpos eq '17' }">selected</c:if>>17</option>
		                  	<option value="16" <c:if test="${result.openpos eq '16' }">selected</c:if>>16</option>
		                  	<option value="15" <c:if test="${result.openpos eq '15' }">selected</c:if>>15</option>
		                  	<option value="14" <c:if test="${result.openpos eq '14' }">selected</c:if>>14</option>
		                  	<option value="13" <c:if test="${result.openpos eq '13' }">selected</c:if>>13</option>
		                  	<option value="12" <c:if test="${result.openpos eq '12' }">selected</c:if>>12</option>
		                  	<option value="11" <c:if test="${result.openpos eq '11' }">selected</c:if>>11</option>
		                  	<option value="10" <c:if test="${result.openpos eq '10' }">selected</c:if>>10</option>
		                  	<option value="9" <c:if test="${result.openpos eq '9' }">selected</c:if>>9</option>
		                  	<option value="8" <c:if test="${result.openpos eq '8' }">selected</c:if>>8</option>
		                  	<option value="7" <c:if test="${result.openpos eq '7' }">selected</c:if>>7</option>
		                  	<option value="6" <c:if test="${result.openpos eq '6' }">selected</c:if>>6</option>
		                  	<option value="5" <c:if test="${result.openpos eq '5' }">selected</c:if>>5</option>
		                  	<option value="4" <c:if test="${result.openpos eq '4' }">selected</c:if>>4</option>
		                  	<option value="3" <c:if test="${result.openpos eq '3' }">selected</c:if>>3</option>
		                  	<option value="2" <c:if test="${result.openpos eq '2' }">selected</c:if>>2</option>
		                  	<option value="1" <c:if test="${result.openpos eq '1' }">selected</c:if>>1</option>
		                  </select>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
						<div class="form-group">
							<label for="proname" class="control-label">이름/직급</label>
	                  <div class="input-group">
		                  <input type="text" class="form-control" value="${result.proname }" name="proname" id="title" placeholder="이름" required>
		                  <input type="text" class="form-control ml-2" value="${result.ranks }" name="ranks" id="title" placeholder="직급" required>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
               	<div class="form-group">
							<label for="subject" class="control-label">강사대표문장</label>
	                  <div class="input-group">
		                  <input type="text" class="form-control" value="${result.subject }" name="subject" placeholder="주제" required>
		                  <input type="text" class="form-control ml-2" value="${result.sentence }" name="sentence" placeholder="문장" data-error="제목을 입력하세요." required>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
               	<div class="form-group">
							<label for="schedule" class="control-label">강의스케쥴/과목명</label>
	                  <div class="input-group">
		                  <input type="text" class="form-control" value="${result.schedule }" name="schedule" placeholder="예) 평일 10:00 ~ 19:00" required>
		                  <input type="text" class="form-control ml-2" value="${result.classnm }" name="classnm" placeholder="예) 대한항공/아시아나항공 취업대비반, 국내항공사 정규과정" required>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
               	<div class="form-group">
							<label for="title" class="control-label">강사소개(약력, 주요경력 등)</label>
	                  <div class="input-group">
		                  <textarea class="form-control" name="history" id="editor" data-error="내용을 입력하세요." required>${result.history }</textarea>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
               	<div><button type="submit" class="btn btn-primary mr-2">저장</button>
               	<button type="button" onclick="deleteContent('${result.idx}')" class="btn btn-danger mr-2">삭제</button>
                  <a href="list.do" class="btn btn-light">취소</a></div>
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
	 	$("#form").validator();
	}); 	

</script>
<script>
	
	$("#upload").click(function (e) {
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
		$("#wrapper-tn").attr("src", "/admin/images/ex-pro-img.png");
		$("#thumbnail").val("");
	}
	
	function deleteContent(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			location.href="/manager/pro/delete.do?idx="+idx;	
		}else{
			return;
		}		
	}
	
</script>

</body>  
</html>


  


