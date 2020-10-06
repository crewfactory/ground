<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-상담신청</title>
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
	    <div class="col-3 mb-1 font-30 font-bold mobile-100-percent">온라인상담신청</div>
	    <div class="col-9 py-2 mobile-100-percent font-16 font-gray">크루팩토리에서 취업에 꿈을 이루세요!</div>
	  </div>
	  <div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto;"></div>
	</div>
</div>

<div class="container-fluid">
	<div class="row gs-row">
		<div class="col-12">
			<form role="form" name="counsel" method="post" action="/counsel.do" data-toggle="validator">
			<input type="hidden" name="result" id="result" value="${ param.result }">
			<input type="hidden" name="phone" id="phone" value="">
			<input type="hidden" name="office" value="gangnam">
			<input type="hidden" name="stat" value="신규">
			<input type="hidden" name="path" value="counsel/online.do">
			<input type="hidden" name="domain" value="<%= request.getServerName() %>">
			<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
			<input type="hidden" name="reurl" value="counsel/online.do"/>
			<div class="col-12 my-2">
				<p class="my-2"><!-- 더욱 자세한 상담을 원하시면 추가항목을 클릭하세요--></p>
				<div class="mt-4">
					<button class="btn btn-lg btn-primary mb-1 mx-1" type="button" id="default">간편상담</button>
					<button class="btn btn-lg btn-secondary mb-1 mx-1" type="button" id="cost">수강료조회 +</button>
					<button class="btn btn-lg btn-secondary mb-1 mx-1" type="button" id="imgchk">직무컨설팅신청 +</button>
					<input type="checkbox" name="gubun" id="chkQuick" checked value="간편상담" style="display:none;">
					<input type="checkbox" name="gubun" id="chkCost" value="수강료조회" style="display:none;">
					<input type="checkbox" name="gubun" id="chkImgchk" value="이미치체크" style="display:none;">
				</div>
			</div>
			<div class="col-12 my-4 line-2-black"></div>
			<div class="col-12 ">
				<div class="col-6 mb-2 mobile-100-percent">
					<div class="my-2 font-bold font-20">개인정보입력</div>
						<div class="card col-12 bg-light-gray" style="height:19rem;">
						<div class="card-body">
							<div class="form-group">
		                      <label for="name" class="font-bold">이름/나이</label>
		                      <div class="input-group">
		                      <input type="text" class="form-control" name="name" id="name" onkeyup="onlyKorean('name')" maxlength="10" placeholder="이름" data-error="이름을 정확히 입력하세요" required>
		                      <input type="number" class="form-control input-group-append ml-2" oninput="maxLengthCheck(this)" name="age" id="age" placeholder="나이" maxlength="2" data-error="나이를 정확히 입력하세요" required>
		                      </div>
		                      <div class="help-block with-errors text-danger"></div>
		                    </div>
					        <div class="form-group">
		                      <label for="input-gender" class="font-bold">연락처</label>
		                      <div class="input-group">
		                        <select class="form-control mr-2" id="mobile-1" name="mobile-1" style="height:3.75rem;">
		                          <option value="010">010</option>
		                        </select>
			                    <input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="mobile-2" id="mobile-2" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                    <input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="mobile-3" id="mobile-3" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                  </div>
			                  <div class="help-block with-errors text-danger"></div>
			                </div>
			                <div class="form-group">
		                    	<div class="custom-control custom-checkbox">
			                    	<input type="checkbox" name="agree" value="yes" id="agree" class="custom-control-input" checked>
			                        <label for="agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
			                	</div>
		                    </div>
						</div>
					</div>
				</div>
				
				<div class="col-6 mobile-100-percent mb-2 col-padding">
					<div class="my-2 font-bold font-20">상담정보입력(중복체크가능)</div>
						<div class="card col-12">
						<div class="card-body">
							<div class="input-group">
	                    <div class="form-group col-6 mobile-100-percent">
	                      <label class="font-bold">희망지원분야</label>
	                     <div class="custom-control custom-checkbox">
	                          <input type="checkbox" name="hopse" value="대졸공채반" id="대졸공채반" class="custom-control-input">
	                          <label for="대졸공채반" class="custom-control-label">대졸공채 특별반</label>
	                      </div>
	                      <div class="custom-control custom-checkbox">
	                          <input type="checkbox" name="hopse" value="대한항공/아시아나항공" id="FSC" class="custom-control-input">
	                          <label for="FSC" class="custom-control-label">대한항공/아시아나항공</label>
	                      </div>
	                      <div class="custom-control custom-checkbox">
	                          <input type="checkbox" name="hopse" value="국내항공사" id="LCC" class="custom-control-input">
	                          <label for="LCC" class="custom-control-label">국내LCC항공사</label>
	                      </div>
	                      <div class="custom-control custom-checkbox">
	                          <input type="checkbox" name="hopse" value="외국항공사" id="외국항공사" class="custom-control-input">
	                          <label for="외국항공사" class="custom-control-label">외국항공사지상직</label>
	                      </div>
	                      <div class="custom-control custom-checkbox">
	                          <input type="checkbox" name="hopse" value="GHA/GSA" id="GHA/GSA" class="custom-control-input">
	                          <label for="GHA/GSA" class="custom-control-label">GHA/GSA</label>
	                      </div>
	                      <div class="custom-control custom-checkbox">
	                          <input type="checkbox" name="hopse" value="일본공항" id="일본항공" class="custom-control-input">
	                          <label for="일본항공" class="custom-control-label">일본항공사/공항취업</label>
	                      </div>
	                      <div class="custom-control custom-checkbox">
	                          <input type="checkbox" name="hopse" value="여행사" id="여행사취업" class="custom-control-input">
	                          <label for="여행사취업" class="custom-control-label">여행사취업</label>
	                      </div>
	                      <div class="custom-control custom-checkbox">
	                          <input type="checkbox" name="hopse" value="여행사오퍼레이터" id="여행사오퍼레이터" class="custom-control-input">
	                          <label for="여행사오퍼레이터" class="custom-control-label">여행사오퍼레이터</label>
	                      </div>
	                        
	                    </div>
	                    <div class="form-group col-6 mobile-100-percent">
	                      <label class="font-bold">상담관심분야</label>
	                      <div class="custom-control custom-checkbox">
	                          <input type="checkbox" name="worse" value="01" id="worse01" class="custom-control-input">
	                          <label for="worse01" class="custom-control-label">이미지</label>
	                      </div>
								  <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="worse" value="02" id="worse02" class="custom-control-input">
			                          <label for="worse02" class="custom-control-label">나이</label>
			                      </div>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="worse" value="03" id="worse03" class="custom-control-input">
			                          <label for="worse03" class="custom-control-label">외국어능력</label>
			                      </div>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="worse" value="04" id="worse04" class="custom-control-input">
			                          <label for="worse04" class="custom-control-label">이력서/자소서</label>
			                      </div>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="worse" value="05" id="worse05" class="custom-control-input">
			                          <label for="worse05" class="custom-control-label">비전공</label>
			                      </div>
			                      <div class="custom-control custom-checkbox">
			                          <input type="checkbox" name="worse" value="99" id="worse99" class="custom-control-input">
			                          <label for="worse99" class="custom-control-label">기타</label>
			                      </div>
			                    </div>
		                    </div>		                    
						</div>
					</div>
				</div>
				<!-- 수강료상담 -->
				<div class="col-12 mb-2 my-4" id="CostRow" style="display:none;">
					<div class="my-2 font-bold font-20">수강료조회(중복선택가능)</div>
						<div class="card col-12">
						<div class="card-body">
							<div class="input-group">
			                    <div class="form-group col-md-3">
			                      <label class="font-bold">항공사지상직/여행사취업 정규과정</label>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="대한항공/아시아나항공공채대비반" id="대한항공/아시아나항공공채대비반" class="custom-control-input">
			                          <label for="대한항공/아시아나항공공채대비반" class="custom-control-label">대한항공/아시아나항공공채대비반</label>
			                      </div>
								  		<div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="LCC저비용항공사과정" id="LCC저비용항공사과정" class="custom-control-input">
			                          <label for="LCC저비용항공사과정" class="custom-control-label">LCC저비용항공사과정</label>
			                      </div>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="외항사지상직과정" id="외항사지상직과정" class="custom-control-input">
			                          <label for="외항사지상직과정" class="custom-control-label">외항사지상직과정</label>
			                      </div>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="GHA/GSA과정" id="GHA/GSA과정" class="custom-control-input">
			                          <label for="GHA/GSA과정" class="custom-control-label">GHA/GSA과정</label>
			                      </div>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="일본항공사과정" id="일본항공사과정" class="custom-control-input">
			                          <label for="일본항공사과정" class="custom-control-label">일본항공사과정</label>
			                      </div>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="여행사취업대비반" id="여행사취업대비반" class="custom-control-input">
			                          <label for="여행사취업대비반" class="custom-control-label">여행사취업대비반</label>
			                      </div>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="여행사오퍼레이터과정" id="여행사오퍼레이터과정" class="custom-control-input">
			                          <label for="여행사오퍼레이터과정" class="custom-control-label">여행사오퍼레이터과정</label>
			                      </div>
			                    </div>
			                    <div class="form-group col-md-3">
			                      <label class="font-bold">단기스페셜</label>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="CRS/DCS자격증취득반" id="CRS/DCS자격증취득반" class="custom-control-input">
			                          <label for="CRS/DCS자격증취득반" class="custom-control-label">CRS/DCS자격증취득반</label>
			                      </div>
								  		<div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="대졸공채단기반" id="대졸공채단기반" class="custom-control-input">
			                          <label for="대졸공채단기반" class="custom-control-label">대졸공채단기반</label>
			                      </div>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="LCC저비용항공사대비반" id="LCC저비용항공사대비반" class="custom-control-input">
			                          <label for="LCC저비용항공사대비반" class="custom-control-label">LCC저비용항공사대비반</label>
			                      </div>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="외항사지상직단기반" id="외항사지상직단기반" class="custom-control-input">
			                          <label for="외항사지상직단기반" class="custom-control-label">외항사지상직단기반</label>
			                      </div>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="여행사단기취업반" id="여행사단기취업반" class="custom-control-input">
			                          <label for="여행사단기취업반" class="custom-control-label">여행사단기취업반</label>
			                      </div>
			                    </div>
			                    <div class="form-group col-md-3">
			                      <label class="font-bold">개인과외신청</label>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="1:1과외" id="1:1과외" class="custom-control-input">
			                          <label for="1:1과외" class="custom-control-label">1:1과외</label>
			                      </div>
			                    </div>
			                    <div class="form-group col-md-3">
			                      <label class="font-bold">수강일자선택</label>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="평일반" id="평일반" class="custom-control-input">
			                          <label for="평일반" class="custom-control-label">평일반</label>
			                      </div>
			                      <div class="custom-control custom-checkbox my-1">
			                          <input type="checkbox" name="wants" value="주말반" id="주말반" class="custom-control-input">
			                          <label for="주말반" class="custom-control-label">주말반</label>
			                      </div>
			                    </div>
		                    </div>
		                    		                    
						</div>
					</div>
				</div>
				
				<!-- 이미지체크 -->
				<div class="col-12 mb-2 my-4" id="ImgchkRow" style="display:none;">
					<div class="my-2 font-bold font-20">직무컨설팅신청</div>
						<div class="card col-12">
						<div class="card-body bg-ivory">
							<div class="form-group">
							  <label for="m_edulv">최종학력</label>
							  <div class="input-group">
							    <select class="form-control mr-2" name="edulv" id="edulv" style="height:3.75rem;">
							      <option value="01" >고등학교</option>
							      <option value="02" >대학(2년제)</option>
							      <option value="03" selected>대학교</option>
							      <option value="04" >대학원</option>
							    </select>
							    <select class="form-control input-group-append" name="gradlv" id="gradlv" style="height:3.75rem;">
							      <option value="01">졸업</option>
							      <option value="02">졸업예정</option>
							      <option value="03">휴학</option>
							      <option value="04">중퇴</option>
							    </select>
							  </div>
							</div>
							<div class="form-group">
								<label for="m_seclan">외국어능력</label>                      
								<div class="input-group">
									<input type="text" class="form-control mr-2" name="lang" id="lang" maxlength="10"  placeholder="예 : 영어, 일본어">
									<input type="text" class="form-control mr-2" name="lang" id="lang" maxlength="10"  placeholder="점수">
									<select class="col-3 form-control input-group-append" name="langlv" id="langlv" style="height:3.75rem;">
						    			<option value="hi">상</option>
						    			<option value="no">중</option>
						    			<option value="li">하</option>
						  			</select>
						  		</div>
							</div>
<!-- 							<div class="form-group">
								<label for="m_seclan">희망부서</label>                      
								<div class="input-group">
									
						  		</div>
							</div>  --> 
						</div>
					</div>
				</div>
				
				<div class="col-12 my-4">
					<div class="my-2 font-bold font-20">궁금한내용</div>
					<div class="form-group">
                      <textarea class="form-control" name="memo" id="memo" placeholder="궁금한 것들을 여기에 기재하세요" rows="4"></textarea>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
				</div>
				<div class="col-12 mb-5 my-1 pb-5 mobile-hidden">
					<button id="gogo" class="btn btn-primary btn-lg btn-block font-bold" style="height:4.75rem; width: 400px; margin:0 auto;">상담신청</button>
				</div>
				<div class="col-12 mb-5 my-1 pb-5 mobile-show">
					<button id="gogo" class="btn btn-primary btn-lg btn-block font-bold" style="height:4.75rem;  margin:0 auto;">상담신청</button>
				</div>
			</div>
			</form>
		</div>
		<!--div class="col-md-3">
			<div class="col-md-12">
				<div class="my-9"></div>
				<div class=""><a href="" class="hvr-shadow"><img src="../img/sub-left-tel-btn.png"></a></div>
				<div class="my-2"></div>
				<div class="left-ban">
					<ul>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-faq-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-nation-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-fee-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-map-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-check-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-fee-btn.png"></a></li>
					</ul>
				</div>
			</div>
		</div-->
	</div> 
</div>

<div class="containter-fluid mobile-hidden" style="margin-top:100px;"></div>

<script>

$(document).ready(function() {
 	$("#counsel").validator();	//폼발리데이터
});

$(document).ready(function() {
 	var cost = "${param.cost}";
 	var imgchk = "${param.imgchk}";
	if(imgchk == 'y'){
		chkImgVal();
	}else if(cost == 'y'){
		costVal();
	}else{
		chkDefaultVal();
	}
});

$(document).ready(function() {
 	var data = $("#result").val();
 	if(data == "ok"){
 		alert("상담신청이 완료되었습니다.");
 		location.href="/counsel/online.do";
 	}
});

$(document).on('click', '#default', function(e){
	e.preventDefault();
	$("#CostRow").hide();
	$("#ImgchkRow").hide();
	$("#cost").removeClass("btn-danger");
	$("#imgchk").removeClass("btn-danger");
	$("#cost").addClass("btn-secondary");
	$("#imgchk").addClass("btn-secondary");
	$("input:checkbox[id=chkImgchk]").prop("checked", false);
	$("input:checkbox[id=chkCost]").prop("checked", false);
	$("input:checkbox[id=chkQuick]").prop("checked", true);
});

$(document).on('click', '#cost', function(e){
	costVal();
});

$(document).on('click', '#imgchk', function(e){
	chkImgVal();
});

function chkDefaultVal(){	
	$("input:checkbox[id=chkQuick]").is(":checked") == true;
}

function chkImgVal(){	
	if($("input:checkbox[id=chkImgchk]").is(":checked") == true){
		$("#ImgchkRow").hide();
		$("#imgchk").removeClass("btn-danger");
		$("#imgchk").addClass("btn-secondary");
		$("input:checkbox[id=chkImgchk]").prop("checked", false);
	}else{
		$("#ImgchkRow").show();
		$("#imgchk").removeClass("btn-secondary");
		$("#imgchk").addClass("btn-danger");
		$("input:checkbox[id=chkImgchk]").prop("checked", true);
	}
}

function costVal(){	
	if($("input:checkbox[id=chkCost]").is(":checked") == true){
		$("#CostRow").hide();
		$("#cost").removeClass("btn-danger");
		$("#cost").addClass("btn-secondary");
		$("input:checkbox[id=chkCost]").prop("checked", false);
	}else{
		$("#CostRow").show();
		$("#cost").removeClass("btn-secondary");
		$("#cost").addClass("btn-danger");
		$("input:checkbox[id=chkCost]").prop("checked", true);
	}
}

$(document).on('click', '#gogo', function(){
	var mobile = $("#mobile-1").val() + $("#mobile-2").val() + $("#mobile-3").val();
	
	if($('input[name=name]').val().length < 2){
		alert("이름은 두글자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=age]').val().length <= 1){
		alert("나이는 두자리이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=mobile-2]').val().length < 3){
		alert("휴대전화 앞자리는 세자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=mobile-3]').val().length <= 3){
		alert("휴대전화 뒷자리는 네자이어야 합니다.");
		return false;
	}
	
	$("#phone").val(mobile);
	$("#counsel").submit();
});

</script>


<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>